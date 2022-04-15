#ifndef SDT_H
#define SDT_H

#include "Type.h"

#define MAX_STACK_DEPTH 1000

typedef struct SDT_info_t {
    char *name;
    Type defining_struct;
    Type type;
    int islval;
} SDT_info_t;

typedef struct STnode_t STnode_t;


void SDT_report();

#define SDTDefHelper(body) void SDT##body (STnode_t *STnode, STnode_t *Fa)

 /* High-level Definitions */
 /* Program */
SDTDefHelper(Program_ExtDefList);

 /* ExtDefList */
SDTDefHelper(ExtDefList_ExtDefExtDefList);
SDTDefHelper(ExtDefList_);

 /* ExtDef */
SDTDefHelper(ExtDef_SpecifierExtDecListSEMI);
SDTDefHelper(ExtDef_SpecifierSEMI);
SDTDefHelper(ExtDef_SpecifierFunDecCompSt);
SDTDefHelper(ExtDef_SpecifierFunDecSEMI);

 /* ExtDecList */
SDTDefHelper(ExtDecList_VarDec);
SDTDefHelper(ExtDecList_VarDecCOMMAExtDecList);


 /* Specifiers */
 /* Specifier */
SDTDefHelper(Specifier_TYPE);
SDTDefHelper(Specifier_StructSpecifier);

 /* StructSpecifier */
SDTDefHelper(StructSpecifier_STRUCTOptTagLCDefListRC);
SDTDefHelper(StructSpecifier_STRUCTTag);
 /* OptTag */
SDTDefHelper(OptTag_ID);
SDTDefHelper(OptTag_);

 /* Tag */
SDTDefHelper(Tag_ID);

 /* Declarators */
 /* VarDec */
SDTDefHelper(VarDec_ID);
SDTDefHelper(VarDec_VarDecLBINTRB);

 /* FunDec */
SDTDefHelper(FunDec_IDLPVarListRP);
SDTDefHelper(FunDec_IDLPRP);

 /* VarList */
SDTDefHelper(VarList_ParamDecCOMMAVarList);
SDTDefHelper(VarList_ParamDec);

 /* ParamDec */
SDTDefHelper(ParamDec_SpecifierVarDec);

 /* Statements */
 /* CompSt */
SDTDefHelper(CompSt_LCDefListStmtListRC);

 /* StmtList */
SDTDefHelper(StmtList_StmtStmtList);
SDTDefHelper(StmtList_);

 /* Stmt */
SDTDefHelper(Stmt_ExpSEMI);
SDTDefHelper(Stmt_CompSt);
SDTDefHelper(Stmt_RETURNExpSEMI);
SDTDefHelper(Stmt_IFLPExpRPStmt);
SDTDefHelper(Stmt_IFLPExpRPStmtELSEStmt);
SDTDefHelper(Stmt_WHILELPExpRPStmt);

 /* Local Definitions */
 /* DefList */
SDTDefHelper(DefList_DefDefList);
SDTDefHelper(DefList_);

 /* Def */
SDTDefHelper(Def_SpecifierDecListSEMI);

 /* DecList */
SDTDefHelper(DecList_Dec);
SDTDefHelper(DecList_DecCOMMADecList);

 /* Dec */
SDTDefHelper(Dec_VarDec);
SDTDefHelper(Dec_VarDecASSIGNOPExp);
 
 /* Expressions */
 /* Exp */
SDTDefHelper(Exp_ExpASSIGNOPExp);
SDTDefHelper(Exp_ExpLOGICExp);
SDTDefHelper(Exp_ExpARITHMETICExp);
SDTDefHelper(Exp_LPExpRP);
SDTDefHelper(Exp_MINUSExp);
SDTDefHelper(Exp_NOTExp);
SDTDefHelper(Exp_IDLPArgsRP);
SDTDefHelper(Exp_IDLPRP);
SDTDefHelper(Exp_ExpLBExpRB);
SDTDefHelper(Exp_ExpDOTID);
SDTDefHelper(Exp_ID);
SDTDefHelper(Exp_INT);
SDTDefHelper(Exp_FLOAT);
 
 /* Args */
SDTDefHelper(Args_ExpCOMMAArgs);
SDTDefHelper(Args_Exp);
#endif