#include "Reg.h"
#include "STree.h"
#include "IRTree.h"
#include "Type.h"
#include "Token.h"
#include "SymbolTables.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

extern Type type_int, type_float, type_noneargs;

// IRTree

IRTnode_t *IRTreeNewNode(int kind) {
    IRTnode_t *IRTnode = (IRTnode_t *)malloc(sizeof(IRTnode_t));

    IRTnode->kind = kind;

    switch (kind) {
        case IRT_EXP:
            IRTnode->u.irt_exp.kind = 0;
            IRTnode->u.irt_exp.result = NULL;
            IRTnode->u.irt_exp.func_name = NULL;
            IRTnode->u.irt_exp.dec_size = 0;
            IRTnode->u.irt_exp.T = NULL;
            IRTnode->u.irt_exp.F = NULL;
            IRTnode->u.irt_exp.END = NULL;
            break;
        case IRT_COND:
            IRTnode->u.irt_cond.kind = 0;
            IRTnode->u.irt_cond.T = NULL;
            IRTnode->u.irt_cond.F = NULL;
            IRTnode->u.irt_cond.relop = 0;
            break;
        case IRT_STMT:
            IRTnode->u.irt_stmt.kind = 0;
            break;
        case IRT_FUNC:
            IRTnode->u.irt_func.name = NULL;
            IRTnode->u.irt_func.type = NULL;
            IRTnode->u.irt_func.func_offset = -1;
            break;
        default:
          assert(0);  
    }

    for (int i = 0; i < 4; i ++) IRTnode->son[i] = NULL;

    return IRTnode;
}


// Operand

int type2opkind(Type type) {
    switch (type->kind) {
        case BASIC:
            return OP_VARIABLE;
            break;
        case ARRAY:
            return OP_ADDRESS;
            break;
        case STRUCTURE:
            return OP_ADDRESS;
            break;
        default:
            assert(0);
    }
}



void NewVarOperandName(char *varop_name, int is_address) {
    static int varop_cnt = 0;
    if (is_address)
        assert(snprintf(varop_name, OPERAND_NAME_SIZE_MAX, "&v%d", varop_cnt++) < OPERAND_NAME_SIZE_MAX);
    else 
        assert(snprintf(varop_name, OPERAND_NAME_SIZE_MAX, "v%d", varop_cnt++) < OPERAND_NAME_SIZE_MAX);
}

void NewTmpOperandName(char *tmpop_name) {
    static int tmpop_cnt = 0;
    assert(snprintf(tmpop_name, OPERAND_NAME_SIZE_MAX, "t%d", tmpop_cnt++) < OPERAND_NAME_SIZE_MAX);
}

Operand NewOperand(int kind, int is_var, int const_value, Type type) {
    Operand operand = (Operand)malloc(sizeof(struct Operand_));
    
    operand->kind = kind;
    operand->type = type;
    operand->offset = -1;

    if (kind == OP_CONSTANT) {
        assert(snprintf(operand->name, OPERAND_NAME_SIZE_MAX, "#%d", const_value) < OPERAND_NAME_SIZE_MAX);
    } else {
        if (is_var) {
            NewVarOperandName(operand->name, kind == OP_ADDRESS && const_value == 0);
        } else {
            NewTmpOperandName(operand->name);
        }    
    }

    return operand;
}

char *NewLabel() {
    static int label_cnt = 0;
    char *label = (char *)malloc(sizeof(char) * LABEL_NAME_SIZE_MAX);
    assert(snprintf(label, LABEL_NAME_SIZE_MAX, "label%d", label_cnt++) < LABEL_NAME_SIZE_MAX);
    return label;
}   

// Exp constructors

