%option yylineno
%{
    #include "common.h"
    #include "syntax.tab.h"
    int lexical_error = 0;    
    YYSTYPE yylval;
    int yycolumn = 1;

    #define YY_USER_ACTION \
        yylloc.first_line = yylloc.last_line = yylineno; \
        yylloc.first_column = yycolumn; \
        yylloc.last_column = yycolumn + yyleng - 1; \
        yycolumn += yyleng;

    //   #ifdef LEXICAL_DEBUG 
        // printf(#TOKEN); 
    //   #endif     
    #define NOMAL_ACTION(TOKEN, SET_TI_VAL) \
      STnode_t *Cur_STnode = yylloc.STnode = (STnode_t *)malloc(sizeof(STnode_t)); \
         \
        Cur_STnode->son = NULL;                          \
        Cur_STnode->next = NULL;                          \
        Cur_STnode->ti.token = TOKEN;\
        Cur_STnode->ti.first_line = yylineno;\
        SET_TI_VAL;\
                                                        \
      return TOKEN;

%}

digit [0-9]
dec 0|([1-9]{digit}*)
oct 0([0-7]+)
hex 0[xX](0|([1-9a-fA-F][0-9a-fA-F]*))

float {digit}+\.{digit}+
half_float ({digit}*\.{digit}+|{digit}+\.)
exp_float {half_float}[Ee][+-]?{digit}+

letter [_a-zA-Z]
ws [[:blank:]]



%%
 /* RELOP */
>|<|>=|<=|==|!= { 
NOMAL_ACTION(RELOP,)
}

 /* AND */
"&&" {     
NOMAL_ACTION(AND,)
}

 /* OR */
"||" { 
NOMAL_ACTION(OR,)
}

 /* SEMI */
";" { 
NOMAL_ACTION(SEMI,)
}
 /* COMMA */
"," { 
NOMAL_ACTION(COMMA,)
}
 /* ASSIGNOP */
"=" { 
NOMAL_ACTION(ASSIGNOP,)
}
 /* PLUS */
"+" { 
NOMAL_ACTION(PLUS,)
}
 /* MINUS */
"-" { 
NOMAL_ACTION(MINUS,)
}
 /* STAR */
"*" { 
NOMAL_ACTION(STAR,)
}
 /* DIV */
"/" { 
NOMAL_ACTION(DIV,)
}
 /* DOT */
"." { 
NOMAL_ACTION(DOT,)
}
 /* NOT */
"!" { 
NOMAL_ACTION(NOT,)
}

 /* TYPE */
int { 
NOMAL_ACTION(TYPE, Cur_STnode->ti.type_val = TYPE_INT)
}

float  { 
NOMAL_ACTION(TYPE, Cur_STnode->ti.type_val = TYPE_FLOAT)
}

 /* LP */
"(" { 
NOMAL_ACTION(LP,)
}
 /* RP */
")" { 
NOMAL_ACTION(RP,)
}

 /* LB */
"[" { 
NOMAL_ACTION(LB,)
}
 /* RB */
"]" { 
NOMAL_ACTION(RB,)
}

 /* LC */
"{" { 
NOMAL_ACTION(LC,)
}
 /* RC */
"}" { 
NOMAL_ACTION(RC,)
}

 /* STRUCT */
"struct" { 
NOMAL_ACTION(STRUCT,)
}
 /* RETURN */
"return" { 
NOMAL_ACTION(RETURN,)
}
 /* IF */
"if" { 
NOMAL_ACTION(IF,)
}
 /* ELSE */
"else" { 
NOMAL_ACTION(ELSE,)
}
 /* WHILE */
"while" { 
NOMAL_ACTION(WHILE,)
}

 /* INT */
{dec}|{oct}|{hex} { 
    yylval.int_val = strtol(yytext, NULL, 0);
NOMAL_ACTION(INT, Cur_STnode->ti.int_val = yylval.int_val)
}

 /* TODO fix 09 */
 /* FLOAT */
 /* [+-]?({digit}*\.?{digit}+|{digit}+\.) optional [+-] and . */
{float}|{exp_float} { 
    yylval.float_val = strtof(yytext, NULL); 
NOMAL_ACTION(FLOAT, Cur_STnode->ti.float_val = yylval.float_val)
}

 /* ID */
 /* make sure Reserved Words is above ID */
{letter}({letter}|{digit})* { 
NOMAL_ACTION(ID, strncpy(Cur_STnode->ti.id_val, yytext, 64))
}

 /* White Space */
{ws}+ {
}

 /* \n */
(\n|(\r\n)) {
#ifdef LEXICAL_DEBUG
    printf("\n");
#endif    
    yycolumn = 1;
}

 /* // */
"//" {
    while (input() != '\n');
}

 /* /* */
(\/\*([^*]|(\*+[^\/]))*\*\/) {

}

 /* YYUNDEF */
. { 
    lexical_error = 1;
#ifdef LEXICAL_DEBUG
    printf("?%d?", yytext[0]);
#endif
NOMAL_ACTION(LEXICAL_ERROR,)
}

%%

