#include "Reg.h"
#include <stdio.h>

void LReg(Operand op, int reg_num) {
    switch (op->name[0]) {
        case '*':
            printf("  lw $t%d, %d($sp)\n", reg_num, -op->offset);
            printf("  lw $t%d, 0($t%d)\n", reg_num, reg_num);
            break;
        case '#':
            printf("  li $t%d, %s\n", reg_num, op->name + 1);
            break;
        default:
            printf("  lw $t%d, %d($sp)\n", reg_num, -op->offset);
            break;
    }
}

void SReg(Operand op, int reg_num) {
    switch (op->name[0]) {
        case '*':
            printf("  lw $s0, %d($sp)\n", -op->offset);
            printf("  sw $t%d, 0($s0)\n", reg_num);
            break;
        default:
            printf("  sw $t%d, %d($sp)\n", reg_num, -op->offset);
            break;
    }
}