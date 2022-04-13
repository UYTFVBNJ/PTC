// https://www.gnu.org/software/bison/manual/html_node/Location-Type.html

#ifndef TOKEN_H
#define TOKEN_H
enum TYPES {
  TYPE_INT, //int
  TYPE_FLOAT, // float
};

enum RELOPS {
  RELOP_LT, // <
  RELOP_LE, // <=
  RELOP_GT, // >
  RELOP_GE, // >=
  RELOP_EQ, // ==
  RELOP_NE, // !=
};

typedef struct token_info_t {
    int token;
    int first_line;
    union {
        char         id_val[64];
        enum TYPES   type_val;
        unsigned int int_val;
        float        float_val;
        enum RELOPS  relop_val;
    };
} token_info_t;

#define YYSTYPE token_info_t
#define YYSTYPE_IS_DECLARED true
#define YYSTYPE_IS_TRIVIAL  true

#endif
