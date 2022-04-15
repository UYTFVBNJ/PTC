#include "SymbolTables.h"
#include "stdlib.h"

SkipListStack_t *SkipListStackNew(SkipListStack_t *prev);

// Symbol tables
SkipList_t StructTable_, FuncTable_;
SkipList_t *StructTable = &StructTable_, *FuncTable = &FuncTable_;
SkipListStack_t *VarTableStack;


void initSymbolTables() {
    SLInit(StructTable);
    SLInit(FuncTable);
    VarTableStack = SkipListStackNew(NULL);
}

void tableAddStruct(char *name, Type type) {
    SLInsert(StructTable, name, type);
}

Type tableFindStruct(char *name) {
    return SLLookup(StructTable, name);
}

void tableAddFunc(char *name, Type type) {
    SLInsert(FuncTable, name, type);
}

Type tableFindFunc(char *name) {
    return SLLookup(FuncTable, name);
}

void tableAddVar(char *name, Type type) {
    SLInsert(&(VarTableStack->table), name, type);
}

Type tableFindVar(char *name) {
    for (SkipListStack_t *cur = VarTableStack; cur; cur = cur->prev) {
        Type type = SLLookup(&(cur->table), name);
        if (type)
            return type;
    }
    return NULL;
}

SkipListStack_t *SkipListStackNew(SkipListStack_t *prev) {
    SkipListStack_t *stack = (SkipListStack_t *)malloc(sizeof(SkipListStack_t));
    stack->prev = prev;
    SLInit(&(stack->table));
    return stack;
}

SkipListStack_t *SkipListStackDelete(SkipListStack_t *stack) {
    SkipListStack_t *prev = stack->prev;
    SLTearDown(&(stack->table));
    free(stack);
    return prev;
}

void varStackPush() {
    VarTableStack = SkipListStackNew(VarTableStack);
}

void varStackPop() {
    VarTableStack = SkipListStackDelete(VarTableStack);
}

