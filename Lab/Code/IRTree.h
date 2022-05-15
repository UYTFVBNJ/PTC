#ifndef IRTREE_H
#define IRTREE_H

#define OPERAND_NAME_SIZE_MAX 32
#define LABEL_NAME_SIZE_MAX 32

typedef struct Type_* Type;

struct Operand_ {
    enum { OP_VARIABLE, OP_CONSTANT, OP_ADDRESS } kind;
    char name[OPERAND_NAME_SIZE_MAX];
    Type type;
};

typedef struct Operand_* Operand;

// COND_NODE
typedef struct IRT_COND_t {
    enum { COND_RELOP, COND_NOT, COND_AND, COND_OR, COND_IS0 } kind;
    char *T, *F;
    int relop;
} IRT_COND_t;  


// EXP_NODE
typedef struct IRT_EXP_t {
    enum { EXP_VTOV, EXP_VTOA, EXP_DRA, EXP_REA, EXP_ADD, EXP_SUB, EXP_MUL, EXP_DIV, EXP_VAL, EXP_CALL, EXP_ARG, EXP_PARAM, EXP_READ, EXP_WRITE, EXP_DEC, EXP_COND } kind;
    // VTOV x := y  val to val biop
    // VTOA x := &y cast val to addr
    // DRA  x := *y dereference addr
    // REA *x := y  reference   addr biop
    Operand result;
    char * func_name;
    int dec_size;
    char *T, *F, *END;
} IRT_EXP_t;  

// STMT_NODE

typedef struct IRT_STMT_t {
    enum { STMT_EXP, STMT_THEN, STMT_RETURN } kind;
} IRT_STMT_t;  

// FUNC_NODE

typedef struct IRT_FUNC_t {
    char *name;
    Type type;
} IRT_FUNC_t;  



typedef struct IRTnode_t {
    enum { IRT_EXP, IRT_COND, IRT_STMT, IRT_FUNC } kind;
    // table
    union {
        IRT_COND_t irt_cond;
        IRT_EXP_t  irt_exp;
        IRT_STMT_t irt_stmt;
        IRT_FUNC_t irt_func;
    } u;

    char *label_head;
    char *label_tail;
    char *goto_label;

    struct IRTnode_t *son[4];
} IRTnode_t;

// use function to init, won't lost any field
// STnode_t *STreeNewNode(ti, sdti, son, next, symbol, first_line); force you to fill every field
IRTnode_t *IRTreeNewNode(int kind);

int type2opkind(Type type);
Operand NewOperand(int kind, int is_var, int const_value, Type type);
char *NewLabel();

IRTnode_t *IRTreeNewEXP_EXP_OP_EXP(int ret_kind, int opt_kind, IRTnode_t *IRTN0, IRTnode_t *IRTN1);
IRTnode_t *IRTreeNewEXP_OP_EXP(int ret_kind, int opt_kind, IRTnode_t *IRTN0);
IRTnode_t *IRTreeNewEXP_VAR(Operand op);
IRTnode_t *IRTreeNewEXP_CONST(int const_val);
IRTnode_t *IRTreeNewEXP_ASSIGN(IRTnode_t *IRTN0, IRTnode_t *IRTN1);
IRTnode_t *IRTreeNewEXP_CALL(char *name, IRTnode_t *IRTN);
IRTnode_t *IRTreeNewEXP_ARG(IRTnode_t *IRTN0, IRTnode_t *IRTN1);
IRTnode_t *IRTreeNewEXP_PARAM(STnode_t *STnode, FieldList fl);
IRTnode_t *IRTreeNewEXP_READ();
IRTnode_t *IRTreeNewEXP_WRITE(IRTnode_t *IRTN);
IRTnode_t *IRTreeNewEXP_DEC(IRTnode_t *IRTN, int dec_size);
IRTnode_t *IRTreeNewEXP_DRA(IRTnode_t *IRTN);
IRTnode_t *IRTreeNewEXP_COND(IRTnode_t *IRTN, char *T, char *F, char *END);

IRTnode_t *IRTreeNewCOND(IRTnode_t *IRTN, char *T, char *F);
IRTnode_t *IRTreeNewCOND_RELOP(IRTnode_t *IRTN0, IRTnode_t *IRTN1, int relop, char *T, char *F);

IRTnode_t *IRTreeNewSTMT_RETURN(IRTnode_t *IRTN);
IRTnode_t *IRTreeNewSTMT_THEN(IRTnode_t *IRTN0, IRTnode_t *IRTN1, IRTnode_t *IRTN2);

IRTnode_t *IRTreeNewFUNC(char *name, Type type, IRTnode_t *IRTN0, IRTnode_t *IRTN1);
IRTnode_t *IRTreeNewFUNC_THEN(IRTnode_t *IRTN0, IRTnode_t *IRTN1);

void IRTreeTranslate(IRTnode_t *IRTnode);

#endif