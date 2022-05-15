#include "SymbolTables.h"
#include "IRTree.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

SkipListStack_t *SkipListStackNew(SkipListStack_t *prev);

int sdt_is_param = 0;

// read
extern Type type_read;
extern Type type_write;

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
    tableAddFunc("read", type_read);
    tableAddFunc("write", type_write);

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


Operand NewVarOperand(Type type) {
    // if (is_param)
        // return NewOperand(type2opkind(type), 1, 1, type);
    // else    
        return NewOperand(type2opkind(type), 1, sdt_is_param, type);
}

void tableAddVar(char *name, Type type) {
    SLInsert(&(VarTableStack->table), name, NewVarOperand(type));
}

Type tableFindVar(char *name) {
    for (SkipListStack_t *cur = VarTableStack; cur; cur = cur->prev) {
        Operand op = SLLookup(&(cur->table), name);
        if (op)
            return op->type;
    }
    return NULL;
}

Type tableFindCurrVar(char *name) {
    Operand op = SLLookup(&(VarTableStack->table), name);
    if (op)
        return op->type;
    else 
        return NULL;
}

Operand tableFindVarOp(STnode_t *STnode, char *name) {
    for (SkipListStack_t *cur = STnode->sdti.VarTableStack; cur; cur = cur->prev) {
        Operand op = SLLookup(&(cur->table), name);
        if (op)
            return op;
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