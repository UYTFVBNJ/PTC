#include "STree.h"
#include <stdlib.h>

STnode_t *STreeNewNode() {
    STnode_t *STnode = (STnode_t *)malloc(sizeof(STnode_t));

    STnode->sdti.type = NULL;
    STnode->sdti.islval = 0;

    STnode->son = NULL;
    STnode->next = NULL;
    STnode->symbol = 0;
    STnode->first_line = 0;

    return STnode;
}