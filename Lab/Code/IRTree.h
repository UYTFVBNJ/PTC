#ifndef IRTREE_H
#define IRTREE_H

#define OPERAND_NAME_SIZE_MAX 32

struct Operand_ {
    enum { VARIABLE, CONSTANT, ADDRESS } kind;
    char name[OPERAND_NAME_SIZE_MAX];
};

typedef struct Operand_* Operand;

// COND_NODE
typedef struct IRT_COND_t {
    enum { RELOP, NOT, AND, OR } kind;
    union {
        struct { Operand result, op1; } oneop;
        struct { Operand result, op1, op2; } binop;
    } u;
} IRT_COND_t;  


// EXP_NODE
typedef struct IRT_EXP_t {
    enum { ASSIGN, ADD, SUB, MUL, DIV, VAL } kind;
    enum { VTOV, VTOA, DRA, REA } assign_kind;
    // VTOV x := y  val to val
    // VTOA x := &y cast val to addr
    // DRA  x := *y dereference addr
    // REA *x := y  reference   addr
    Operand result;
    Operand op1, op2;
    int is_ircode_gen;
    int is_address; // TODO
} IRT_EXP_t;  

// STMT_NODE

typedef struct IRT_STMT_t {
    enum { EXP, COMPST, RETURN, IF, IF_ELSE, WHILE } kind;
    union {
        struct {  } EXP;
        struct { TABLE; } COMPST;
        struct {  } RETURN;
        struct {  } CONTROL;
    } u;
} IRT_STMT_t;  

// FUNC_NODE

typedef struct IRT_FUNC_t {
    union {
    } u;
} IRT_FUNC_t;  



typedef struct IRTnode_t {
    enum { EXP, COND, STMT, FUNC } kind;

    union {
        IRT_COND_t irt_cond;
        IRT_EXP_t irt_exp;
        IRT_STMT_t irt stmt;
        IRT_FUNC_t irt_func;
    } u;

    struct IRTnode_t son[10];
} IRTnode_t;

// use function to init, won't lost any field
// STnode_t *STreeNewNode(ti, sdti, son, next, symbol, first_line); force you to fill every field
IRTnode_t *IRTreeNewNode(int kind);
Operand NewOperand(int kind, char *name, int value);


#endif