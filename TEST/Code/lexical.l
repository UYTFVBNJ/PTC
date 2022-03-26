%option yylineno
%{
    #include "common.h"
    #include "syntax.tab.h"
    // int yylval;
%}

digit [0-9]
letter [_a-zA-Z]



%%
 /* RELOP */
>|<|>=|<=|==|!= { 
    printf("RELOP");
    return RELOP;
}

 /* AND */
"&&" {     
    printf("&&");
    return AND;
}

 /* OR */
"||" { 
    printf("||");
    return OR;
}

 /* SEMI */
";" { 
    printf(";");
    return SEMI;
}
 /* COMMA */
"," { 
    printf(",");
    return COMMA;
}
 /* ASSIGNOP */
"=" { 
    printf("=");
    return ASSIGNOP;
}
 /* PLUS */
"+" { 
    printf("+");
    return PLUS;
}
 /* MINUS */
"-" { 
    printf("-");
    return MINUS;
}
 /* STAR */
"*" { 
    printf("*");
    return STAR;
}
 /* DIV */
"/" { 
    printf("/");
    return DIV;
}
 /* DOT */
"." { 
    printf(".");
    return DOT;
}
 /* NOT */
"!" { 
    printf("!");
    return NOT;
}

 /* TYPE */
int|float { 
    printf("TYPE");
    return TYPE;
}

 /* LP */
"(" { 
    printf("LP");
    return LP;
}
 /* RP */
")" { 
    printf("RP");
    return RP;
}

 /* LB */
"[" { 
    printf("LB");
    return LB;
}
 /* RB */
"]" { 
    printf("RB");
    return RB;
}

 /* LC */
"{" { 
    printf("LC");
    return LC;
}
 /* RC */
"}" { 
    printf("RC");
    return RC;
}

 /* STRUCT */
"struct" { 
    printf("STRUCT");
    return STRUCT;
}
 /* RETURN */
"return" { 
    printf("RETURN");
    return RETURN;
}
 /* IF */
"if" { 
    printf("IF");
    return IF;
}
 /* ELSE */
"else" { 
    printf("ELSE");
    return ELSE;
}
 /* WHILE */
"while" { 
    printf("WHILE");
    return WHILE;
}

 /* INT */
{digit}+ { 
    printf("%d", atoi(yytext));
    // yylval = atoi(yytext);
    return INT;
}

 /* FLOAT */
[+-]?({digit}*\.?{digit}+|{digit}+\.) { 
    printf("%f", atof(yytext));
    // yylval = atof(yytext);
    return FLOAT;
}

 /* ID */
{letter}({letter}|{digit})* { 
    printf("ID");
    return ID;
}

. { 
    printf("?");
    return YYUNDEF;
}

%%

