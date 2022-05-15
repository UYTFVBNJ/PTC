#include <stdio.h>

extern FILE* yyin;

extern int yydebug;
int yyparse(void);
int yylex(void);
void STprint();
void SDTparse();
void SDTST2IRTparse();
void initSymbolTables();

int num_lexical_error = 0, num_syntax_error = 0;

int main(int argc, char** argv) {
    initSymbolTables();
    if (argc > 1) {
        if (!(yyin = fopen(argv[1], "r"))) {
            perror(argv[1]);
            return 1;
        }
    }
    if (argc > 2) {
        if (!(freopen(argv[2], "w", stdout))) {
            perror(argv[2]);
            return 1;
        }
    }
    // yylex();
    // while (yylex() != 0) {}
    yyparse();
    if (num_lexical_error + num_syntax_error == 0) {
    	// STprint();
        SDTparse();
        SDTST2IRTparse();
    }
    /*
    // yydebug = 1;
    if (yyparse() == 0) {
        puts("parsed successfully!");
    }

    printf("parsed over with %d lexical errors and %d syntax errors\n", num_lexical_error, num_syntax_error);
    */


    return 0;
}
