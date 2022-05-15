#include "SDTST2IRT.h"
#include "SkipList.h"
#include "SemanticErrors.h"
#include "SymbolTables.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>


// SDTST2IRT function helper
#define SON0 STnode_t *son0 = (STnode->son);
#define SON1 SON0 STnode_t *son1 = (STnode->son->next);
#define SON2 SON1 STnode_t *son2 = (STnode->son->next->next);
#define SON3 SON2 STnode_t *son3 = (STnode->son->next->next->next);
#define SON4 SON3 STnode_t *son4 = (STnode->son->next->next->next->next);
#define SON5 SON4 STnode_t *son5 = (STnode->son->next->next->next->next->next);
#define SON6 SON5 STnode_t *son6 = (STnode->son->next->next->next->next->next->next);

// #define IRnode(kind) IRTnode_t *IRTnode = IRTreeNewNode(kind);
#define SET0(IRTnode) IRTnode_t *IRTson0 = IRTnode;
#define SET1(IRTnode) IRTnode_t *IRTson1 = IRTnode;
#define SET2(IRTnode) IRTnode_t *IRTson2 = IRTnode;
#define SET3(IRTnode) IRTnode_t *IRTson3 = IRTnode;
#define SET4(IRTnode) IRTnode_t *IRTson4 = IRTnode;
#define SET5(IRTnode) IRTnode_t *IRTson5 = IRTnode;
#define SET6(IRTnode) IRTnode_t *IRTson6 = IRTnode;

#define SET_TF_LABEL(son, T, F) son->sdti.true_label = T; son->sdti.false_label = F;

#define PARSE(son) son->SDTST2IRT_handler(son, STnode)

#define VAL_NAME(x) char *name = son ## x->ti.id_val;

extern Type type_int, type_float, type_noneargs;

void STtraversal(STnode_t *u);
void prtname(STnode_t *STnode);


 /* Program */
SDTST2IRTDefHelper(Program_ExtDefList) {
    SON0

    SET0(PARSE(son0));

    return IRTson0;
}

 /* ExtDefList */
SDTST2IRTDefHelper(ExtDefList_ExtDefExtDefList) {
    SON1

    SET0(PARSE(son0));
    SET1(PARSE(son1));

    return IRTreeNewFUNC_THEN(IRTson0, IRTson1);
}

SDTST2IRTDefHelper(ExtDefList_) {
    
    return NULL;
}

 /* ExtDef */
SDTST2IRTDefHelper(ExtDef_SpecifierExtDecListSEMI) {
    return NULL;

}
SDTST2IRTDefHelper(ExtDef_SpecifierSEMI) {
    return NULL;

}
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecCompSt) {
    SON2

    SET0(PARSE(son0));

    SET1(PARSE(son1));
    SET2(PARSE(son2));

    // TODO create TABLE
    


    char *name = son1->son->ti.id_val;
    return IRTreeNewFUNC(name, STnode->sdti.type, IRTreeNewEXP_PARAM(son2, STnode->sdti.type->u.function.args->u.structure), IRTson2);
}
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecSEMI) {

    return NULL;
}

 /* ExtDecList */
SDTST2IRTDefHelper(ExtDecList_VarDec) {

    return NULL;
}

SDTST2IRTDefHelper(ExtDecList_VarDecCOMMAExtDecList) {

    return NULL;
}

 /* Specifiers */
 /* Specifier */
SDTST2IRTDefHelper(Specifier_TYPE) {
    
    return NULL;
}
SDTST2IRTDefHelper(Specifier_StructSpecifier) {
    return NULL;

}
 /* StructSpecifier */
SDTST2IRTDefHelper(StructSpecifier_STRUCTOptTagLCDefListRC) {
    return NULL;

}

SDTST2IRTDefHelper(StructSpecifier_STRUCTTag) {
    return NULL;

}
 /* OptTag */
SDTST2IRTDefHelper(OptTag_ID) {

    return NULL;
}

SDTST2IRTDefHelper(OptTag_) {

    return NULL;
}

 /* Tag */
SDTST2IRTDefHelper(Tag_ID) {


    return NULL;
}

 /* Declarators */
 /* VarDec */
SDTST2IRTDefHelper(VarDec_ID) {
    // TODO
    SON0
    VAL_NAME(0)

}

SDTST2IRTDefHelper(VarDec_VarDecLBINTRB) {
    // TODO    
    SON3
    
    PARSE(son0);
}

 /* FunDec */
