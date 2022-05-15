#include "SkipList.h"
#include "STree.h"
#include "IRTree.h"
#include "Type.h"
#ifndef SYMBOLTABLES_H
#define SYMBOLTABLES_H

typedef struct SkipListStack_t {
    SkipList_t table;
    struct SkipListStack_t *prev;
} SkipListStack_t;

void initSymbolTables();

void tableAddStruct(char *name, Type type);
Type tableFindStruct(char *name);

void tableAddFunc(char *name, Type type);
Type tableFindFunc(char *name);
SkipListNode_t *tableGetFuncList();

void tableAddVar(char *name, Type type);
Type tableFindVar(char *name);
Type tableFindCurrVar(char *name);

Operand tableFindVarOp(STnode_t *STnode, char *name);

void varStackPush();
void varStackPop();
void varStackSet(STnode_t *STnode);

#endif