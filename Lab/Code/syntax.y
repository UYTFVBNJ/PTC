%locations
%token-table
/*
%union {
  int type_int;
  float type_float;
  double type_double;
}
*/

%{
#include "common.h"
#include "Token.h"
#include "STree.h"
#include "SDT.h"
int yylex(void);
int yyerror(char * msg);
extern int yylineno;
extern int lexical_error;
extern int num_lexical_error, num_syntax_error;

#define YYLTYPE location_t
typedef struct location_t {
    int first_line, first_column;
    int last_line, last_column;
    struct STnode_t *STnode;
} location_t;
#define YYLTYPE_IS_DECLARED true
#define YYLTYPE_IS_TRIVIAL  true
extern YYLTYPE yylloc;

STnode_t *root = NULL;

%}


%{
// https://www.gnu.org/software/bison/manual/html_node/Location-Default-Action.html
# define YYLLOC_DEFAULT(Cur, Rhs, N)                      \
 /*     printf("\nsymbol: %d %s\n", yyr1[yyn], yytname[yyr1[yyn]));                               */  \
do {                                                      \
  root = STreeNewNode();              \
  if (N)                                                  \
    {                                                     \
  /*  printf("\ntoken pos: %d %d\n", YYRHSLOC(Rhs, 1).first_line, YYRHSLOC(Rhs, 1).first_column);            */                     \
      (Cur).first_line   = YYRHSLOC(Rhs, 1).first_line;   \
      (Cur).first_column = YYRHSLOC(Rhs, 1).first_column; \
      (Cur).last_line    = YYRHSLOC(Rhs, N).last_line;    \
      (Cur).last_column  = YYRHSLOC(Rhs, N).last_column;  \
                                                                    \
      /* normal reduction */                             \
      root->son = YYRHSLOC(Rhs, 1).STnode;                          \
      root->next = NULL;                          \
      root->symbol = yyr1[yyn];                          \
    /*  for (int i = 1; i <= N; i ++)                                  \
        if (YYRHSLOC(Rhs, i).STnode->son == NULL) \
          printf("TOKEN: %p %d %d %s\n", YYRHSLOC(Rhs, i).STnode, YYRHSLOC(Rhs, i).STnode->ti.token, YYTRANSLATE(YYRHSLOC(Rhs, i).STnode->ti.token), yytname[YYTRANSLATE(YYRHSLOC(Rhs, i).STnode->ti.token)));                                 \
        else  \
          printf("SYMBOL: %p %d %s\n", YYRHSLOC(Rhs, i).STnode, YYRHSLOC(Rhs, i).STnode->symbol, yytname[YYRHSLOC(Rhs, i).STnode->symbol));                                 \
         */                                                           \
      for (int i = 1; i < N; i ++)                                  \
        YYRHSLOC(Rhs, i).STnode->next = YYRHSLOC(Rhs, i + 1).STnode;    \
                                                                    \
    }                                                     \
  else                                                    \
    {                                                     \
      (Cur).first_line   = (Cur).last_line   =            \
        YYRHSLOC(Rhs, 0).last_line;                       \
      (Cur).first_column = (Cur).last_column =            \
        YYRHSLOC(Rhs, 0).last_column;                     \
                                                                    \
      /* epsilon reduction */                             \
      root->son = NULL;                          \
      root->next = NULL;                          \
      root->symbol = yyr1[yyn];                          \
      root->ti.token = YYEMPTY;                          \
    }                                                     \
    (Cur).STnode = root;                                           \
    (Cur).STnode->first_line = (Cur).first_line;                                           \
    /* printf("\nline: %d\n", (Cur).first_line);                                */ \
}                                                         \
while (0)

#include "lex.yy.c"
%}

%{
#include "TYPE.h"
extern Type type_int, type_float;
%}

// %union {
    // int type_int;
    // float type_float;
    // double type_double;
// }


%token LEXICAL_ERROR
%token RELOP 
%token AND OR
%token SEMI COMMA
%token ASSIGNOP
%token PLUS MINUS STAR DIV 
%token DOT 
%token NOT 
%token TYPE 
%token LP RP 
%token LB RB 
%token LC RC 
%token STRUCT 
%token RETURN 
%token IF 
%token ELSE 
%token WHILE 

/*
<type_float>
*/

%token INT 
%token FLOAT 
%token ID 

/*
%type <type_double> Exp 
*/

%right ASSIGNOP

%left OR
%left AND
%left RELOP
%left MINUS PLUS
%left DIV   STAR

%right NOT 

%left DOT LB RB LP RP

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

// %type <type_double> Exp

%%

 /* High-level Definitions */
Program : ExtDefList {/*SDTProgram(@$.STnode);*/}
    ;
ExtDefList : ExtDef ExtDefList
    |
    ;
ExtDef : Specifier ExtDecList SEMI
    | Specifier SEMI
    | Specifier FunDec CompSt
    | Specifier FunDec SEMI
    | Specifier error CompSt {yyerrok;}
    | error Specifier FunDec CompSt {yyerrok;}
    | error SEMI {yyerrok;}
    ;
ExtDecList : VarDec
    | VarDec COMMA ExtDecList
    ;

 /* Specifiers */
