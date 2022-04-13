#include "Type.h"

#ifndef SKIPLIST_H
#define SKIPLIST_H

#define SkipListP 4
#define SkipListL 15
typedef struct SkipListNode_t {
    struct SkipListNode_t *down, *next;
    char *key;
    Type type;
} SkipListNode_t;

typedef struct SkipList_t {
    SkipListNode_t header[SkipListL];
} SkipList_t;




void SLInit(SkipList_t* sl);
void SLTearDown(SkipList_t* sl);
int SLInsert(SkipList_t* sl, char *name, Type type);
Type SLLookup(SkipList_t* sl, char *name);


#endif