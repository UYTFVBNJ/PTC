#include "Type.h"
#include "Token.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

struct Type_ type_int_ = {
    .kind = BASIC, 
    .u.basic = TYPE_INT,
};
const Type type_int = &type_int_;

struct Type_ type_float_ = {
    .kind = BASIC, 
    .u.basic = TYPE_FLOAT,
};
const Type type_float = &type_float_;

struct Type_ type_noneargs_ = {
    .kind = ARGS, 
    .u.structure = NULL,
};
const Type type_noneargs = &type_noneargs_;



Type TypeNew(int kind, int declineno, int deflineno) {
    Type type = (Type)malloc(sizeof(struct Type_));
    type->kind = kind;
    type->declineno = declineno;
    type->deflineno = deflineno;

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
}

Type FieldListFind(char *name, FieldList list) {
    for (; list; list = list->tail) {
        if (strcmp(name, list->name) == 0)
            return list->type;
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
    switch (a->kind) {
        case BASIC:
            return a->u.basic == b->u.basic;
        case ARRAY:
            return a->u.array.size == b->u.array.size && isSameType(a->u.array.elem, b->u.array.elem);
        case STRUCTURE:
            return isSameField(a->u.structure, b->u.structure);
        case ARGS:
            return isSameField(a->u.structure, b->u.structure);
        case FUNCTION:
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