IRTnode_t *IRTreeNewEXP_EXP_OP_EXP(int ret_kind, int opt_kind, IRTnode_t *IRTN0, IRTnode_t *IRTN1) {
    // TODO: search for existing operand
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    Operand result = NULL;
    if (opt_kind != EXP_VTOV && opt_kind != EXP_DRA && opt_kind != EXP_PARAM && opt_kind != EXP_WRITE && opt_kind != EXP_DEC) 
        result = NewOperand(ret_kind, 0, 0, type_int);
    if (opt_kind == EXP_VTOV)    
        result = IRTN0->u.irt_exp.result;
    IRTnode->u.irt_exp.kind = opt_kind;
    IRTnode->u.irt_exp.result = result;
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_OP_EXP(int ret_kind, int opt_kind, IRTnode_t *IRTN0) {
    // TODO: search for existing operand
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    Operand result = NewOperand(ret_kind, 0, 0, type_int);
    IRTnode->u.irt_exp.kind = opt_kind;
    IRTnode->u.irt_exp.result = result;
    IRTnode->son[0] = IRTN0;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_VAR(Operand op) {
    // TODO: search for existing operand
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_VAL;
    IRTnode->u.irt_exp.result = op;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_CONST(int const_val) {
    // TODO: search for existing operand
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_VAL;
    IRTnode->u.irt_exp.result = NewOperand(OP_CONSTANT, 0, const_val, type_int);
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_ASSIGN(IRTnode_t *IRTN0, IRTnode_t *IRTN1) {
    if (IRTN0->u.irt_exp.result->type->kind != BASIC) {
        // TODO: array ASSIGNMENT !!!
        assert(0);
    } else {
        // 假设左边一定是数组或者变量
        if (IRTN0->u.irt_exp.result->kind == OP_ADDRESS && IRTN1->u.irt_exp.result->kind == OP_ADDRESS) {
            // IRTnode_t *IRTnode;
            // IRTnode = IRTreeNewEXP_OP_EXP(OP_VARIABLE, EXP_DRA, IRTN1);
            // IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_REA, IRTN0, IRTnode);
            // return IRTnode; 
            assert(0);
        } else 
        if (IRTN0->u.irt_exp.result->kind == OP_ADDRESS && IRTN1->u.irt_exp.result->kind != OP_ADDRESS) {
            // return IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_REA, IRTN0, IRTN1); 
            assert(0);
        } else 
        if (IRTN0->u.irt_exp.result->kind == OP_VARIABLE && IRTN1->u.irt_exp.result->kind == OP_ADDRESS) {
            // IRTnode_t *IRTnode;
            // IRTnode = IRTreeNewEXP_OP_EXP(OP_VARIABLE, EXP_DRA, IRTN1);
            // IRTnode = IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_VTOV, IRTN0, IRTnode);
            // return IRTnode; 
            assert(0);
        } else 
        if (IRTN0->u.irt_exp.result->kind == OP_VARIABLE && IRTN1->u.irt_exp.result->kind != OP_ADDRESS) {
            return IRTreeNewEXP_EXP_OP_EXP(OP_VARIABLE, EXP_VTOV, IRTN0, IRTN1); 
        }
    }
    assert(0);
}

IRTnode_t *IRTreeNewEXP_CALL(char *name, IRTnode_t *IRTN) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_CALL;
    IRTnode->u.irt_exp.result = NewOperand(OP_VARIABLE, 0, 0, type_int); // L3 假设5
    IRTnode->u.irt_exp.func_name = name;
    IRTnode->son[0] = IRTN;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_ARG(IRTnode_t *IRTN0, IRTnode_t *IRTN1) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_ARG;
    IRTnode->u.irt_exp.result = IRTN0->u.irt_exp.result;
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_PARAM(STnode_t *STnode, FieldList fl) {
    if (fl == NULL) return NULL;
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_PARAM;
    IRTnode->u.irt_exp.result = tableFindVarOp(STnode, fl->name);
    IRTnode->son[0] = IRTreeNewEXP_PARAM(STnode, fl->tail);
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_READ() {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_READ;
    IRTnode->u.irt_exp.result = NewOperand(OP_VARIABLE, 0, 0, type_int);
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_WRITE(IRTnode_t *IRTN) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_WRITE;
    IRTnode->u.irt_exp.result = NewOperand(OP_VARIABLE, 0, 0, type_int);
    IRTnode->son[0] = IRTN;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_DEC(IRTnode_t *IRTN, int dec_size) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_DEC;
    IRTnode->u.irt_exp.result = NULL;
    IRTnode->u.irt_exp.dec_size = dec_size;
    IRTnode->son[0] = IRTN;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_DRA(IRTnode_t *IRTN) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_DRA;
    IRTnode->u.irt_exp.result = NewOperand(OP_VARIABLE, 0, 0, type_int); 
    assert(snprintf(IRTnode->u.irt_exp.result->name, OPERAND_NAME_SIZE_MAX, "*%s", IRTN->u.irt_exp.result->name) < OPERAND_NAME_SIZE_MAX);
    IRTnode->son[0] = IRTN;
    return IRTnode;
}

IRTnode_t *IRTreeNewEXP_COND(IRTnode_t *IRTN, char *T, char *F, char *END) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_EXP);
    IRTnode->u.irt_exp.kind = EXP_COND;
    IRTnode->u.irt_exp.result = NewOperand(OP_VARIABLE, 0, 0, type_int); 
    IRTnode->u.irt_exp.T = T;
    IRTnode->u.irt_exp.F = F;
    IRTnode->u.irt_exp.END = END;
    IRTnode->son[0] = IRTN;
    return IRTnode;
}
// Cond constructors

IRTnode_t *IRTreeNewCOND(IRTnode_t *IRTN, char *T, char *F) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_COND);

    assert(T);
    IRTnode->u.irt_cond.T = T;
    IRTnode->u.irt_cond.F = F;
    return IRTnode;
}

IRTnode_t *IRTreeNewCOND_RELOP(IRTnode_t *IRTN0, IRTnode_t *IRTN1, int relop, char *T, char *F) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_COND); 
    IRTnode->u.irt_cond.relop = relop;
    assert(T);
    IRTnode->u.irt_cond.T = T;
    IRTnode->u.irt_cond.F = F;
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    return IRTnode;
}

