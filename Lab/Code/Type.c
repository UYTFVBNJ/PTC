#include "Type.h"
#include "Token.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

struct Type_ type_int_ = {
    .kind = BASIC, 
    .size = 4,
    .u.basic = TYPE_INT,
};
Type type_int = &type_int_;

struct Type_ type_float_ = {
    .kind = BASIC, 
    .size = -1,
    .u.basic = TYPE_FLOAT,
};
Type type_float = &type_float_;

struct Type_ type_noneargs_ = {
    .kind = ARGS, 
    .size = -1,
    .u.structure = NULL,
};
Type type_noneargs = &type_noneargs_;


struct FieldList_ fl_argint_ = {
    .name = "input",
    .type = &type_int_,
    .offset = 0,
    .tail = NULL,
};

struct Type_ type_argint_ = {
    .kind = ARGS, 
    .size = -1,
    .u.structure = &fl_argint_,
};
Type type_argint = &type_argint_;

struct Type_ type_read_ = {
    .kind = FUNCTION, 
    .size = -1,
    .u.function.name = "read",
    .u.function.args = &type_noneargs_,
    .u.function.ret = &type_int_,

};
Type type_read = &type_read_;

struct Type_ type_write_ = {
    .kind = FUNCTION, 
    .size = -1,
    .u.function.name = "write",
    .u.function.args = &type_argint_,
    .u.function.ret = &type_int_,

};
Type type_write = &type_write_;



Type TypeNew(int kind, int declineno, int deflineno) {
    Type type = (Type)malloc(sizeof(struct Type_));
    type->kind = kind;
    type->declineno = declineno;
    type->deflineno = deflineno;
    type->size = -1;

    switch (kind) {
        case BASIC:
            break;
        case ARRAY:
            type->u.array.elem = NULL;
            type->u.array.size = -1;
            break;
        case STRUCTURE:
            type->u.structure = NULL;
            break;
        case ARGS:
            type->u.structure = NULL;
            break;   
        case FUNCTION:
            type->u.function.name = NULL;
            type->u.function.args = NULL;
            type->u.function.ret = NULL;
            type->u.function.addedVar = 0;
            break;
        default:
            assert(0);
    }
}

FieldList FieldListNew(char *name, Type type, FieldList tail) {
    FieldList field = (FieldList)malloc(sizeof(struct FieldList_));
    field->name = name;
    field->type = type;
    field->tail = tail;
    field->offset = tail ? tail->offset + tail->type->size : 0;
}

FieldList FieldListFind(char *name, FieldList list) {
    for (; list; list = list->tail) {
        if (strcmp(name, list->name) == 0)
            return list;
    }
    return NULL;
}

int isSameType(Type a, Type b) {
    if (!a || !b) 
        return 0;
    if (a == b)
        return 1;
    if (a->kind != b->kind)
        return 0;
    // cannot use size to distinguish, as int a[10] and int b[50] are equal   
    switch (a->kind) {
        case BASIC:
            return a->u.basic == b->u.basic;
        case ARRAY:
            return isSameType(a->u.array.elem, b->u.array.elem);
        case STRUCTURE:
            return isSameField(a->u.structure, b->u.structure);
        case ARGS:
            return isSameField(a->u.structure, b->u.structure);
        case FUNCTION:
            return isSameType(a->u.function.args, b->u.function.args) && isSameType(a->u.function.ret, b->u.function.ret);
        default:
            assert(0);
    }
}

int isSameField(FieldList a, FieldList b) {
    while (a && b) {
        if (!isSameType(a->type, b->type))
            return 0;
        a = a->tail;
        b = b->tail;
    }
    return a == NULL && b == NULL;
}