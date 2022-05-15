#ifndef SDTST2IRT_H
#define SDTST2IRT_H

#include "Type.h"
#include "STree.h"
#include "IRTree.h"

typedef struct SDTST2IRT_info_t {
    IRTnode_t *IRTnode;
} SDTST2IRT_info_t;

#define SDTST2IRTDefHelper(body) IRTnode_t* SDTST2IRT##body (STnode_t *STnode, STnode_t *Fa)

 /* High-level Definitions */
 /* Program */
SDTST2IRTDefHelper(Program_ExtDefList);

 /* ExtDefList */
SDTST2IRTDefHelper(ExtDefList_ExtDefExtDefList);
SDTST2IRTDefHelper(ExtDefList_);

 /* ExtDef */
SDTST2IRTDefHelper(ExtDef_SpecifierExtDecListSEMI);
SDTST2IRTDefHelper(ExtDef_SpecifierSEMI);
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecCompSt);
SDTST2IRTDefHelper(ExtDef_SpecifierFunDecSEMI);

 /* ExtDecList */
SDTST2IRTDefHelper(ExtDecList_VarDec);
SDTST2IRTDefHelper(ExtDecList_VarDecCOMMAExtDecList);


 /* Specifiers */
 /* Specifier */
SDTST2IRTDefHelper(Specifier_TYPE);
SDTST2IRTDefHelper(Specifier_StructSpecifier);

 /* StructSpecifier */
SDTST2IRTDefHelper(StructSpecifier_STRUCTOptTagLCDefListRC);
SDTST2IRTDefHelper(StructSpecifier_STRUCTTag);
 /* OptTag */
SDTST2IRTDefHelper(OptTag_ID);
SDTST2IRTDefHelper(OptTag_);

 /* Tag */
SDTST2IRTDefHelper(Tag_ID);

 /* Declarators */
 /* VarDec */
SDTST2IRTDefHelper(VarDec_ID);
SDTST2IRTDefHelper(VarDec_VarDecLBINTRB);

 /* FunDec */
SDTST2IRTDefHelper(FunDec_IDLPVarListRP);
SDTST2IRTDefHelper(FunDec_IDLPRP);

 /* VarList */
SDTST2IRTDefHelper(VarList_ParamDecCOMMAVarList);
SDTST2IRTDefHelper(VarList_ParamDec);

 /* ParamDec */
SDTST2IRTDefHelper(ParamDec_SpecifierVarDec);

 /* Statements */
 /* CompSt */
SDTST2IRTDefHelper(CompSt_LCDefListStmtListRC);

 /* StmtList */
SDTST2IRTDefHelper(StmtList_StmtStmtList);
SDTST2IRTDefHelper(StmtList_);

 /* Stmt */
SDTST2IRTDefHelper(Stmt_ExpSEMI);
SDTST2IRTDefHelper(Stmt_CompSt);
SDTST2IRTDefHelper(Stmt_RETURNExpSEMI);
SDTST2IRTDefHelper(Stmt_IFLPExpRPStmt);
SDTST2IRTDefHelper(Stmt_IFLPExpRPStmtELSEStmt);
SDTST2IRTDefHelper(Stmt_WHILELPExpRPStmt);

 /* Local Definitions */
 /* DefList */
SDTST2IRTDefHelper(DefList_DefDefList);
SDTST2IRTDefHelper(DefList_);

 /* Def */
SDTST2IRTDefHelper(Def_SpecifierDecListSEMI);

 /* DecList */
SDTST2IRTDefHelper(DecList_Dec);
SDTST2IRTDefHelper(DecList_DecCOMMADecList);

 /* Dec */
SDTST2IRTDefHelper(Dec_VarDec);
SDTST2IRTDefHelper(Dec_VarDecASSIGNOPExp);
 
 /* Expressions */
 /* Exp */
SDTST2IRTDefHelper(Exp_ExpASSIGNOPExp);
SDTST2IRTDefHelper(Exp_ExpRELOPExp);
SDTST2IRTDefHelper(Exp_ExpANDExp);
SDTST2IRTDefHelper(Exp_ExpORExp);
SDTST2IRTDefHelper(Exp_ExpPLUSExp);
SDTST2IRTDefHelper(Exp_ExpMINUSExp);
SDTST2IRTDefHelper(Exp_ExpSTARExp);
SDTST2IRTDefHelper(Exp_ExpDIVExp);
SDTST2IRTDefHelper(Exp_LPExpRP);
SDTST2IRTDefHelper(Exp_MINUSExp);
SDTST2IRTDefHelper(Exp_NOTExp);
SDTST2IRTDefHelper(Exp_IDLPArgsRP);
SDTST2IRTDefHelper(Exp_IDLPRP);
SDTST2IRTDefHelper(Exp_ExpLBExpRB);
SDTST2IRTDefHelper(Exp_ExpDOTID);
SDTST2IRTDefHelper(Exp_ID);
SDTST2IRTDefHelper(Exp_INT);
SDTST2IRTDefHelper(Exp_FLOAT);
 
 /* Args */
SDTST2IRTDefHelper(Args_ExpCOMMAArgs);
SDTST2IRTDefHelper(Args_Exp);
#endif