// Stmt constructors


IRTnode_t *IRTreeNewSTMT_RETURN(IRTnode_t *IRTN) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_STMT);
    IRTnode->u.irt_stmt.kind = STMT_RETURN;
    IRTnode->son[0] = IRTN;
    return IRTnode;
}

IRTnode_t *IRTreeNewSTMT_THEN(IRTnode_t *IRTN0, IRTnode_t *IRTN1, IRTnode_t *IRTN2) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_STMT);
    IRTnode->u.irt_stmt.kind = STMT_THEN;
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    IRTnode->son[2] = IRTN2;
    return IRTnode;
}


// Func constructors
IRTnode_t *IRTreeNewFUNC(char *name, Type type, IRTnode_t *IRTN0, IRTnode_t *IRTN1) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_FUNC);
    IRTnode->u.irt_func.name = name;
    IRTnode->u.irt_func.type = type;
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    return IRTnode;
}

IRTnode_t *IRTreeNewFUNC_THEN(IRTnode_t *IRTN0, IRTnode_t *IRTN1) {
    IRTnode_t *IRTnode = IRTreeNewNode(IRT_FUNC);
    IRTnode->son[0] = IRTN0;
    IRTnode->son[1] = IRTN1;
    return IRTnode;
}

// Translate to IR

void IRTreeTranslateEXP(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_exp.kind == EXP_VAL) 
        return ;
    
    switch (IRTnode->u.irt_exp.kind) {
        case EXP_VTOV:
            printf("%s := %s\n", IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_DRA:
            // assert(IRTnode->son[1] == NULL);
            // printf("%s := *%s\n", IRTnode->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_ADD:
            printf("%s := %s + %s\n", IRTnode->u.irt_exp.result->name, IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_SUB:
            printf("%s := %s - %s\n", IRTnode->u.irt_exp.result->name, IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_MUL:
            printf("%s := %s * %s\n", IRTnode->u.irt_exp.result->name, IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_DIV:
            printf("%s := %s / %s\n", IRTnode->u.irt_exp.result->name, IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name);
            break;
        case EXP_CALL:
            printf("%s := CALL %s\n", IRTnode->u.irt_exp.result->name, IRTnode->u.irt_exp.func_name);
            break;
        case EXP_ARG:
            // if (IRTnode->u.irt_exp.result->kind == OP_ADDRESS) 
                // printf("ARG %s\n", IRTnode->u.irt_exp.result->name + 1);
            // else    
                printf("ARG %s\n", IRTnode->u.irt_exp.result->name);
            break;
        case EXP_PARAM:
            // if (IRTnode->u.irt_exp.result->kind == OP_ADDRESS) 
                // printf("PARAM %s\n", IRTnode->u.irt_exp.result->name + 1);
            // else    
                // printf("PARAM %s\n", IRTnode->u.irt_exp.result->name);
            break;
        case EXP_READ:
            printf("READ %s\n", IRTnode->u.irt_exp.result->name);
            break;
        case EXP_WRITE:
            printf("WRITE %s\n", IRTnode->son[0]->u.irt_exp.result->name);
            printf("%s := #0\n", IRTnode->u.irt_exp.result->name);
            break;
        case EXP_DEC:
            printf("DEC %s %d\n", (IRTnode->son[0]->u.irt_exp.result->name) + 1, IRTnode->u.irt_exp.dec_size);
            break;
        case EXP_COND:
            printf("LABEL %s :\n", IRTnode->u.irt_exp.T);
            printf("%s := #1\n", IRTnode->u.irt_exp.result->name);
            printf("GOTO %s\n", IRTnode->u.irt_exp.END);
            printf("LABEL %s :\n", IRTnode->u.irt_exp.F);
            printf("%s := #0\n", IRTnode->u.irt_exp.result->name);
            printf("LABEL %s :\n", IRTnode->u.irt_exp.END);
            break;
        default:
            assert(0);
    }
 }
 
void IRTreeTranslateSTMT(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_stmt.kind == STMT_RETURN) {
        printf("RETURN %s\n", IRTnode->son[0]->u.irt_exp.result->name);
    }
}

void IRTreeTranslateCOND(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_cond.kind == COND_RELOP) {
        char *op;
        switch (IRTnode->u.irt_cond.relop) {
            case RELOP_EQ:
                op = "==";
                break;
            case RELOP_NE:
                op = "!=";
                break;
            case RELOP_LT:
                op = "<";
                break;
            case RELOP_LE:
                op = "<=";
                break;
            case RELOP_GT:
                op = ">";
                break;
            case RELOP_GE:
                op = ">=";
                break;
            default:
                assert(0);
        }
        printf("IF %s %s %s GOTO %s\n", IRTnode->son[0]->u.irt_exp.result->name, op, IRTnode->son[1]->u.irt_exp.result->name, IRTnode->u.irt_cond.T);
        printf("GOTO %s\n", IRTnode->u.irt_cond.F);
    }
    if (IRTnode->u.irt_cond.kind == COND_IS0) {
        printf("IF %s != %s GOTO %s\n", IRTnode->son[0]->u.irt_exp.result->name, IRTnode->son[1]->u.irt_exp.result->name, IRTnode->u.irt_cond.T);
        printf("GOTO %s\n", IRTnode->u.irt_cond.F);
    }
}

// void PARAMprinter(FieldList params) {
    // if (params == NULL)
        // return ;
    // printf("%s ", params->name);
    // PARAMprinter(params->tail);
// }

void IRTreeTranslateFUNC(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_func.type) {
        printf("FUNCTION %s :\n", IRTnode->u.irt_func.name);
        // PARAMprinter(IRTnode->u.irt_func.type->u.function.ret->u.structure);
    }
}

