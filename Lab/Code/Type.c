#include "Type.h"
#include "Token.h"
#include <stdlib.h>

const struct Type_ type_int_ = {
    .kind = BASIC, 
    .u.basic = TYPE_INT,
};
const Type type_int = &type_int_;

const struct Type_ type_float_ = {
    .kind = BASIC, 
    .u.basic = TYPE_FLOAT,
};
const Type type_float = &type_float_;



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
        default:
            return 0;
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