SDTST2IRTDefHelper(FunDec_IDLPVarListRP) {
    return NULL;
}
SDTST2IRTDefHelper(FunDec_IDLPRP) {
    return NULL;
}

 /* VarList */
SDTST2IRTDefHelper(VarList_ParamDecCOMMAVarList) {

    SON2

    PARSE(son0);
    PARSE(son2);

    
}
SDTST2IRTDefHelper(VarList_ParamDec) {

    SON0

    PARSE(son0);

    
}

 /* ParamDec */
SDTST2IRTDefHelper(ParamDec_SpecifierVarDec) {
    return NULL;
}

 /* Statements */
 /* CompSt */
SDTST2IRTDefHelper(CompSt_LCDefListStmtListRC) {
    SON3

    SET1(PARSE(son1));
    SET2(PARSE(son2));

    // TODO: create TABLE
    return IRTreeNewSTMT_THEN(IRTson1, IRTson2, NULL);
} 

 /* StmtList */
SDTST2IRTDefHelper(StmtList_StmtStmtList) {

    SON1

    SET0(PARSE(son0));
    SET1(PARSE(son1));

    // IRTson1 may be NULL
    return IRTreeNewSTMT_THEN(IRTson0, IRTson1, NULL);
}

SDTST2IRTDefHelper(StmtList_) {
    return NULL;
}

 /* Stmt */
SDTST2IRTDefHelper(Stmt_ExpSEMI) {

    SON1

    SET0(PARSE(son0));
    return IRTson0;
}

SDTST2IRTDefHelper(Stmt_CompSt) {

    SON0

    SET0(PARSE(son0));

    return IRTson0;
}

SDTST2IRTDefHelper(Stmt_RETURNExpSEMI) {

    SON1

    SET1(PARSE(son1));

    return IRTreeNewSTMT_RETURN(IRTson1);
}

SDTST2IRTDefHelper(Stmt_IFLPExpRPStmt) {

    SON4

    char *label1 = NewLabel();
    char *label2 = NewLabel();

    SET_TF_LABEL(son2, label1, label2);
    SET2(PARSE(son2));
    SET4(PARSE(son4));

    IRTson4->label_head = label1;
    IRTson4->label_tail = label2;
    
    return IRTreeNewSTMT_THEN(IRTson2, IRTson4, NULL);
}

SDTST2IRTDefHelper(Stmt_IFLPExpRPStmtELSEStmt) {

    SON6

    char *label1 = NewLabel();
    char *label2 = NewLabel();
    char *label3 = NewLabel();

    SET_TF_LABEL(son2, label1, label2);
    SET2(PARSE(son2));
    SET4(PARSE(son4));
    SET6(PARSE(son6));

    IRTson4->label_head = label1;
    IRTson4->goto_label = label3;

    IRTson6->label_head = label2;
    IRTson6->label_tail = label3;
    
    return IRTreeNewSTMT_THEN(IRTson2, IRTson4, IRTson6);
}

SDTST2IRTDefHelper(Stmt_WHILELPExpRPStmt) {

    SON4
    
    char *label1 = NewLabel();
    char *label2 = NewLabel();
    char *label3 = NewLabel();


    SET_TF_LABEL(son2, label2, label3);
    SET2(PARSE(son2));
    SET4(PARSE(son4));
   
    IRTson2->label_head = label1;
    IRTson2->label_tail = label2;

    IRTson4->goto_label = label1;
    IRTson4->label_tail = label3;

    return IRTreeNewSTMT_THEN(IRTson2, IRTson4, NULL);
}

 /* Local Definitions */
 /* DefList */
SDTST2IRTDefHelper(DefList_DefDefList) {

    SON1

    SET0(PARSE(son0));
    SET1(PARSE(son1));

    return IRTreeNewSTMT_THEN(IRTson0, IRTson1, NULL);
}

SDTST2IRTDefHelper(DefList_) {
    return NULL;
}

 /* Def */
SDTST2IRTDefHelper(Def_SpecifierDecListSEMI) {
    SON2

    SET0(PARSE(son0));
    SET1(PARSE(son1));

    return IRTson1;
}

 /* DecList */
SDTST2IRTDefHelper(DecList_Dec) {

    SON0

    SET0(PARSE(son0));

    return IRTson0;   
} 
SDTST2IRTDefHelper(DecList_DecCOMMADecList) {

    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    return IRTreeNewSTMT_THEN(IRTson0, IRTson2, NULL);
}

 /* Dec */