void IRTreeTranslate(IRTnode_t *IRTnode) {
    if (IRTnode == NULL) {
        return ;
    }
    
    // printf("IRTreeTranslate %p\n", IRTnode);
    // printf("IRTreeTranslate %d\n", IRTnode->kind);

    if (IRTnode->label_head)
        printf("LABEL %s :\n", IRTnode->label_head);

    if (IRTnode->kind == IRT_FUNC) {
        IRTreeTranslateFUNC(IRTnode);
    }
    if (IRTnode->kind == IRT_EXP && IRTnode->u.irt_exp.kind == EXP_PARAM) {
        printf("PARAM %s\n", IRTnode->u.irt_exp.result->name);
    }

    for (int i = 0; i < 4; i++) if (IRTnode->son[i] != NULL)
        IRTreeTranslate(IRTnode->son[i]);

    switch (IRTnode->kind) {
        case IRT_EXP:
            IRTreeTranslateEXP(IRTnode);
            break;
        case IRT_STMT:
            IRTreeTranslateSTMT(IRTnode);
            break;
        case IRT_COND:
            IRTreeTranslateCOND(IRTnode);
            break;
        case IRT_FUNC:
            break;
        default:
            assert(0);
    }

    if (IRTnode->goto_label)
        printf("GOTO %s\n", IRTnode->goto_label);

    if (IRTnode->label_tail)
        printf("LABEL %s :\n", IRTnode->label_tail);
}