Specifier : TYPE
    | StructSpecifier
    ;
StructSpecifier : STRUCT OptTag LC DefList RC
    | STRUCT OptTag LC error RC {yyerrok;}
    | STRUCT Tag;    
OptTag : ID
    | 
    ;
Tag : ID;    

 /* Declarators */
VarDec : ID
    | VarDec LB INT RB
    | VarDec LB error RB 
    ;
FunDec : ID LP VarList RP 
    | ID LP RP
    | error RP {yyerrok;}
    ;
VarList : ParamDec COMMA VarList
    | ParamDec
    ;
ParamDec : Specifier VarDec
    ;

 /* Statements */
CompSt : LC DefList StmtList RC { SDTSetHelper(CompSt_LCDefListStmtListRC); }
    | LC DefList error RC {yyerrok;}
    | error LC DefList StmtList RC {yyerrok;}
    ;
StmtList : Stmt StmtList
    |
    ;    
Stmt : Exp SEMI
    | error SEMI {yyerrok;}
    | CompSt 
    | RETURN Exp SEMI 
    | RETURN error SEMI {yyerrok;}
    | IF LP Exp RP Stmt %prec LOWER_THAN_ELSE
    | IF LP error RP Stmt %prec LOWER_THAN_ELSE 
    | IF LP Exp RP Stmt ELSE Stmt 
    | IF LP error RP Stmt ELSE Stmt 
    | IF LP Exp RP error ELSE Stmt 
    | WHILE LP Exp RP Stmt 
    | WHILE LP error RP Stmt {yyerrok;}
    ;

 /* Local Definitions */
DefList : Def DefList
    |
    ;
Def : Specifier DecList SEMI
    | Specifier error SEMI {yyerrok;}
    ;
DecList : Dec 
    | Dec COMMA DecList 
    ;
Dec : VarDec
    | VarDec ASSIGNOP Exp 
    ;
        
 /* Expressions */
// Calc : 
    // | Exp { printf("\n ANS = %lf\n", $1); }
    // ;
Exp : Exp ASSIGNOP Exp {SDTExpASSIGNOPExp(@$.STnode);}
    | Exp AND Exp 
    | Exp OR Exp
    | Exp RELOP Exp 
    | Exp PLUS Exp 
    | Exp MINUS Exp
    | Exp STAR Exp
    | Exp DIV Exp
    | LP Exp RP 
    | LP error RP 
    | LP error SEMI {yyerrok;}
    | LP error RC {yyerrok;}
    | MINUS Exp 
    | NOT Exp 
    | ID LP Args RP 
    | ID LP error RP 
    | ID LP RP 
    | Exp LB Exp RB 
    | Exp LB error RB 
    | Exp LB error SEMI {yyerrok;}
    | Exp LB error RC {yyerrok;}
    | Exp DOT ID 
    | ID {SDTExp_ID(@$.STnode);}
    | INT {SDTExp_INT_FLOAT(@$.STnode, type_int);}
    | FLOAT {SDTFExp_INT_LOAT(@$.STnode, type_float);}
    ;
Args : Exp COMMA Args
    | Exp 
    ;



%%
int yyerror(char * msg) {
    // fprintf(stderr, RED"error"RESET": %s\n", msg);
    // fprintf(stderr, "at %d, %d\n", yylineno, yycolumn);

    if (lexical_error) {
        lexical_error = 0;
        printf("Error type A at Line %d: Mysterious characters \'%s\'\n", yylineno, yytext);
        num_lexical_error ++;
    } else {
        printf("Error type B at Line %d: Unexpected %s \n", yylineno, yytext);
        num_syntax_error ++;
    }
    return 0;
}


int depth = 0;
void STtraversal(STnode_t *u) {
    if (u == NULL) return ;
    if (u->son == NULL) {
        switch (u->ti.token) {
          case YYEMPTY: {
            break;
          }
          case ID: {
            for (int i = 0; i < depth; i ++) printf("  ");
            //printf("%s: %s\n", yytname[YYTRANSLATE((u->ti.token))), u->ti.id_val);
            printf("%s: %s\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.id_val);
            break;
          }
          case TYPE: {
            for (int i = 0; i < depth; i ++) printf("  ");
            switch (u->ti.type_val) {
              case TYPE_INT: {
                printf("%s: int\n", yytname[YYTRANSLATE((u->ti.token))]);
                break;
              }
              case TYPE_FLOAT: {
                printf("%s: float\n", yytname[YYTRANSLATE((u->ti.token))]);
                break;
              }
              default: {
                assert(0);
              }
            }
            break;
          }
          case INT: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s: %d\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.int_val);
            break;
          }
          case FLOAT: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s: %f\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.float_val);
            break;
          }
          default: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s\n", yytname[YYTRANSLATE((u->ti.token))]);
          }
        }
    } else {
        for (int i = 0; i < depth; i ++) printf("  ");
        printf("%s (%d)\n", yytname[(u->symbol)], u->first_line);
    }
    depth ++;
    STtraversal(u->son);
    depth --;
    STtraversal(u->next);
}

void STprint() {
    STtraversal(root);
}