SDTST2IRTDefHelper(Dec_VarDec) {

    SON0

    PARSE(son0);

    char *name = STnode->son->sdti.name;
    
    Operand op = tableFindVarOp(STnode, name);
    assert(op);
    if (op->type->kind == ARRAY || op->type->kind == STRUCTURE) 
        return IRTreeNewEXP_DEC(IRTreeNewEXP_VAR(op), op->type->size);
    else 
        return NULL;
}
SDTST2IRTDefHelper(Dec_VarDecASSIGNOPExp) {

    SON2

    SET0(PARSE(son0));
       
    SET2(PARSE(son2));

    char *name = STnode->son->sdti.name;

    return IRTreeNewEXP_ASSIGN(IRTreeNewEXP_VAR(tableFindVarOp(STnode, name)), IRTson2);
}
 
#define EXP_COND_SET_LABEL \
    int is_exp_cond = 0;                      \
    if (!STnode->sdti.true_label) {           \
        char *label1 = NewLabel();            \
        char *label2 = NewLabel();            \
        SET_TF_LABEL(STnode, label1, label2); \
        is_exp_cond = 1;                      \
    }                                         

#define EXP_COND_RETURN(IRTnode) \
    if (is_exp_cond) {                                                                                \
        char *label3 = NewLabel();                                                                    \
        return IRTreeNewEXP_COND(IRTnode, STnode->sdti.true_label, STnode->sdti.false_label, label3); \
    } else {                                                                                          \
        return IRTnode;                                                                               \
    }                                                                                                 

#define COND_EXP_RETURN(IRTnode) \
    if (STnode->sdti.true_label) {                                                                                               \
        return IRTreeNewCOND_RELOP(IRTnode, IRTreeNewEXP_CONST(0), RELOP_NE, STnode->sdti.true_label, STnode->sdti.false_label); \
    } else {                                                                                                                     \
        return IRTnode;                                                                                                          \
    }                                                                                                 


 /* Expressions */
 /* Exp */
SDTST2IRTDefHelper(Exp_ExpASSIGNOPExp) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));
    
    IRTnode_t *IRTnode = IRTreeNewEXP_ASSIGN(IRTson0, IRTson2);
    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_ExpRELOPExp) {
    SON2

    EXP_COND_SET_LABEL;

    assert(STnode->sdti.true_label);
    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode = IRTreeNewCOND_RELOP(IRTson0, IRTson2, STnode->son->next->ti.relop_val, STnode->sdti.true_label, STnode->sdti.false_label);
    EXP_COND_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_ExpANDExp) {
    SON2

    EXP_COND_SET_LABEL;

    char *label = NewLabel();
    SET_TF_LABEL(son0, label, STnode->sdti.false_label);
    SET0(PARSE(son0));
    SET_TF_LABEL(son2, STnode->sdti.true_label, STnode->sdti.false_label);
    SET2(PARSE(son2));

    IRTson2->label_head = label;

    IRTnode_t *IRTnode = IRTreeNewSTMT_THEN(IRTson0, IRTson2, NULL);
    EXP_COND_RETURN(IRTnode);
}
SDTST2IRTDefHelper(Exp_ExpORExp) {
    SON2

    EXP_COND_SET_LABEL;

    char *label = NewLabel();
    SET_TF_LABEL(son0, STnode->sdti.true_label, label);
    SET0(PARSE(son0));
    SET_TF_LABEL(son2, STnode->sdti.true_label, STnode->sdti.false_label);
    SET2(PARSE(son2));

    IRTson2->label_head = label;

    IRTnode_t *IRTnode = IRTreeNewSTMT_THEN(IRTson0, IRTson2, NULL);
    EXP_COND_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_ExpPLUSExp) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_ADD, IRTson0, IRTson2);
    COND_EXP_RETURN(IRTnode);
}
SDTST2IRTDefHelper(Exp_ExpMINUSExp) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_SUB, IRTson0, IRTson2);
    COND_EXP_RETURN(IRTnode);
}
SDTST2IRTDefHelper(Exp_ExpSTARExp) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_MUL, IRTson0, IRTson2);
    COND_EXP_RETURN(IRTnode);
}
SDTST2IRTDefHelper(Exp_ExpDIVExp) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_DIV, IRTson0, IRTson2);
    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_LPExpRP) {
    SON2

    SET_TF_LABEL(son1, STnode->sdti.true_label, STnode->sdti.false_label);
    SET1(PARSE(son1));

    return IRTson1;
}

