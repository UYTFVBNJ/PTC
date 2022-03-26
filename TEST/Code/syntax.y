%{
#include "common.h"
#include "lex.yy.c"
%}

%token INT 
%token AND MINUS MUL DIV

%%
Calc : 
    | Exp { printf("= %d\n", $1); }
    ;
Exp : 
    | Exp AND Exp 
    | Exp OR Exp
    | Exp RELOP Exp 
    | Exp PLUS Exp { $$ = $1 + $3; }
    | Exp MINUS Exp
    | Exp STAR Exp
    | Exp DIV Exp
    | LP Exp RP 
    | MINUS Exp 
    | NOT Exp 
    | ID LP Args RP 
    | ID LP RP 
    | Exp LB Exp RB 
    | Exp DOT ID 
    | ID 
    | INT 
    | FLOAT 
    ;
Args : Exp COMMA Args
    | Exp 
    ;



%%
#include "lex.yy.c"