static int offset;
static int arg_offset;
static int func_offset;
void IRTreeCalOffset(IRTnode_t *IRTnode) {
    // printf("CalOffset\n");
    if (IRTnode == NULL) {
        return ;
    }
    
    // printf("IRTreeTranslate %p\n", IRTnode);
    // printf("IRTreeTranslate %d\n", IRTnode->kind);

    if (IRTnode->kind == IRT_FUNC) {
        func_offset = 0;
        offset = 4;
    }

    for (int i = 0; i < 4; i++) if (IRTnode->son[i] != NULL)
        IRTreeCalOffset(IRTnode->son[i]);

    switch (IRTnode->kind) {
        case IRT_EXP:
            if (IRTnode->u.irt_exp.kind == EXP_DEC) {
                IRTnode->son[0]->u.irt_exp.result->offset = offset;
                offset += IRTnode->u.irt_exp.dec_size + 4;
            } else if (IRTnode->u.irt_exp.result->offset == -1) {
                switch (IRTnode->u.irt_exp.result->name[0]) {
                case '#':
                    break;
                case '*':
                    IRTnode->u.irt_exp.result->offset = IRTnode->son[0]->u.irt_exp.result->offset;
                    // printf("%s %d\n", IRTnode->u.irt_exp.result->name, IRTnode->u.irt_exp.result->offset);
                    break;
                default:
                    IRTnode->u.irt_exp.result->offset = offset;
                    // printf("%s %d\n", IRTnode->u.irt_exp.result->name, IRTnode->u.irt_exp.result->offset);
                    offset += 4;
                    break;
                }
            }
            break;
        case IRT_STMT:
            break;
        case IRT_COND:
            break;
        case IRT_FUNC:
            IRTnode->u.irt_func.func_offset = offset;
            break;
        default:
            assert(0);
    }
}

