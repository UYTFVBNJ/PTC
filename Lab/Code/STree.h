#include "Token.h"
#include "SDT.h"
#include "Type.h"
#ifndef STREE_H
#define STREE_H

typedef struct STnode_t {
    token_info_t ti;
    SDT_info_t sdti;
    void (*SDT_handler)(struct STnode_t *STnode, struct STnode_t *Fa);
    void (*SDTIR_handler)(struct STnode_t *STnode, struct STnode_t *Fa);

    struct STnode_t *son, *next;
    int symbol, first_line;
} STnode_t;

// use function to init, won't lost any field
// STnode_t *STreeNewNode(ti, sdti, son, next, symbol, first_line); force you to fill every field
STnode_t *STreeNewNode();

#endif
