#ifndef SDT_H
#define SDT_H

#include "Type.h"

#define MAX_STACK_DEPTH 1000

typedef struct SDT_info_t {
    Type type;
    int islval;
} SDT_info_t;


typedef struct STnode_t STnode_t;


void NewObj();

void STPush();

void STPop();

void STAdd();

void STLookup();

#define SDTDefHelper(body) void SDT##body (STnode_t *STnode)

 /* High-level Definitions */
 /* Program */
// SDTDefHelper(ExtDefList);

 /* ExtDefList */
// SDTDefHelper(ExtDef ExtDefList

 /* ExtDef */
// SDTDefHelper(Specifier ExtDecList SEMI
// SDTDefHelper(Specifier SEMI
// SDTDefHelper(Specifier FunDec CompSt
// SDTDefHelper(Specifier FunDec SEMI
// SDTDefHelper(Specifier error CompSt {yyerrok;}
// SDTDefHelper(error Specifier FunDec CompSt {yyerrok;}
// SDTDefHelper(error SEMI {yyerrok;}

 /* ExtDecList */
// SDTDefHelper(VarDec
// SDTDefHelper(VarDec COMMA ExtDecList


 /* Specifiers */
 /* Specifier */
// SDTDefHelper(TYPE
// SDTDefHelper(StructSpecifier

 /* StructSpecifier */
// SDTDefHelper(STRUCT OptTag LC DefList RC
// SDTDefHelper(STRUCT OptTag LC error RC {yyerrok;}
// SDTDefHelper(STRUCT Tag;    
 /* OptTag */
// SDTDefHelper(ID
// SDTDefHelper(

 /* Tag */
// SDTDefHelper(ID;    

 /* Declarators */
 /* VarDec */
// SDTDefHelper(ID
// SDTDefHelper(VarDec LB INT RB
// SDTDefHelper(VarDec LB error RB 

 /* FunDec */
// SDTDefHelper(ID LP VarList RP 
// SDTDefHelper(ID LP RP
// SDTDefHelper(error RP {yyerrok;}

 /* VarList */
// SDTDefHelper(ParamDec COMMA VarList
// SDTDefHelper(ParamDec

 /* ParamDec */
// SDTDefHelper(Specifier VarDec

 /* Statements */
 /* CompSt */
// SDTDefHelper(LC DefList StmtList RC 
// SDTDefHelper(LC DefList error RC {yyerrok;}
// SDTDefHelper(error LC DefList StmtList RC {yyerrok;}

 /* StmtList */
// SDTDefHelper(Stmt StmtList

 /* Stmt */
// SDTDefHelper(Exp SEMI
// SDTDefHelper(error SEMI {yyerrok;}
// SDTDefHelper(CompSt 
// SDTDefHelper(RETURN Exp SEMI 
// SDTDefHelper(RETURN error SEMI {yyerrok;}
// SDTDefHelper(IF LP Exp RP Stmt %prec LOWER_THAN_ELSE
// SDTDefHelper(IF LP error RP Stmt %prec LOWER_THAN_ELSE 
// SDTDefHelper(IF LP Exp RP Stmt ELSE Stmt 
// SDTDefHelper(IF LP error RP Stmt ELSE Stmt 
// SDTDefHelper(IF LP Exp RP error ELSE Stmt 
// SDTDefHelper(WHILE LP Exp RP Stmt 
// SDTDefHelper(WHILE LP error RP Stmt {yyerrok;}

 /* Local Definitions */
 /* DefList */
// SDTDefHelper(Def DefList

 /* Def */
// SDTDefHelper(Specifier DecList SEMI
// SDTDefHelper(Specifier error SEMI {yyerrok;}

 /* DecList */
// SDTDefHelper(Dec 
// SDTDefHelper(Dec COMMA DecList 

 /* Dec */
// SDTDefHelper(VarDec);
// SDTDefHelper(VarDec ASSIGNOP Exp);
 
 /* Expressions */
 /* Exp */
SDTDefHelper(ExpASSIGNOPExp);
SDTDefHelper(ExpANDExp);
SDTDefHelper(ExpPLUSExp);
SDTDefHelper(LPExpRP);
SDTDefHelper(MINUSExp);
SDTDefHelper(NOTExp);
SDTDefHelper(IDLPArgsRP);
SDTDefHelper(IDLPRP);
SDTDefHelper(ExpLBExpRB);
SDTDefHelper(ExpDOTID);
SDTDefHelper(ID);
SDTDefHelper(INT);
SDTDefHelper(FLOAT);
 
 /* Args */
SDTDefHelper(ExpCOMMAArgs);
SDTDefHelper(Exp);
#endif