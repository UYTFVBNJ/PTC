#ifndef SDTST2IRT_H
#define SDTST2IRT_H

#include "Type.h"

typedef struct SDTIR_info_t {
    IRTNode_t *IRTnode;
} SDTIR_info_t;

struct Operand_ {
    enum { VARIABLE, CONSTANT, ADDRESS } kind;
    union {
        int var_no;
        int value;
    } u;
};

typedef struct Operand_* Operand;
struct InterCode {
    enum { ASSIGN, ADD, SUB, MUL, DIV } kind;
    union {
        struct { Operand right, left; } assign;
        struct { Operand result, op1, op2; } binop;
    } u;
};

#define SDTIRDefHelper(body) IRTnode_t* SDT##body (STnode_t *STnode, STnode_t *Fa)

 /* High-level Definitions */
 /* Program */
SDTIRDefHelper(Program_ExtDefList);

 /* ExtDefList */
SDTIRDefHelper(ExtDefList_ExtDefExtDefList);
SDTIRDefHelper(ExtDefList_);

 /* ExtDef */
SDTIRDefHelper(ExtDef_SpecifierExtDecListSEMI);
SDTIRDefHelper(ExtDef_SpecifierSEMI);
SDTIRDefHelper(ExtDef_SpecifierFunDecCompSt);
SDTIRDefHelper(ExtDef_SpecifierFunDecSEMI);

 /* ExtDecList */
SDTIRDefHelper(ExtDecList_VarDec);
SDTIRDefHelper(ExtDecList_VarDecCOMMAExtDecList);


 /* Specifiers */
 /* Specifier */
SDTIRDefHelper(Specifier_TYPE);
SDTIRDefHelper(Specifier_StructSpecifier);

 /* StructSpecifier */
SDTIRDefHelper(StructSpecifier_STRUCTOptTagLCDefListRC);
SDTIRDefHelper(StructSpecifier_STRUCTTag);
 /* OptTag */
SDTIRDefHelper(OptTag_ID);
SDTIRDefHelper(OptTag_);

 /* Tag */
SDTIRDefHelper(Tag_ID);

 /* Declarators */
 /* VarDec */
SDTIRDefHelper(VarDec_ID);
SDTIRDefHelper(VarDec_VarDecLBINTRB);

 /* FunDec */
SDTIRDefHelper(FunDec_IDLPVarListRP);
SDTIRDefHelper(FunDec_IDLPRP);

 /* VarList */
SDTIRDefHelper(VarList_ParamDecCOMMAVarList);
SDTIRDefHelper(VarList_ParamDec);

 /* ParamDec */
SDTIRDefHelper(ParamDec_SpecifierVarDec);

 /* Statements */
 /* CompSt */
SDTIRDefHelper(CompSt_LCDefListStmtListRC);

 /* StmtList */
SDTIRDefHelper(StmtList_StmtStmtList);
SDTIRDefHelper(StmtList_);

 /* Stmt */
SDTIRDefHelper(Stmt_ExpSEMI);
SDTIRDefHelper(Stmt_CompSt);
SDTIRDefHelper(Stmt_RETURNExpSEMI);
SDTIRDefHelper(Stmt_IFLPExpRPStmt);
SDTIRDefHelper(Stmt_IFLPExpRPStmtELSEStmt);
SDTIRDefHelper(Stmt_WHILELPExpRPStmt);

 /* Local Definitions */
 /* DefList */
SDTIRDefHelper(DefList_DefDefList);
SDTIRDefHelper(DefList_);

 /* Def */
SDTIRDefHelper(Def_SpecifierDecListSEMI);

 /* DecList */
SDTIRDefHelper(DecList_Dec);
SDTIRDefHelper(DecList_DecCOMMADecList);

 /* Dec */
SDTIRDefHelper(Dec_VarDec);
SDTIRDefHelper(Dec_VarDecASSIGNOPExp);
 
 /* Expressions */
 /* Exp */
SDTIRDefHelper(Exp_ExpASSIGNOPExp);
SDTIRDefHelper(Exp_ExpLOGICExp);
SDTIRDefHelper(Exp_ExpARITHMETICExp);
SDTIRDefHelper(Exp_LPExpRP);
SDTIRDefHelper(Exp_MINUSExp);
SDTIRDefHelper(Exp_NOTExp);
SDTIRDefHelper(Exp_IDLPArgsRP);
SDTIRDefHelper(Exp_IDLPRP);
SDTIRDefHelper(Exp_ExpLBExpRB);
SDTIRDefHelper(Exp_ExpDOTID);
SDTIRDefHelper(Exp_ID);
SDTIRDefHelper(Exp_INT);
SDTIRDefHelper(Exp_FLOAT);
 
 /* Args */
SDTIRDefHelper(Args_ExpCOMMAArgs);
SDTIRDefHelper(Args_Exp);
#endif