void IRTreeRewriteEXP(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_exp.kind == EXP_VAL) 
        return ;
    
    // printf("RewriteEXP %d\n", IRTnode->u.irt_exp.kind);
    switch (IRTnode->u.irt_exp.kind) {
        case EXP_VTOV:
            LReg(IRTnode->son[1]->u.irt_exp.result, 1);
            printf("  move $t0, $t1\n");
            SReg(IRTnode->son[0]->u.irt_exp.result, 0);
            break;
        case EXP_DRA:
            break;
        case EXP_ADD:
            LReg(IRTnode->son[0]->u.irt_exp.result, 1);
            LReg(IRTnode->son[1]->u.irt_exp.result, 2);
            printf("  add $t0, $t1, $t2\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_SUB:
            LReg(IRTnode->son[0]->u.irt_exp.result, 1);
            LReg(IRTnode->son[1]->u.irt_exp.result, 2);
            printf("  sub $t0, $t1, $t2\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_MUL:
            LReg(IRTnode->son[0]->u.irt_exp.result, 1);
            LReg(IRTnode->son[1]->u.irt_exp.result, 2);
            printf("  mulo $t0, $t1, $t2\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_DIV:
            LReg(IRTnode->son[0]->u.irt_exp.result, 1);
            LReg(IRTnode->son[1]->u.irt_exp.result, 2);
            printf("  div $t0, $t1, $t2\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_CALL:
            arg_offset = 0;
            printf("  sub $sp, $sp, %d\n", func_offset);
            if (strcmp(IRTnode->u.irt_exp.func_name, "main") == 0) {
                printf("  jal %s\n", IRTnode->u.irt_exp.func_name);
            } else {
                printf("  jal func_%s\n", IRTnode->u.irt_exp.func_name);
            }
            printf("  add $sp, $sp, %d\n", func_offset);
            printf("  move $t0, $v0\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_ARG:
            // if (IRTnode->u.irt_exp.result->kind == OP_ADDRESS) 
                // printf("ARG %s\n", IRTnode->u.irt_exp.result->name + 1);
            // else    
            LReg(IRTnode->u.irt_exp.result, 1);
            printf("  sw $t1, %d($sp)\n", -(func_offset + 4 + arg_offset));
            arg_offset += 4;
            break;
        case EXP_PARAM:
            break;
        case EXP_READ:
            printf("  li $v0, 5\n");
            printf("  syscall\n");
            
            printf("  move $t0, $v0\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_WRITE:
            LReg(IRTnode->son[0]->u.irt_exp.result, 1);
            printf("  li $v0, 1\n");
            printf("  move $a0, $t1\n");
            printf("  syscall\n");
            
            printf("  li $v0, 4\n");
            printf("  la $a0, _ret\n");
            printf("  syscall\n");
            
            printf("  li $t0, 0\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            break;
        case EXP_DEC:
            printf("  sub $t0, $sp, %d\n", IRTnode->son[0]->u.irt_exp.result->offset + IRTnode->u.irt_exp.dec_size);
            SReg(IRTnode->son[0]->u.irt_exp.result, 0);
            break;
        case EXP_COND:
            printf("%s:\n", IRTnode->u.irt_exp.T);
            printf("  li $t0, 1\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            printf("  b %s\n", IRTnode->u.irt_exp.END);
            printf("%s:\n", IRTnode->u.irt_exp.F);
            printf("  li $t0, 0\n");
            SReg(IRTnode->u.irt_exp.result, 0);
            printf("%s:\n", IRTnode->u.irt_exp.END);
            break;
        default:
            assert(0);
    }
 }
 
void IRTreeRewriteSTMT(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_stmt.kind == STMT_RETURN) {
        LReg(IRTnode->son[0]->u.irt_exp.result, 1);
        printf("  move $v0, $t1\n");
        printf("  lw $ra, 0($sp)\n");
        printf("  jr $ra\n");
    }
}

void IRTreeRewriteCOND(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_cond.kind == COND_RELOP) {
        char *op;
        switch (IRTnode->u.irt_cond.relop) {
            case RELOP_EQ:
                op = "beq";
                break;
            case RELOP_NE:
                op = "bne";
                break;
            case RELOP_LT:
                op = "blt";
                break;
            case RELOP_LE:
                op = "ble";
                break;
            case RELOP_GT:
                op = "bgt";
                break;
            case RELOP_GE:
                op = "bge";
                break;
            default:
                assert(0);
        }

        LReg(IRTnode->son[0]->u.irt_exp.result, 1);
        LReg(IRTnode->son[1]->u.irt_exp.result, 2);
        printf("  %s $t1, $t2, %s\n", op, IRTnode->u.irt_cond.T);
        printf("  b %s\n", IRTnode->u.irt_cond.F);
    }
    if (IRTnode->u.irt_cond.kind == COND_IS0) {
        LReg(IRTnode->son[0]->u.irt_exp.result, 1);
        printf("  beqz $t1, %s\n", IRTnode->u.irt_cond.F);
        printf("  b %s\n", IRTnode->u.irt_cond.T);
    }
}

void IRTreeRewriteFUNC(IRTnode_t *IRTnode) {
    if (IRTnode->u.irt_func.type) {
        func_offset = IRTnode->u.irt_func.func_offset;
        if (strcmp(IRTnode->u.irt_func.name, "main") == 0) {
            printf("%s:\n", IRTnode->u.irt_func.name);
        } else {
            printf("func_%s:\n", IRTnode->u.irt_func.name);
        }
        printf("  sw $ra, 0($sp)\n");
    }
}

void IRTreeRewrite(IRTnode_t *IRTnode) {
    // printf("Rewrite\n");
    if (IRTnode == NULL) {
        return ;
    }
    
    // printf("IRTreeTranslate %p\n", IRTnode);
    // printf("IRTreeRewrite %d\n", IRTnode->kind);

    if (IRTnode->label_head)
        printf("%s:\n", IRTnode->label_head);

    if (IRTnode->kind == IRT_FUNC) {
        IRTreeRewriteFUNC(IRTnode);
    }

    for (int i = 0; i < 4; i++) if (IRTnode->son[i] != NULL)
        IRTreeRewrite(IRTnode->son[i]);

    switch (IRTnode->kind) {
        case IRT_EXP:
            IRTreeRewriteEXP(IRTnode);
            break;
        case IRT_STMT:
            IRTreeRewriteSTMT(IRTnode);
            break;
        case IRT_COND:
            IRTreeRewriteCOND(IRTnode);
            break;
        case IRT_FUNC:
            break;
        default:
            assert(0);
    }

    if (IRTnode->goto_label)
        printf("  b %s\n", IRTnode->goto_label);

    if (IRTnode->label_tail)
        printf("%s:\n", IRTnode->label_tail);
}

