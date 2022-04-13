#include "SDT.h"
#include "STree.h"
#include "SkipList.h"
#include "SemanticErrors.h"
#include <stdlib.h>
#include <assert.h>

#define SON0 SDT_info_t *son0 = &(STnode->son->sdti);
#define SON1 SON0 SDT_info_t *son1 = &(STnode->son->next->sdti);
#define SON2 SON1 SDT_info_t *son2 = &(STnode->son->next->next->sdti);

#define NAME char *name = STnode->son->ti.id_val;


int stack_size = 0;
SkipList_t stack[MAX_STACK_DEPTH];

int semantic_errors_size = 0;
SemanticError_t semantic_errors[MAX_SEMANTIC_ERRORS];

// TODO 
// INIT 0 
void addSymbol(char *name, Type type) {
    SLInsert(&stack[stack_size - 1], name, type);
}

Type findSymbol(char *name) {
    return SLLookup(&stack[stack_size - 1], name);
}

void stackPush() {
    assert(stack_size < MAX_STACK_DEPTH);
    SLInit(&stack[stack_size]);
    stack_size ++;
}

void stackPop() {
    assert(stack_size > 0);
    SLTearDown(&stack[stack_size - 1]);
    stack_size --;
}

#define SemanticAssert(bool, SemanticError, errlineno) \
    if (!(bool)) { \
        semantic_errors[semantic_errors_size].seno = SemanticError;     \
        semantic_errors[semantic_errors_size].message = #SemanticError; \
        semantic_errors[semantic_errors_size].lineno = errlineno;          \
        semantic_errors_size ++; \
    }


// semantic checkers

void SDTExpASSIGNOPExp(STnode_t *STnode) {
    SON1
    
    SemanticAssert(isSameType(son0->type, son1->type), SE_MISMATCHED_ASSIGNMENT, STnode->first_line);
    SemanticAssert(son0->islval == 1, SE_RVALUE_ASSIGNMENT, STnode->first_line);

    STnode->sdti.islval = 0;
    STnode->sdti.type = son0->type;
}

void SDTID(STnode_t *STnode) {
    NAME

    Type type = findSymbol(name);

    STnode->sdti.islval = 1;
    STnode->sdti.type = type;
}

void SDTINT_FLOAT(STnode_t *STnode, Type type) {
    NAME

    addSymbol(name, type);

    STnode->sdti.islval = 0;
    STnode->sdti.type = type;
}
