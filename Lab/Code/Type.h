#ifndef TYPE_H
#define TYPE_H

typedef struct Type_* Type;
typedef struct FieldList_* FieldList;

struct FieldList_ {
  char* name; // 域的名字 
  Type type; // 域的类型
  FieldList tail; // 下一个域
};

struct Func_ {
  char *name;
  Type args; // use Struct for args
  Type ret;
  int addedVar;
};

enum { BASIC, ARRAY, STRUCTURE, ARGS, FUNCTION };

struct Type_ {
  int kind;
  union {
// 基本类型
    int basic;
// 数组类型信息包括元素类型与数组大小构成 
    struct { Type elem; int size; } array; 
// 结构体类型信息是一个链表
    FieldList structure;
// 函数类型信息
    struct Func_ function;
  }u;
  int declineno, deflineno;
};

Type TypeNew(int kind, int declineno, int deflineno);
FieldList FieldListNew(char *name, Type type, FieldList tail);
int isSameType(Type a, Type b);
int isSameField(FieldList a, FieldList b);
Type FieldListFind(char *name, FieldList list);

#endif