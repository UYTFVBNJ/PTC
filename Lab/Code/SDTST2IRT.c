#include "SDTST2IRT.h"
#include "STree.h"
#include "IRTree.h"
#include "SkipList.h"
#include "SemanticErrors.h"
#include "SymbolTables.h"
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>


// SDTST2IRT function helper
#define SON0 STnode_t *son0 = (STnode->son);
#define SON1 SON0 STnode_t *son1 = (STnode->son->next);
#define SON2 SON1 STnode_t *son2 = (STnode->son->next->next);
#define SON3 SON2 STnode_t *son3 = (STnode->son->next->next->next);
#define SON4 SON3 STnode_t *son4 = (STnode->son->next->next->next->next);
#define SON5 SON4 STnode_t *son5 = (STnode->son->next->next->next->next->next);
#define SON6 SON5 STnode_t *son6 = (STnode->son->next->next->next->next->next->next);

#define IRnode(kind) IRTnode_t *IRTnode = IRTreeNewNode(kind);
#define SET0(IRTnode) IRTnode->son = IRTnode;
#define SET1(IRTnode) IRTnode->son->next = IRTnode;
#define SET2(IRTnode) IRTnode->son->next->next = IRTnode;
#define SET3(IRTnode) IRTnode->son->next->next->next = IRTnode;

#define PARSE(son) son->SDTST2IRT_handler(son, STnode)

#define VAL_NAME(x) char *name = son ## x->ti.id_val;

extern Type type_int, type_float, type_noneargs;

void STtraversal(STnode_t *u);
void prtname(STnode_t *STnode);


 /* Program */
SDTST2IRTDefHelper(Program_ExtDefList) {
    SON0

    PARSE(son0);
}

 /* ExtDefList */
SDTST2IRTDefHelper(ExtDefList_ExtDefExtDefList) {
    SON1

    PARSE(son0);
    PARSE(son1);
}

SDTST2IRTDefHelper(ExtDefList_) {
    
}

 /* ExtDef */
SDTST2IRTDefHelper(ExtDef_SpecifierExtDecListSEMI) {
    SON2

    PARSE(son0);
    STnode->sdti.type = son0->sdti.type;
    PARSE(son1);
}
SDTST2IRTDefHelper(ExtDef_SpecifierSEMI) {
    SON1

    PARSE(son0);
}
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecCompSt) {
    SON2

    STnode->sdti.type = TypeNew(FUNCTION, STnode->first_line, STnode->first_line);
    STnode->sdti.type->u.function.args = TypeNew(ARGS, STnode->first_line, STnode->first_line);

    PARSE(son0);
    STnode->sdti.type->u.function.ret = son0->sdti.type;

    PARSE(son1);
    STnode->sdti.type->u.function.name = son1->sdti.name;

    // check if function name is already defined
    Type func = tableFindFunc(STnode->sdti.type->u.function.name);
    if (func != NULL) {
        SemanticAssert(func->deflineno == -1, SE_FUNCTION_DUPLICATE, STnode->first_line);
        SemanticAssert(func->deflineno != -1 || isSameType(STnode->sdti.type, func), SE_FUNCTION_CONFLICTING, STnode->first_line);

        // TODO memory leak
        STnode->sdti.type = func;
        STnode->sdti.type->deflineno = STnode->first_line;
    } else  
        tableAddFunc(son1->sdti.name, STnode->sdti.type);

    PARSE(son2);
}
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecSEMI) {
    SON2

    STnode->sdti.type = TypeNew(FUNCTION, STnode->first_line, -1);
    STnode->sdti.type->u.function.args = TypeNew(ARGS, STnode->first_line, STnode->first_line);

    PARSE(son0);
    STnode->sdti.type->u.function.ret = son0->sdti.type;

    PARSE(son1);
    STnode->sdti.type->u.function.name = son1->sdti.name;

    // check if function name is already defined
    Type func = tableFindFunc(STnode->sdti.type->u.function.name);
    if (func != NULL) {
        SemanticAssert(isSameType(STnode->sdti.type, func), SE_FUNCTION_CONFLICTING, STnode->first_line);

        // TODO memory leak
        STnode->sdti.type = func;
    } else  
        tableAddFunc(son1->sdti.name, STnode->sdti.type);
}

 /* ExtDecList */
