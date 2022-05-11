#include "Type.h"

#ifndef SKIPLIST_H
#define SKIPLIST_H

#define SkipListP 4
#define SkipListL 15
typedef struct SkipListNode_t {
    struct SkipListNode_t *down, *next;
    void *key;
    void *val;
} SkipListNode_t;

typedef struct SkipList_t {
    SkipListNode_t header[SkipListL];
    int (*cmp)(void *a, void *b);
} SkipList_t;



void SLInit(SkipList_t* sl, int (*cmp)(void *a, void *b));
void SLTearDown(SkipList_t* sl);
int SLInsert(SkipList_t* sl, char *name, void *val);
void *SLLookup(SkipList_t* sl, char *name);

#endif