SDTST2IRTDefHelper(Exp_MINUSExp) {
    SON1

    SET1(PARSE(son1));

    IRTnode_t *IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_SUB, IRTreeNewEXP_CONST(0), IRTson1);
    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_NOTExp) {
    SON1

    EXP_COND_SET_LABEL;
    assert(STnode->sdti.true_label);

    SET_TF_LABEL(son1, STnode->sdti.false_label, STnode->sdti.true_label);
    SET1(PARSE(son1));

    EXP_COND_RETURN(IRTson1);
}

SDTST2IRTDefHelper(Exp_IDLPArgsRP) {

    SON3
    VAL_NAME(0)


    SET2(PARSE(son2));

    if (strcmp(name, "write") == 0) {
        // TODO: free IRTson2
        IRTnode_t *IRTnode = IRTreeNewEXP_WRITE(IRTson2->son[0]);
        COND_EXP_RETURN(IRTnode);
    }
    else {   
        IRTnode_t *IRTnode = IRTreeNewEXP_CALL(name, IRTson2);
        COND_EXP_RETURN(IRTnode);
    }
}

SDTST2IRTDefHelper(Exp_IDLPRP) {
    SON2
    VAL_NAME(0)

    if (strcmp(name, "read") == 0) {
        IRTnode_t *IRTnode = IRTreeNewEXP_READ();
        COND_EXP_RETURN(IRTnode);
    } else {
        IRTnode_t *IRTnode = IRTreeNewEXP_CALL(name, NULL);
        COND_EXP_RETURN(IRTnode);
    }
}

SDTST2IRTDefHelper(Exp_ExpLBExpRB) {
    SON3

    son0->sdti.array_type = STnode->sdti.array_type->u.array.elem;
    SET0(PARSE(son0));
    SET2(PARSE(son2));

    IRTnode_t *IRTnode;

    assert(IRTson0->u.irt_exp.result->type->kind == ARRAY);
    int size = STnode->sdti.array_type->u.array.elem->size;
    IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_ADDRESS, EXP_MUL, IRTson2, IRTreeNewEXP_CONST(size));
    IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_ADDRESS, EXP_ADD, IRTson0, IRTnode);

    IRTnode->u.irt_exp.result->type = IRTson0->u.irt_exp.result->type->u.array.elem;
    if (IRTnode->u.irt_exp.result->type == type_int) {
        IRTnode = IRTreeNewEXP_DRA(IRTnode);
    }

    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_ExpDOTID) {
    SON2
    SET0(PARSE(son0));

    VAL_NAME(2)

    IRTnode_t *IRTnode;
    FieldList fl = FieldListFind(name, IRTson0->u.irt_exp.result->type->u.structure);
    assert(fl);
    Type type  = fl->type;
    int offset = fl->offset;
    // TODO: search for existing constant, so can index with op
    IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_ADDRESS, EXP_ADD, IRTson0, IRTreeNewEXP_CONST(offset));
    IRTnode->u.irt_exp.result->type = type;
    // IRTnode = IRTreeNewEXP_OP_EXP(type2opkind(type), EXP_DRA, IRTnode); 
    if (IRTnode->u.irt_exp.result->type == type_int) {
        IRTnode = IRTreeNewEXP_DRA(IRTnode);
    }

    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_ID) {
    SON0

    VAL_NAME(0)
    IRTnode_t *IRTnode = IRTreeNewEXP_VAR(tableFindVarOp(STnode, name));
    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_INT) {
    SON0

    IRTnode_t *IRTnode = IRTreeNewEXP_CONST(son0->ti.int_val);
    COND_EXP_RETURN(IRTnode);
}

SDTST2IRTDefHelper(Exp_FLOAT) {
    assert(0); // L3 假设 1
    return NULL;
}

 /* Args */
SDTST2IRTDefHelper(Args_ExpCOMMAArgs) {
    SON2

    SET0(PARSE(son0));
    SET2(PARSE(son2));

    return IRTreeNewEXP_ARG(IRTson0, IRTson2);
}

SDTST2IRTDefHelper(Args_Exp) {

    SON0

    SET0(PARSE(son0));

    return IRTreeNewEXP_ARG(IRTson0, NULL);
}