SDTST2IRTDefHelper(ExtDecList_VarDec) {
    STnode->sdti.type = Fa->sdti.type;

    SON0

    PARSE(son0);

    SemanticAssert(tableFindCurrVar(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 
    SemanticAssert(tableFindStruct(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 

    if (!hasErr) {
        tableAddVar(son0->sdti.name, son0->sdti.type);
    }
}

SDTST2IRTDefHelper(ExtDecList_VarDecCOMMAExtDecList) {
    STnode->sdti.type = Fa->sdti.type;

    SON2

    PARSE(son0);
    PARSE(son2);
    
    SemanticAssert(tableFindCurrVar(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 
    SemanticAssert(tableFindStruct(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 


    if (!hasErr) {
        tableAddVar(son0->sdti.name, son0->sdti.type);
    }
}

 /* Specifiers */
 /* Specifier */
SDTST2IRTDefHelper(Specifier_TYPE) {
    switch (STnode->son->ti.type_val) {
        case TYPE_INT:
            STnode->sdti.type = type_int;
            break;
        case TYPE_FLOAT:
            STnode->sdti.type = type_float;
            break;
        default:
            assert(0);
    }
}
SDTST2IRTDefHelper(Specifier_StructSpecifier) {
    SON0

    PARSE(son0);

    STnode->sdti.type = son0->sdti.type;
}
 /* StructSpecifier */
SDTST2IRTDefHelper(StructSpecifier_STRUCTOptTagLCDefListRC) {
    SON4

    PARSE(son1);

    STnode->sdti.name = son1->sdti.name;
    SemanticAssert(son1->sdti.name == NULL || (tableFindStruct(son1->sdti.name) == NULL && tableFindVar(son1->sdti.name) == NULL), SE_STRUCT_DUPLICATE, STnode->first_line);
    STnode->sdti.type = TypeNew(STRUCTURE, STnode->first_line, STnode->first_line);

    if (!hasErr) {
        if (STnode->sdti.name)
            tableAddStruct(STnode->sdti.name, STnode->sdti.type);
    }

    STnode->sdti.defining_struct = STnode->sdti.type;
    PARSE(son3);    
}

SDTST2IRTDefHelper(StructSpecifier_STRUCTTag) {
    SON1

    PARSE(son1);

    STnode->sdti.type = tableFindStruct(son1->sdti.name);
    SemanticAssert(STnode->sdti.type != NULL, SE_STRUCT_UNDEFINED, STnode->first_line);
}
 /* OptTag */
SDTST2IRTDefHelper(OptTag_ID) {
    SON0
    VAL_NAME(0)

    STnode->sdti.name = name;
}

SDTST2IRTDefHelper(OptTag_) {
    // TODO has problem ?
    STnode->sdti.name = NULL;
}

 /* Tag */
SDTST2IRTDefHelper(Tag_ID) {
    SON0
    VAL_NAME(0)

    STnode->sdti.name = name;
}

 /* Declarators */
 /* VarDec */
SDTST2IRTDefHelper(VarDec_ID) {
    STnode->sdti.type = Fa->sdti.type;

    SON0
    VAL_NAME(0)

    STnode->sdti.name = name;
}

SDTST2IRTDefHelper(VarDec_VarDecLBINTRB) {
    STnode->sdti.type = Fa->sdti.type;
    
    SON3
    
    PARSE(son0);

    // order: 
    // int a[10][20]
    // int -> elem 10 -> elem 20 -> array
    STnode->sdti.name = son0->sdti.name;
    STnode->sdti.type = TypeNew(ARRAY, STnode->first_line, STnode->first_line);
    STnode->sdti.type->u.array.elem = son0->sdti.type;
    STnode->sdti.type->u.array.size = son2->ti.int_val;
}

 /* FunDec */
SDTST2IRTDefHelper(FunDec_IDLPVarListRP) {
    STnode->sdti.type = Fa->sdti.type->u.function.args;

    SON3
    VAL_NAME(0)

    STnode->sdti.name = name;

    PARSE(son2);
}
SDTST2IRTDefHelper(FunDec_IDLPRP) {
    STnode->sdti.type = Fa->sdti.type->u.function.args;

    SON2
    VAL_NAME(0)

    STnode->sdti.name = name;
}

 /* VarList */
SDTST2IRTDefHelper(VarList_ParamDecCOMMAVarList) {
    STnode->sdti.type = Fa->sdti.type;

    SON2

    PARSE(son0);
    PARSE(son2);

    assert(STnode->sdti.type->kind == ARGS);
    if (STnode->sdti.type->kind == ARGS) {
        // order: 
        // int a, float b
        // int a -> tail float b -> struct
        STnode->sdti.type->u.structure = FieldListNew(son0->sdti.name, son0->sdti.type, STnode->sdti.type->u.structure); // add to head
    }
}
SDTST2IRTDefHelper(VarList_ParamDec) {
    STnode->sdti.type = Fa->sdti.type;

    SON0

    PARSE(son0);

    assert(STnode->sdti.type->kind == ARGS);
    if (STnode->sdti.type->kind == ARGS) {
        STnode->sdti.type->u.structure = FieldListNew(son0->sdti.name, son0->sdti.type, STnode->sdti.type->u.structure);
    }
}

 /* ParamDec */
SDTST2IRTDefHelper(ParamDec_SpecifierVarDec) {
    SON1

    PARSE(son0);
    STnode->sdti.type = son0->sdti.type; // should be son1 because a[10]
    PARSE(son1);

    STnode->sdti.type = son1->sdti.type; // should be son1 because a[10]
    STnode->sdti.name = son1->sdti.name;
}

 /* Statements */
 /* CompSt */
SDTST2IRTDefHelper(CompSt_LCDefListStmtListRC) {
    STnode->sdti.type = Fa->sdti.type;
    SON3
    varStackPush();
    if (!(STnode->sdti.type->u.function.addedVar)) {
        assert(STnode->sdti.type->u.function.args != NULL);
        for (FieldList list = STnode->sdti.type->u.function.args->u.structure; 
            list; list = list->tail) {
            tableAddVar(list->name, list->type);
        }
        STnode->sdti.type->u.function.addedVar = 1;
    }


    PARSE(son1);
    PARSE(son2);

    varStackPop();
} 

 /* StmtList */
SDTST2IRTDefHelper(StmtList_StmtStmtList) {
    STnode->sdti.type = Fa->sdti.type;

    SON1

    PARSE(son0);
    PARSE(son1);
}

SDTST2IRTDefHelper(StmtList_) {
    STnode->sdti.type = Fa->sdti.type;
}

 /* Stmt */
SDTST2IRTDefHelper(Stmt_ExpSEMI) {
    STnode->sdti.type = Fa->sdti.type;

    SON1

    PARSE(son0);
}

SDTST2IRTDefHelper(Stmt_CompSt) {
    STnode->sdti.type = Fa->sdti.type;

    SON0

    PARSE(son0);
}

SDTST2IRTDefHelper(Stmt_RETURNExpSEMI) {
    STnode->sdti.type = Fa->sdti.type;

    SON1

    PARSE(son1);

    assert(STnode->sdti.type->kind == FUNCTION);
    SemanticAssert(isSameType(STnode->sdti.type->u.function.ret, son1->sdti.type), SE_MISMATCHED_RETURN, STnode->first_line);
}

SDTST2IRTDefHelper(Stmt_IFLPExpRPStmt) {
    STnode->sdti.type = Fa->sdti.type;

    SON4

    PARSE(son2);
    PARSE(son4);

    // assert(isSameType(son2->sdti.type, type_int)); // 假设2
}

SDTST2IRTDefHelper(Stmt_IFLPExpRPStmtELSEStmt) {
    STnode->sdti.type = Fa->sdti.type;

    SON6

    PARSE(son2);
    PARSE(son4);
    PARSE(son6);

    // assert(isSameType(son2->sdti.type, type_int)); // 假设2
}

SDTST2IRTDefHelper(Stmt_WHILELPExpRPStmt) {
    STnode->sdti.type = Fa->sdti.type;

    SON4

    PARSE(son2);
    PARSE(son4);
   
    // assert(isSameType(son2->sdti.type, type_int)); // 假设2
}

 /* Local Definitions */
 /* DefList */
SDTST2IRTDefHelper(DefList_DefDefList) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;

    SON1

    PARSE(son0);
    PARSE(son1);    
}

SDTST2IRTDefHelper(DefList_) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;
}

 /* Def */
SDTST2IRTDefHelper(Def_SpecifierDecListSEMI) {
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;
    SON2

    PARSE(son0);
    STnode->sdti.type = son0->sdti.type;
    PARSE(son1);
}

 /* DecList */
SDTST2IRTDefHelper(DecList_Dec) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;

    SON0

    PARSE(son0);
} 
SDTST2IRTDefHelper(DecList_DecCOMMADecList) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;

    SON2

    PARSE(son0);
    PARSE(son2);
}

 /* Dec */
SDTST2IRTDefHelper(Dec_VarDec) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;

    SON0

    PARSE(son0);

    if (STnode->sdti.defining_struct != NULL) {
        SemanticAssert(FieldListFind(son0->sdti.name, STnode->sdti.defining_struct->u.structure) == NULL, SE_STRUCT_FIELD_DUPLICATE, STnode->first_line);
        if (!hasErr) {
            STnode->sdti.defining_struct->u.structure = FieldListNew(son0->sdti.name, son0->sdti.type, STnode->sdti.defining_struct->u.structure);
        }
    } else {
        SemanticAssert(tableFindCurrVar(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 
        SemanticAssert(tableFindStruct(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 

        if (!hasErr) {
            tableAddVar(son0->sdti.name, son0->sdti.type);
        }
    }
}
SDTST2IRTDefHelper(Dec_VarDecASSIGNOPExp) {
    STnode->sdti.type = Fa->sdti.type;
    STnode->sdti.defining_struct = Fa->sdti.defining_struct;

    SON2

    PARSE(son0);

    if (STnode->sdti.defining_struct != NULL) {
        SemanticAssert(FieldListFind(son0->sdti.name, STnode->sdti.defining_struct->u.structure) == NULL, SE_STRUCT_FIELD_DUPLICATE, STnode->first_line);
        if (!hasErr) {
            STnode->sdti.defining_struct->u.structure = FieldListNew(son0->sdti.name, son0->sdti.type, STnode->sdti.defining_struct->u.structure);
        }
        SemanticAssert(STnode->sdti.defining_struct == NULL, SE_STRUCT_FIELD_INITIALIZED, STnode->first_line);
    } else {
        SemanticAssert(tableFindCurrVar(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 
        SemanticAssert(tableFindStruct(son0->sdti.name) == NULL, SE_VARIABLE_DUPLICATE, STnode->first_line); 

        if (!hasErr) {
            tableAddVar(son0->sdti.name, son0->sdti.type);
        }
    }
        
    PARSE(son2);
    SemanticAssert(isSameType(son0->sdti.type, son2->sdti.type), 
        SE_MISMATCHED_ASSIGNMENT, STnode->first_line);
}
 

 /* Expressions */
 /* Exp */
SDTST2IRTDefHelper(Exp_ExpASSIGNOPExp) {
    SON2

    PARSE(son0);
    PARSE(son2);
    
    SemanticAssert(son0->sdti.islval == 1, SE_RVALUE_ASSIGNMENT, STnode->first_line);
    SemanticAssert(son0->sdti.islval != 1 || isSameType(son0->sdti.type, son2->sdti.type), SE_MISMATCHED_ASSIGNMENT, STnode->first_line);

    STnode->sdti.islval = 0;
    STnode->sdti.type = son0->sdti.type;
}

SDTST2IRTDefHelper(Exp_ExpLOGICExp) {
    SON2

    PARSE(son0);
    PARSE(son2);

    STnode->sdti.type = son0->sdti.type;

    assert(isSameType(son0->sdti.type, type_int)); // 假设2
    assert(isSameType(son2->sdti.type, type_int)); // 假设2
}

SDTST2IRTDefHelper(Exp_ExpARITHMETICExp) {
    SON2

    PARSE(son0);
    PARSE(son2);

    SemanticAssert(isSameType(son0->sdti.type, son2->sdti.type), SE_MISMATCHED_OPERANDS, STnode->first_line);
    SemanticAssert(son0->sdti.type->kind == BASIC, SE_MISMATCHED_OPERANDS, STnode->first_line);
    SemanticAssert(son2->sdti.type->kind == BASIC, SE_MISMATCHED_OPERANDS, STnode->first_line);

    if (isSameType(son0->sdti.type, type_int) && isSameType(son0->sdti.type, type_int)) 
        STnode->sdti.type = type_int;
    else 
        STnode->sdti.type = type_float;

    // assert(isSameType(son0->sdti.type, type_int) || isSameType(son2->sdti.type, type_float)); // 假设2
    // assert(isSameType(son0->sdti.type, type_int) || isSameType(son2->sdti.type, type_float)); // 假设2
}

SDTST2IRTDefHelper(Exp_LPExpRP) {
    SON2

    PARSE(son1);

    STnode->sdti.type = son1->sdti.type;
}

SDTST2IRTDefHelper(Exp_MINUSExp) {
    SON1

    PARSE(son1);

    STnode->sdti.type = son1->sdti.type;

    assert(isSameType(son1->sdti.type, type_int) || isSameType(son1->sdti.type, type_float)); // 假设2
}

SDTST2IRTDefHelper(Exp_NOTExp) {
    SON1

    PARSE(son1);

    STnode->sdti.type = son1->sdti.type;

    assert(isSameType(son1->sdti.type, type_int)); // 假设2
}

SDTST2IRTDefHelper(Exp_IDLPArgsRP) {

    SON3
    VAL_NAME(0)

    STnode->sdti.type = TypeNew(ARGS, STnode->first_line, STnode->first_line);

    PARSE(son2);

    Type type = tableFindFunc(name);
    Type var = tableFindVar(name);
    SemanticAssert(var == NULL, SE_ACCESS_TO_NON_FUNCTION, STnode->first_line);
    SemanticAssert(var != NULL || type != NULL, SE_FUNCTION_UNDEFINED, STnode->first_line);

    if (hasErr) {
        STnode->sdti.type = type_int;
    } else {
        STnode->sdti.type = type->u.function.ret;
    }

    SemanticAssert(type == NULL || isSameType(son2->sdti.type, type->u.function.args), SE_MISMATCHED_SIGNATURE, STnode->first_line);
}

SDTST2IRTDefHelper(Exp_IDLPRP) {
    SON2
    VAL_NAME(0)

    Type type = tableFindFunc(name);
    Type var = tableFindVar(name);
    SemanticAssert(var == NULL, SE_ACCESS_TO_NON_FUNCTION, STnode->first_line);
    SemanticAssert(var != NULL || type != NULL, SE_FUNCTION_UNDEFINED, STnode->first_line);
    if (type) {
        SemanticAssert(isSameType(type_noneargs, type->u.function.args), SE_MISMATCHED_SIGNATURE, STnode->first_line);
    }

    if (hasErr) {
        STnode->sdti.type = type_int;
    } else {
        STnode->sdti.type = type->u.function.ret;
    }
}

SDTST2IRTDefHelper(Exp_ExpLBExpRB) {
    SON3

    PARSE(son0);
    PARSE(son2);

    SemanticAssert(son0->sdti.type->kind == ARRAY, SE_ACCESS_TO_NON_ARRAY, STnode->first_line);
    SemanticAssert(isSameType(son2->sdti.type, type_int), SE_NON_INTEGER_INDEX, STnode->first_line);

    // order: 
    // int a[10][20]
    // int -> elem 10 -> elem 20 -> array
    STnode->sdti.type = son0->sdti.type->u.array.elem;
    STnode->sdti.islval = 1;
}

SDTST2IRTDefHelper(Exp_ExpDOTID) {
    SON2

    PARSE(son0);

    VAL_NAME(2)

    SemanticAssert(son0->sdti.type->kind == STRUCTURE, SE_ACCESS_TO_NON_STRUCT, STnode->first_line);

    if (son0->sdti.type->kind == STRUCTURE) {
        Type type = FieldListFind(name, son0->sdti.type->u.structure);
        SemanticAssert(type != NULL, SE_STRUCT_FIELD_UNDEFINED, STnode->first_line);
        if (type != NULL)
            STnode->sdti.type = type;
        else    
            STnode->sdti.type = type_int; // use int
    }
    else 
        STnode->sdti.type = type_int; // use int
    STnode->sdti.islval = 1;
}

SDTST2IRTDefHelper(Exp_ID) {
    IRnode(EXP)
    SON0

    VAL_NAME(0)

    IRTnode->u.irt_exp.kind = VAL;
    IRTnode->u.irt_exp.result = NewOperand(VARIABLE, name, 0);

    return IRTnode;
}

SDTST2IRTDefHelper(Exp_INT) {
    IRnode(EXP)
    SON0

    IRTnode->u.irt_exp.kind = VAL;
    IRTnode->u.irt_exp.result = NewOperand(CONSTANT, NULL, son0->ti.int_val);

    return IRTnode;
}

SDTST2IRTDefHelper(Exp_FLOAT) {
    assert(0); // L3 假设 1
    return NULL;
}

 /* Args */
SDTST2IRTDefHelper(Args_ExpCOMMAArgs) {
    STnode->sdti.type = Fa->sdti.type;

    SON2

    PARSE(son0);
    PARSE(son2);

    assert(STnode->sdti.type->kind == ARGS);
    if (STnode->sdti.type->kind == ARGS) {
        // order: 
        // int a, float b
        // int a -> tail float b -> struct
        STnode->sdti.type->u.structure = FieldListNew(NULL, son0->sdti.type, STnode->sdti.type->u.structure); // add to head
    }
}

SDTST2IRTDefHelper(Args_Exp) {
    STnode->sdti.type = Fa->sdti.type;

    SON0

    PARSE(son0);

    assert(STnode->sdti.type->kind == ARGS);
    if (STnode->sdti.type->kind == ARGS) {
        // order: 
        // int a, float b
        // int a -> tail float b -> struct
        STnode->sdti.type->u.structure = FieldListNew(NULL, son0->sdti.type, STnode->sdti.type->u.structure); // add to head
    }
}
