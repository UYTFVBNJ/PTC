#include "SkipList.h"
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

void tableAddVar(char *name, Type type);
Type tableFindVar(char *name);

void varStackPush();
void varStackPop();

#endif