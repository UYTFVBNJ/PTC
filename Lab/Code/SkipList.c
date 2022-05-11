#include "SkipList.h"
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <stdio.h>

SkipListNode_t *tmp_LE[SkipListL];

void SLInit(SkipList_t* sl, int (*cmp)(void *a, void *b)) {
    for (int i = 0; i < SkipListL; i ++) {
        sl->header[i].key = "";
        sl->header[i].down = (i > 0) ? &(sl->header[i - 1]) : NULL;
        sl->header[i].next = NULL;
    }
    sl->cmp = cmp;
}

void SLDeleteNode(SkipListNode_t* sl_node) {
    if (sl_node->next != NULL) {
        SLDeleteNode(sl_node->next);
        free(sl_node->next);
    }
}

void SLTearDown(SkipList_t* sl) {
    for (int i = 0; i < SkipListL; i ++) {
        SLDeleteNode(&(sl->header[i]));
    }
}

SkipListNode_t* SLNewNode(char *name, void *val) {
    SkipListNode_t* p = (SkipListNode_t*)malloc(sizeof(SkipListNode_t));
    assert(p != NULL);
    p->key = name;
    p->val = val;
    p->down = NULL;
    p->next = NULL;
    return p;
}

SkipListNode_t* SLFindLE(SkipList_t* sl, char *name) {
    SkipListNode_t *p = &(sl->header[SkipListL - 1]);
    for (int i = SkipListL - 1; i >= 0; i --) {
        while (p->next && sl->cmp(p->next->key, name) <= 0) 
            p = p->next;
        tmp_LE[i] = p;
        if (i > 0) p = p->down;
    }
    return p;
}

int SLInsert(SkipList_t* sl, char *name, void *val) {
    SkipListNode_t *p = SLFindLE(sl, name);
    assert(sl->cmp(p->key, name) <= 0);
    if (sl->cmp(p->key, name) == 0) {
        // already exist
        return 0;
    }
    for (int i = 0; i < SkipListL && (i == 0 || rand() % SkipListP == 0); i ++) {
        SkipListNode_t *np = SLNewNode(name, val);   
        np->next = tmp_LE[i]->next;
        if (i > 0)
            np->down = tmp_LE[i - 1]->next;
        tmp_LE[i]->next = np; 
    }
    return 1;
}

void *SLLookup(SkipList_t* sl, char *name) {
    SkipListNode_t *p = SLFindLE(sl, name);
    if (sl->cmp(p->key, name) == 0)
        return p->val;
    else 
        return NULL;
}
