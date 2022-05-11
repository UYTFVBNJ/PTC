#include "IRTree.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

IRTnode_t *IRTreeNewNode(int kind) {
    IRTnode_t *IRTnode = (IRTnode_t *)malloc(sizeof(IRTnode_t));

    IRTnode->kind = kind;

    switch (kind) {
        case EXP:
            IRTnode->u.IRT_EXP_info = {};
            break;
        case COND:
            IRTnode->u.IRT_COND_info = {};
            break;
        case STMT:
            IRTnode->u.IRT_STMT_info = {};
            break;
        case IRCODE:
            IRTnode->u.IRT_IRCODE_info.code = NULL;
            break;
        default:
          assert(0);  
    }

    IRTnode->son  = NULL;
    IRTnode->next = NULL;

    return IRTnode;
}

Operand NewOperand(int kind, char *name, int value) {
    Operand operand = (Operand)malloc(sizeof(struct Operand_));
    operand->kind = kind;
    if (name) {
        strcpy(operand->name, name);
    } else {
        assert(snprintf(name, "#%d", value) < OPERAND_NAME_SIZE_MAX);
    }    
}