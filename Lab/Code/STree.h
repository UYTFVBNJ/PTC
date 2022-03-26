#include "Token.h"
#include "SDT.h"
#ifndef STREE
#define STREE

typedef struct STnode_t {
    token_info_t ti;
    SDT_info_t sdti;
    struct STnode_t *son, *next;
    int symbol, first_line;
} STnode_t;

#endif
