#include "SymbolTables.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

SkipListStack_t *SkipListStackNew(SkipListStack_t *prev);

// Symbol tables
SkipList_t StructTable_, FuncTable_;
SkipList_t *StructTable = &StructTable_, *FuncTable = &FuncTable_;
SkipListStack_t *VarTableStack;

int SymbolTableCmp(void *a, void *b) {
    return strcmp((char *)a, (char *)b);
}

void initSymbolTables() {
    SLInit(StructTable, SymbolTableCmp);
    SLInit(FuncTable, SymbolTableCmp);
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

SkipListNode_t *tableGetFuncList() {
    return &(FuncTable->header[0]);
}


Var_info_t *NewVar_info_t(Type type) {
    Var_info_t *var_info = (Var_info_t *)malloc(sizeof(Var_info_t));
    var_info->type = type;
    // var_info->op = NewOperand(type);
    var_info->op = NULL;
}

void tableAddVar(char *name, Type type) {
    SLInsert(&(VarTableStack->table), name, NewVar_info_t(type));
}

Type tableFindVar(char *name) {
    for (SkipListStack_t *cur = VarTableStack; cur; cur = cur->prev) {
        Var_info_t *var_info = SLLookup(&(cur->table), name);
        if (var_info)
            return var_info->type;
    }
    return NULL;
}

Type tableFindCurrVar(char *name) {
    Var_info_t *var_info = SLLookup(&(VarTableStack->table), name);
    if (var_info)
        return var_info->type;
    else 
        return NULL;
}

Operand tableFindVarOp(char *name) {
    for (SkipListStack_t *cur = VarTableStack; cur; cur = cur->prev) {
        Var_info_t *var_info = SLLookup(&(cur->table), name);
        if (var_info)
            return var_info->op;
    }
    return NULL;
}

SkipListStack_t *SkipListStackNew(SkipListStack_t *prev) {
    SkipListStack_t *stack = (SkipListStack_t *)malloc(sizeof(SkipListStack_t));
    stack->prev = prev;
    SLInit(&(stack->table), SymbolTableCmp);
    return stack;
}

// SkipListStack_t *SkipListStackDelete(SkipListStack_t *stack) {
    // SkipListStack_t *prev = stack->prev;
    // SLTearDown(&(stack->table));
    // free(stack);
    // return prev;
// }

void varStackPush() {
    VarTableStack = SkipListStackNew(VarTableStack);
}

void varStackPop() {
    // VarTableStack = SkipListStackDelete(VarTableStack);
    assert(VarTableStack != NULL);
    VarTableStack = VarTableStack->prev;
}

void varStackSet(STnode_t *STnode) {
    STnode->sdti.VarTableStack = VarTableStack;
}