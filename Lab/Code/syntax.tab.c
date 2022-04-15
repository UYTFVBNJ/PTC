/* A Bison parser, made by GNU Bison 3.7.5.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30705

/* Bison version string.  */
#define YYBISON_VERSION "3.7.5"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 11 "./syntax.y"

#include "common.h"
#include "Token.h"
#include "STree.h"
#include "SDT.h"
int yylex(void);
int yyerror(char * msg);
extern int yylineno;
extern int lexical_error;
extern int num_lexical_error, num_syntax_error;

#define YYLTYPE location_t
typedef struct location_t {
    int first_line, first_column;
    int last_line, last_column;
    struct STnode_t *STnode;
} location_t;
#define YYLTYPE_IS_DECLARED true
#define YYLTYPE_IS_TRIVIAL  true
extern YYLTYPE yylloc;

STnode_t *root = NULL;

#line 37 "./syntax.y"

// https://www.gnu.org/software/bison/manual/html_node/Location-Default-Action.html
# define YYLLOC_DEFAULT(Cur, Rhs, N)                      \
 /*     printf("\nsymbol: %d %s\n", yyr1[yyn], yytname[yyr1[yyn]));                               */  \
do {                                                      \
  root = STreeNewNode();              \
  if (N)                                                  \
    {                                                     \
  /*  printf("\ntoken pos: %d %d\n", YYRHSLOC(Rhs, 1).first_line, YYRHSLOC(Rhs, 1).first_column);            */                     \
      (Cur).first_line   = YYRHSLOC(Rhs, 1).first_line;   \
      (Cur).first_column = YYRHSLOC(Rhs, 1).first_column; \
      (Cur).last_line    = YYRHSLOC(Rhs, N).last_line;    \
      (Cur).last_column  = YYRHSLOC(Rhs, N).last_column;  \
                                                                    \
      /* normal reduction */                             \
      root->son = YYRHSLOC(Rhs, 1).STnode;                          \
      root->next = NULL;                          \
      root->symbol = yyr1[yyn];                          \
    /*  for (int i = 1; i <= N; i ++)                                  \
        if (YYRHSLOC(Rhs, i).STnode->son == NULL) \
          printf("TOKEN: %p %d %d %s\n", YYRHSLOC(Rhs, i).STnode, YYRHSLOC(Rhs, i).STnode->ti.token, YYTRANSLATE(YYRHSLOC(Rhs, i).STnode->ti.token), yytname[YYTRANSLATE(YYRHSLOC(Rhs, i).STnode->ti.token)));                                 \
        else  \
          printf("SYMBOL: %p %d %s\n", YYRHSLOC(Rhs, i).STnode, YYRHSLOC(Rhs, i).STnode->symbol, yytname[YYRHSLOC(Rhs, i).STnode->symbol));                                 \
         */                                                           \
      for (int i = 1; i < N; i ++)                                  \
        YYRHSLOC(Rhs, i).STnode->next = YYRHSLOC(Rhs, i + 1).STnode;    \
                                                                    \
    }                                                     \
  else                                                    \
    {                                                     \
      (Cur).first_line   = (Cur).last_line   =            \
        YYRHSLOC(Rhs, 0).last_line;                       \
      (Cur).first_column = (Cur).last_column =            \
        YYRHSLOC(Rhs, 0).last_column;                     \
                                                                    \
      /* epsilon reduction */                             \
      root->son = NULL;                          \
      root->next = NULL;                          \
      root->symbol = yyr1[yyn];                          \
      root->ti.token = YYEMPTY;                          \
    }                                                     \
    (Cur).STnode = root;                                           \
    (Cur).STnode->first_line = (Cur).first_line;                                           \
    /* printf("\nline: %d\n", (Cur).first_line);                                */ \
}                                                         \
while (0)

#include "lex.yy.c"
#line 87 "./syntax.y"

#include "Type.h"
extern Type type_int, type_float;

#line 149 "./syntax.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "syntax.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_LEXICAL_ERROR = 3,              /* LEXICAL_ERROR  */
  YYSYMBOL_RELOP = 4,                      /* RELOP  */
  YYSYMBOL_AND = 5,                        /* AND  */
  YYSYMBOL_OR = 6,                         /* OR  */
  YYSYMBOL_SEMI = 7,                       /* SEMI  */
  YYSYMBOL_COMMA = 8,                      /* COMMA  */
  YYSYMBOL_ASSIGNOP = 9,                   /* ASSIGNOP  */
  YYSYMBOL_PLUS = 10,                      /* PLUS  */
  YYSYMBOL_MINUS = 11,                     /* MINUS  */
  YYSYMBOL_STAR = 12,                      /* STAR  */
  YYSYMBOL_DIV = 13,                       /* DIV  */
  YYSYMBOL_DOT = 14,                       /* DOT  */
  YYSYMBOL_NOT = 15,                       /* NOT  */
  YYSYMBOL_TYPE = 16,                      /* TYPE  */
  YYSYMBOL_LP = 17,                        /* LP  */
  YYSYMBOL_RP = 18,                        /* RP  */
  YYSYMBOL_LB = 19,                        /* LB  */
  YYSYMBOL_RB = 20,                        /* RB  */
  YYSYMBOL_LC = 21,                        /* LC  */
  YYSYMBOL_RC = 22,                        /* RC  */
  YYSYMBOL_STRUCT = 23,                    /* STRUCT  */
  YYSYMBOL_RETURN = 24,                    /* RETURN  */
  YYSYMBOL_IF = 25,                        /* IF  */
  YYSYMBOL_ELSE = 26,                      /* ELSE  */
  YYSYMBOL_WHILE = 27,                     /* WHILE  */
  YYSYMBOL_INT = 28,                       /* INT  */
  YYSYMBOL_FLOAT = 29,                     /* FLOAT  */
  YYSYMBOL_ID = 30,                        /* ID  */
  YYSYMBOL_LOWER_THAN_ELSE = 31,           /* LOWER_THAN_ELSE  */
  YYSYMBOL_YYACCEPT = 32,                  /* $accept  */
  YYSYMBOL_Program = 33,                   /* Program  */
  YYSYMBOL_ExtDefList = 34,                /* ExtDefList  */
  YYSYMBOL_ExtDef = 35,                    /* ExtDef  */
  YYSYMBOL_ExtDecList = 36,                /* ExtDecList  */
  YYSYMBOL_Specifier = 37,                 /* Specifier  */
  YYSYMBOL_StructSpecifier = 38,           /* StructSpecifier  */
  YYSYMBOL_OptTag = 39,                    /* OptTag  */
  YYSYMBOL_Tag = 40,                       /* Tag  */
  YYSYMBOL_VarDec = 41,                    /* VarDec  */
  YYSYMBOL_FunDec = 42,                    /* FunDec  */
  YYSYMBOL_VarList = 43,                   /* VarList  */
  YYSYMBOL_ParamDec = 44,                  /* ParamDec  */
  YYSYMBOL_CompSt = 45,                    /* CompSt  */
  YYSYMBOL_StmtList = 46,                  /* StmtList  */
  YYSYMBOL_Stmt = 47,                      /* Stmt  */
  YYSYMBOL_DefList = 48,                   /* DefList  */
  YYSYMBOL_Def = 49,                       /* Def  */
  YYSYMBOL_DecList = 50,                   /* DecList  */
  YYSYMBOL_Dec = 51,                       /* Dec  */
  YYSYMBOL_Exp = 52,                       /* Exp  */
  YYSYMBOL_Args = 53                       /* Args  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE) \
             + YYSIZEOF (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  14
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   380

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  32
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  82
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  160

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   286


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   149,   149,   151,   152,   154,   155,   156,   157,   158,
     159,   160,   162,   163,   167,   168,   170,   171,   172,   174,
     175,   177,   181,   182,   183,   185,   186,   187,   189,   190,
     192,   196,   197,   198,   200,   201,   203,   204,   205,   206,
     207,   208,   209,   210,   211,   212,   213,   214,   218,   219,
     221,   222,   224,   225,   227,   228,   235,   236,   237,   238,
     239,   240,   241,   242,   243,   244,   245,   246,   247,   248,
     249,   250,   251,   252,   253,   254,   255,   256,   257,   258,
     259,   261,   262
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 1
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "LEXICAL_ERROR",
  "RELOP", "AND", "OR", "SEMI", "COMMA", "ASSIGNOP", "PLUS", "MINUS",
  "STAR", "DIV", "DOT", "NOT", "TYPE", "LP", "RP", "LB", "RB", "LC", "RC",
  "STRUCT", "RETURN", "IF", "ELSE", "WHILE", "INT", "FLOAT", "ID",
  "LOWER_THAN_ELSE", "$accept", "Program", "ExtDefList", "ExtDef",
  "ExtDecList", "Specifier", "StructSpecifier", "OptTag", "Tag", "VarDec",
  "FunDec", "VarList", "ParamDec", "CompSt", "StmtList", "Stmt", "DefList",
  "Def", "DecList", "Dec", "Exp", "Args", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286
};
#endif

#define YYPACT_NINF (-61)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-50)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      88,    41,   -61,   -15,    18,   -61,    88,    21,   -61,   -61,
      22,    15,    34,   -61,   -61,   -61,     8,   -61,    10,    51,
       6,     9,    66,    10,    19,   109,    69,   -61,    38,   -61,
     357,   -61,    72,     3,   -61,   -61,   -61,    83,    23,    84,
      38,    38,    45,   -61,    72,    90,   110,   -61,   -61,   103,
     119,   -61,   122,    77,   140,   148,   -61,   -61,    70,   105,
     203,   203,    48,   143,   136,   142,   -61,   -61,   150,   -61,
     135,    70,   247,   151,   -61,    38,   -61,   -61,   -61,   203,
     -61,    72,    94,   154,   -61,   -61,   358,    -2,    61,   258,
     170,   274,   164,   167,   134,   -61,   -61,   203,   203,   203,
     -61,   203,   203,   203,   203,   203,   153,   187,   -61,   323,
     -61,   -61,   -61,   -61,   -61,   -61,   -61,   -61,   162,   285,
     171,   296,   172,   -61,   312,   173,   355,   345,   334,   323,
     358,   358,    -2,    -2,   -61,   126,   230,    92,   113,    92,
      92,   -61,   203,   -61,   -61,   -61,   -61,   -61,   159,   129,
     174,   -61,   -61,   -61,    92,    92,    92,   -61,   -61,   -61
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,    14,    20,     0,     2,     0,     0,    15,    11,
       0,    21,     0,    18,     1,     3,     0,     6,    22,     0,
      12,     0,     0,     0,     0,     0,     0,    27,    49,     9,
       0,     5,     0,     0,     8,     7,    10,     0,     0,     0,
      49,    49,     0,    26,     0,     0,    29,    22,    13,     0,
       0,    17,     0,    54,     0,    52,    16,    48,     0,     0,
       0,     0,     0,     0,     0,     0,    79,    80,    78,    38,
       0,     0,     0,    30,    25,     0,    24,    23,    51,     0,
      50,     0,     0,     0,    37,    32,    68,    69,     0,     0,
       0,     0,     0,     0,     0,    31,    34,     0,     0,     0,
      36,     0,     0,     0,     0,     0,     0,     0,    28,    55,
      53,    33,    66,    65,    67,    64,    40,    39,     0,     0,
       0,     0,     0,    72,    82,     0,    59,    57,    58,    56,
      60,    61,    62,    63,    77,     0,     0,     0,     0,     0,
       0,    71,     0,    70,    75,    74,    76,    73,    42,     0,
      41,    47,    46,    81,     0,     0,     0,    44,    45,    43
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -61,   -61,   193,   -61,   169,     5,   -61,   -61,   -61,   -31,
     199,   128,   -61,   145,   -50,    68,   146,   -61,   130,   -61,
     -60,    71
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     4,     5,     6,    19,    38,     8,    12,    13,    20,
      21,    45,    46,    69,    70,    71,    39,    40,    54,    55,
      72,   125
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      86,    87,    89,    91,    49,     7,    10,    53,    83,    26,
      26,     7,   106,    73,    32,    11,    34,   107,    14,   109,
      26,    96,    16,    22,    52,    33,    27,    30,    17,    28,
      28,    50,   119,   121,   124,    44,   -19,   126,   127,   128,
      28,   129,   130,   131,   132,   133,    59,   136,     9,    88,
      53,    18,    23,    47,     2,    25,    60,     2,    31,    60,
      61,     3,    62,    61,     3,    62,    28,   -35,   112,    63,
      64,    82,    65,    66,    67,    68,    66,    67,    68,   113,
      44,    60,   124,   114,    27,    61,    79,    62,    -4,     1,
      41,    28,   -35,    82,    63,    64,    33,    65,    66,    67,
      68,    84,    47,    60,     2,    51,    56,    61,    74,    62,
      37,     3,    84,    28,   149,    41,    63,    64,    75,    65,
      66,    67,    68,    76,    60,     2,    41,    85,    61,    78,
      62,   -49,     3,   144,    28,   122,    84,    63,    64,    77,
      65,    66,    67,    68,    90,    60,   145,    80,   146,    61,
      41,    62,   123,    92,    60,   155,    81,    95,    61,    93,
      62,    29,    66,    67,    68,   118,    35,    94,   120,    36,
      33,    66,    67,    68,    42,    60,   111,   116,    60,    61,
     137,    62,    61,   134,    62,   154,    57,    58,   135,   139,
     141,   143,    66,    67,    68,    66,    67,    68,    60,    15,
     156,    48,    61,   108,    62,   148,   150,   151,   152,    24,
       0,   110,     0,   153,    60,    66,    67,    68,    61,     0,
      62,     0,   157,   158,   159,     0,     0,     0,     0,     0,
       0,    66,    67,    68,    97,    98,    99,     0,     0,   101,
     102,   103,   104,   105,   106,     0,     0,     0,     0,   107,
     147,    97,    98,    99,   100,     0,   101,   102,   103,   104,
     105,   106,    97,    98,    99,     0,   107,   101,   102,   103,
     104,   105,   106,     0,     0,     0,   115,   107,    97,    98,
      99,   117,     0,   101,   102,   103,   104,   105,   106,    97,
      98,    99,     0,   107,   101,   102,   103,   104,   105,   106,
      97,    98,    99,   138,   107,   101,   102,   103,   104,   105,
     106,     0,     0,     0,   140,   107,    97,    98,    99,     0,
     142,   101,   102,   103,   104,   105,   106,    97,    98,    99,
       0,   107,   101,   102,   103,   104,   105,   106,    97,    98,
       0,     0,   107,     0,   102,   103,   104,   105,   106,    97,
       0,     0,     0,   107,     0,   102,   103,   104,   105,   106,
       0,     0,     0,     0,   107,   102,   103,   104,   105,   106,
     104,   105,   106,     2,   107,    43,     0,   107,     0,     0,
       3
};

static const yytype_int16 yycheck[] =
{
      60,    61,    62,    63,     1,     0,     1,    38,    58,     1,
       1,     6,    14,    44,     8,    30,     7,    19,     0,    79,
       1,    71,     1,     1,     1,    19,    18,    17,     7,    21,
      21,    28,    92,    93,    94,    30,    21,    97,    98,    99,
      21,   101,   102,   103,   104,   105,     1,   107,     7,     1,
      81,    30,    30,    30,    16,    21,    11,    16,     7,    11,
      15,    23,    17,    15,    23,    17,    21,    22,     7,    24,
      25,     1,    27,    28,    29,    30,    28,    29,    30,    18,
      75,    11,   142,    22,    18,    15,     9,    17,     0,     1,
      21,    21,    22,     1,    24,    25,    19,    27,    28,    29,
      30,     7,    30,    11,    16,    22,    22,    15,    18,    17,
       1,    23,     7,    21,     1,    21,    24,    25,     8,    27,
      28,    29,    30,    20,    11,    16,    21,    22,    15,     7,
      17,    22,    23,     7,    21,     1,     7,    24,    25,    20,
      27,    28,    29,    30,     1,    11,    20,     7,    22,    15,
      21,    17,    18,    17,    11,    26,     8,    22,    15,    17,
      17,    16,    28,    29,    30,     1,    21,    17,     1,    24,
      19,    28,    29,    30,    28,    11,    22,     7,    11,    15,
      18,    17,    15,    30,    17,    26,    40,    41,     1,    18,
      18,    18,    28,    29,    30,    28,    29,    30,    11,     6,
      26,    32,    15,    75,    17,   137,   138,   139,   140,    10,
      -1,    81,    -1,   142,    11,    28,    29,    30,    15,    -1,
      17,    -1,   154,   155,   156,    -1,    -1,    -1,    -1,    -1,
      -1,    28,    29,    30,     4,     5,     6,    -1,    -1,     9,
      10,    11,    12,    13,    14,    -1,    -1,    -1,    -1,    19,
      20,     4,     5,     6,     7,    -1,     9,    10,    11,    12,
      13,    14,     4,     5,     6,    -1,    19,     9,    10,    11,
      12,    13,    14,    -1,    -1,    -1,    18,    19,     4,     5,
       6,     7,    -1,     9,    10,    11,    12,    13,    14,     4,
       5,     6,    -1,    19,     9,    10,    11,    12,    13,    14,
       4,     5,     6,    18,    19,     9,    10,    11,    12,    13,
      14,    -1,    -1,    -1,    18,    19,     4,     5,     6,    -1,
       8,     9,    10,    11,    12,    13,    14,     4,     5,     6,
      -1,    19,     9,    10,    11,    12,    13,    14,     4,     5,
      -1,    -1,    19,    -1,    10,    11,    12,    13,    14,     4,
      -1,    -1,    -1,    19,    -1,    10,    11,    12,    13,    14,
      -1,    -1,    -1,    -1,    19,    10,    11,    12,    13,    14,
      12,    13,    14,    16,    19,    18,    -1,    19,    -1,    -1,
      23
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     1,    16,    23,    33,    34,    35,    37,    38,     7,
      37,    30,    39,    40,     0,    34,     1,     7,    30,    36,
      41,    42,     1,    30,    42,    21,     1,    18,    21,    45,
      17,     7,     8,    19,     7,    45,    45,     1,    37,    48,
      49,    21,    48,    18,    37,    43,    44,    30,    36,     1,
      28,    22,     1,    41,    50,    51,    22,    48,    48,     1,
      11,    15,    17,    24,    25,    27,    28,    29,    30,    45,
      46,    47,    52,    41,    18,     8,    20,    20,     7,     9,
       7,     8,     1,    46,     7,    22,    52,    52,     1,    52,
       1,    52,    17,    17,    17,    22,    46,     4,     5,     6,
       7,     9,    10,    11,    12,    13,    14,    19,    43,    52,
      50,    22,     7,    18,    22,    18,     7,     7,     1,    52,
       1,    52,     1,    18,    52,    53,    52,    52,    52,    52,
      52,    52,    52,    52,    30,     1,    52,    18,    18,    18,
      18,    18,     8,    18,     7,    20,    22,    20,    47,     1,
      47,    47,    47,    53,    26,    26,    26,    47,    47,    47
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    32,    33,    34,    34,    35,    35,    35,    35,    35,
      35,    35,    36,    36,    37,    37,    38,    38,    38,    39,
      39,    40,    41,    41,    41,    42,    42,    42,    43,    43,
      44,    45,    45,    45,    46,    46,    47,    47,    47,    47,
      47,    47,    47,    47,    47,    47,    47,    47,    48,    48,
      49,    49,    50,    50,    51,    51,    52,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    53,    53
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     0,     3,     2,     3,     3,     3,
       4,     2,     1,     3,     1,     1,     5,     5,     2,     1,
       0,     1,     1,     4,     4,     4,     3,     2,     3,     1,
       2,     4,     4,     5,     2,     0,     2,     2,     1,     3,
       3,     5,     5,     7,     7,     7,     5,     5,     2,     0,
       3,     3,     1,     3,     1,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     2,     2,
       4,     4,     3,     4,     4,     4,     4,     3,     1,     1,
       1,     3,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF

/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (0)
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

# ifndef YY_LOCATION_PRINT
#  if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */

YY_ATTRIBUTE_UNUSED
static int
yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
{
  int res = 0;
  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
  if (0 <= yylocp->first_line)
    {
      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
      if (0 <= yylocp->first_column)
        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
    }
  if (0 <= yylocp->last_line)
    {
      if (yylocp->first_line < yylocp->last_line)
        {
          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
          if (0 <= end_col)
            res += YYFPRINTF (yyo, ".%d", end_col);
        }
      else if (0 <= end_col && yylocp->first_column < end_col)
        res += YYFPRINTF (yyo, "-%d", end_col);
    }
  return res;
 }

#   define YY_LOCATION_PRINT(File, Loc)          \
  yy_location_print_ (File, &(Loc))

#  else
#   define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#  endif
# endif /* !defined YY_LOCATION_PRINT */


# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  YY_USE (yylocationp);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yykind < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yykind], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  YY_LOCATION_PRINT (yyo, *yylocationp);
  YYFPRINTF (yyo, ": ");
  yy_symbol_value_print (yyo, yykind, yyvaluep, yylocationp);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)],
                       &(yylsp[(yyi + 1) - (yynrhs)]));
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YY_USE (yyvaluep);
  YY_USE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Location data for the lookahead symbol.  */
YYLTYPE yylloc
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  = { 1, 1, 1, 1 }
# endif
;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

    /* The location stack: array, bottom, top.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls = yylsa;
    YYLTYPE *yylsp = yyls;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

  /* The locations where the error started and ended.  */
  YYLTYPE yyerror_range[3];



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */
  yylsp[0] = yylloc;
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;
        YYLTYPE *yyls1 = yyls;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yyls1, yysize * YYSIZEOF (*yylsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
        yyls = yyls1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      yyerror_range[1] = yylloc;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  *++yylsp = yylloc;

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location. */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  yyerror_range[1] = yyloc;
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: ExtDefList  */
#line 149 "./syntax.y"
                     {(yyloc).STnode->SDT_handler = SDTProgram_ExtDefList;}
#line 1441 "./syntax.tab.c"
    break;

  case 3: /* ExtDefList: ExtDef ExtDefList  */
#line 151 "./syntax.y"
                               {(yyloc).STnode->SDT_handler = SDTExtDefList_ExtDefExtDefList;}
#line 1447 "./syntax.tab.c"
    break;

  case 4: /* ExtDefList: %empty  */
#line 152 "./syntax.y"
      {(yyloc).STnode->SDT_handler = SDTExtDefList_;}
#line 1453 "./syntax.tab.c"
    break;

  case 5: /* ExtDef: Specifier ExtDecList SEMI  */
#line 154 "./syntax.y"
                                    {(yyloc).STnode->SDT_handler = SDTExtDef_SpecifierExtDecListSEMI;}
#line 1459 "./syntax.tab.c"
    break;

  case 6: /* ExtDef: Specifier SEMI  */
#line 155 "./syntax.y"
                      {(yyloc).STnode->SDT_handler = SDTExtDef_SpecifierSEMI;}
#line 1465 "./syntax.tab.c"
    break;

  case 7: /* ExtDef: Specifier FunDec CompSt  */
#line 156 "./syntax.y"
                              {(yyloc).STnode->SDT_handler = SDTExtDef_SpecifierFunDecCompSt;}
#line 1471 "./syntax.tab.c"
    break;

  case 8: /* ExtDef: Specifier FunDec SEMI  */
#line 157 "./syntax.y"
                            {(yyloc).STnode->SDT_handler = SDTExtDef_SpecifierFunDecSEMI;}
#line 1477 "./syntax.tab.c"
    break;

  case 9: /* ExtDef: Specifier error CompSt  */
#line 158 "./syntax.y"
                             {yyerrok;}
#line 1483 "./syntax.tab.c"
    break;

  case 10: /* ExtDef: error Specifier FunDec CompSt  */
#line 159 "./syntax.y"
                                    {yyerrok;}
#line 1489 "./syntax.tab.c"
    break;

  case 11: /* ExtDef: error SEMI  */
#line 160 "./syntax.y"
                 {yyerrok;}
#line 1495 "./syntax.tab.c"
    break;

  case 12: /* ExtDecList: VarDec  */
#line 162 "./syntax.y"
                    {(yyloc).STnode->SDT_handler = SDTExtDecList_VarDec;}
#line 1501 "./syntax.tab.c"
    break;

  case 13: /* ExtDecList: VarDec COMMA ExtDecList  */
#line 163 "./syntax.y"
                              {(yyloc).STnode->SDT_handler = SDTExtDecList_VarDecCOMMAExtDecList;}
#line 1507 "./syntax.tab.c"
    break;

  case 14: /* Specifier: TYPE  */
#line 167 "./syntax.y"
                 {(yyloc).STnode->SDT_handler = SDTSpecifier_TYPE;}
#line 1513 "./syntax.tab.c"
    break;

  case 15: /* Specifier: StructSpecifier  */
#line 168 "./syntax.y"
                      {(yyloc).STnode->SDT_handler = SDTSpecifier_StructSpecifier;}
#line 1519 "./syntax.tab.c"
    break;

  case 16: /* StructSpecifier: STRUCT OptTag LC DefList RC  */
#line 170 "./syntax.y"
                                              {(yyloc).STnode->SDT_handler = SDTStructSpecifier_STRUCTOptTagLCDefListRC;}
#line 1525 "./syntax.tab.c"
    break;

  case 17: /* StructSpecifier: STRUCT OptTag LC error RC  */
#line 171 "./syntax.y"
                                {yyerrok;}
#line 1531 "./syntax.tab.c"
    break;

  case 18: /* StructSpecifier: STRUCT Tag  */
#line 172 "./syntax.y"
                 {(yyloc).STnode->SDT_handler = SDTStructSpecifier_STRUCTTag;}
#line 1537 "./syntax.tab.c"
    break;

  case 19: /* OptTag: ID  */
#line 174 "./syntax.y"
            {(yyloc).STnode->SDT_handler = SDTOptTag_ID;}
#line 1543 "./syntax.tab.c"
    break;

  case 20: /* OptTag: %empty  */
#line 175 "./syntax.y"
       {(yyloc).STnode->SDT_handler = SDTOptTag_;}
#line 1549 "./syntax.tab.c"
    break;

  case 21: /* Tag: ID  */
#line 177 "./syntax.y"
         {(yyloc).STnode->SDT_handler = SDTTag_ID;}
#line 1555 "./syntax.tab.c"
    break;

  case 22: /* VarDec: ID  */
#line 181 "./syntax.y"
            {(yyloc).STnode->SDT_handler = SDTVarDec_ID;}
#line 1561 "./syntax.tab.c"
    break;

  case 23: /* VarDec: VarDec LB INT RB  */
#line 182 "./syntax.y"
                       {(yyloc).STnode->SDT_handler = SDTVarDec_VarDecLBINTRB;}
#line 1567 "./syntax.tab.c"
    break;

  case 25: /* FunDec: ID LP VarList RP  */
#line 185 "./syntax.y"
                           {(yyloc).STnode->SDT_handler = SDTFunDec_IDLPVarListRP;}
#line 1573 "./syntax.tab.c"
    break;

  case 26: /* FunDec: ID LP RP  */
#line 186 "./syntax.y"
               {(yyloc).STnode->SDT_handler = SDTFunDec_IDLPRP;}
#line 1579 "./syntax.tab.c"
    break;

  case 27: /* FunDec: error RP  */
#line 187 "./syntax.y"
               {yyerrok;}
#line 1585 "./syntax.tab.c"
    break;

  case 28: /* VarList: ParamDec COMMA VarList  */
#line 189 "./syntax.y"
                                 {(yyloc).STnode->SDT_handler = SDTVarList_ParamDecCOMMAVarList;}
#line 1591 "./syntax.tab.c"
    break;

  case 29: /* VarList: ParamDec  */
#line 190 "./syntax.y"
               {(yyloc).STnode->SDT_handler = SDTVarList_ParamDec;}
#line 1597 "./syntax.tab.c"
    break;

  case 30: /* ParamDec: Specifier VarDec  */
#line 192 "./syntax.y"
                            {(yyloc).STnode->SDT_handler = SDTParamDec_SpecifierVarDec;}
#line 1603 "./syntax.tab.c"
    break;

  case 31: /* CompSt: LC DefList StmtList RC  */
#line 196 "./syntax.y"
                                {(yyloc).STnode->SDT_handler = SDTCompSt_LCDefListStmtListRC;}
#line 1609 "./syntax.tab.c"
    break;

  case 32: /* CompSt: LC DefList error RC  */
#line 197 "./syntax.y"
                          {yyerrok;}
#line 1615 "./syntax.tab.c"
    break;

  case 33: /* CompSt: error LC DefList StmtList RC  */
#line 198 "./syntax.y"
                                   {yyerrok;}
#line 1621 "./syntax.tab.c"
    break;

  case 34: /* StmtList: Stmt StmtList  */
#line 200 "./syntax.y"
                         {(yyloc).STnode->SDT_handler = SDTStmtList_StmtStmtList;}
#line 1627 "./syntax.tab.c"
    break;

  case 35: /* StmtList: %empty  */
#line 201 "./syntax.y"
      {(yyloc).STnode->SDT_handler = SDTStmtList_;}
#line 1633 "./syntax.tab.c"
    break;

  case 36: /* Stmt: Exp SEMI  */
#line 203 "./syntax.y"
                {(yyloc).STnode->SDT_handler = SDTStmt_ExpSEMI;}
#line 1639 "./syntax.tab.c"
    break;

  case 37: /* Stmt: error SEMI  */
#line 204 "./syntax.y"
                 {yyerrok;}
#line 1645 "./syntax.tab.c"
    break;

  case 38: /* Stmt: CompSt  */
#line 205 "./syntax.y"
              {(yyloc).STnode->SDT_handler = SDTStmt_CompSt;}
#line 1651 "./syntax.tab.c"
    break;

  case 39: /* Stmt: RETURN Exp SEMI  */
#line 206 "./syntax.y"
                       {(yyloc).STnode->SDT_handler = SDTStmt_RETURNExpSEMI;}
#line 1657 "./syntax.tab.c"
    break;

  case 40: /* Stmt: RETURN error SEMI  */
#line 207 "./syntax.y"
                        {yyerrok;}
#line 1663 "./syntax.tab.c"
    break;

  case 41: /* Stmt: IF LP Exp RP Stmt  */
#line 208 "./syntax.y"
                                              {(yyloc).STnode->SDT_handler = SDTStmt_IFLPExpRPStmt;}
#line 1669 "./syntax.tab.c"
    break;

  case 43: /* Stmt: IF LP Exp RP Stmt ELSE Stmt  */
#line 210 "./syntax.y"
                                   {(yyloc).STnode->SDT_handler = SDTStmt_IFLPExpRPStmtELSEStmt;}
#line 1675 "./syntax.tab.c"
    break;

  case 46: /* Stmt: WHILE LP Exp RP Stmt  */
#line 213 "./syntax.y"
                            {(yyloc).STnode->SDT_handler = SDTStmt_WHILELPExpRPStmt;}
#line 1681 "./syntax.tab.c"
    break;

  case 47: /* Stmt: WHILE LP error RP Stmt  */
#line 214 "./syntax.y"
                             {yyerrok;}
#line 1687 "./syntax.tab.c"
    break;

  case 48: /* DefList: Def DefList  */
#line 218 "./syntax.y"
                      {(yyloc).STnode->SDT_handler = SDTDefList_DefDefList;}
#line 1693 "./syntax.tab.c"
    break;

  case 49: /* DefList: %empty  */
#line 219 "./syntax.y"
      {(yyloc).STnode->SDT_handler = SDTDefList_;}
#line 1699 "./syntax.tab.c"
    break;

  case 50: /* Def: Specifier DecList SEMI  */
#line 221 "./syntax.y"
                             {(yyloc).STnode->SDT_handler = SDTDef_SpecifierDecListSEMI;}
#line 1705 "./syntax.tab.c"
    break;

  case 51: /* Def: Specifier error SEMI  */
#line 222 "./syntax.y"
                           {yyerrok;}
#line 1711 "./syntax.tab.c"
    break;

  case 52: /* DecList: Dec  */
#line 224 "./syntax.y"
               {(yyloc).STnode->SDT_handler = SDTDecList_Dec;}
#line 1717 "./syntax.tab.c"
    break;

  case 53: /* DecList: Dec COMMA DecList  */
#line 225 "./syntax.y"
                         {(yyloc).STnode->SDT_handler = SDTDecList_DecCOMMADecList;}
#line 1723 "./syntax.tab.c"
    break;

  case 54: /* Dec: VarDec  */
#line 227 "./syntax.y"
             {(yyloc).STnode->SDT_handler = SDTDec_VarDec;}
#line 1729 "./syntax.tab.c"
    break;

  case 55: /* Dec: VarDec ASSIGNOP Exp  */
#line 228 "./syntax.y"
                           {(yyloc).STnode->SDT_handler = SDTDec_VarDecASSIGNOPExp;}
#line 1735 "./syntax.tab.c"
    break;

  case 56: /* Exp: Exp ASSIGNOP Exp  */
#line 235 "./syntax.y"
                       {(yyloc).STnode->SDT_handler = SDTExp_ExpASSIGNOPExp;}
#line 1741 "./syntax.tab.c"
    break;

  case 57: /* Exp: Exp AND Exp  */
#line 236 "./syntax.y"
                   {(yyloc).STnode->SDT_handler = SDTExp_ExpLOGICExp;}
#line 1747 "./syntax.tab.c"
    break;

  case 58: /* Exp: Exp OR Exp  */
#line 237 "./syntax.y"
                 {(yyloc).STnode->SDT_handler = SDTExp_ExpLOGICExp;}
#line 1753 "./syntax.tab.c"
    break;

  case 59: /* Exp: Exp RELOP Exp  */
#line 238 "./syntax.y"
                     {(yyloc).STnode->SDT_handler = SDTExp_ExpARITHMETICExp;}
#line 1759 "./syntax.tab.c"
    break;

  case 60: /* Exp: Exp PLUS Exp  */
#line 239 "./syntax.y"
                    {(yyloc).STnode->SDT_handler = SDTExp_ExpARITHMETICExp;}
#line 1765 "./syntax.tab.c"
    break;

  case 61: /* Exp: Exp MINUS Exp  */
#line 240 "./syntax.y"
                    {(yyloc).STnode->SDT_handler = SDTExp_ExpARITHMETICExp;}
#line 1771 "./syntax.tab.c"
    break;

  case 62: /* Exp: Exp STAR Exp  */
#line 241 "./syntax.y"
                   {(yyloc).STnode->SDT_handler = SDTExp_ExpARITHMETICExp;}
#line 1777 "./syntax.tab.c"
    break;

  case 63: /* Exp: Exp DIV Exp  */
#line 242 "./syntax.y"
                  {(yyloc).STnode->SDT_handler = SDTExp_ExpARITHMETICExp;}
#line 1783 "./syntax.tab.c"
    break;

  case 64: /* Exp: LP Exp RP  */
#line 243 "./syntax.y"
                 {(yyloc).STnode->SDT_handler = SDTExp_LPExpRP;}
#line 1789 "./syntax.tab.c"
    break;

  case 66: /* Exp: LP error SEMI  */
#line 245 "./syntax.y"
                    {yyerrok;}
#line 1795 "./syntax.tab.c"
    break;

  case 67: /* Exp: LP error RC  */
#line 246 "./syntax.y"
                  {yyerrok;}
#line 1801 "./syntax.tab.c"
    break;

  case 68: /* Exp: MINUS Exp  */
#line 247 "./syntax.y"
                 {(yyloc).STnode->SDT_handler = SDTExp_MINUSExp;}
#line 1807 "./syntax.tab.c"
    break;

  case 69: /* Exp: NOT Exp  */
#line 248 "./syntax.y"
               {(yyloc).STnode->SDT_handler = SDTExp_NOTExp;}
#line 1813 "./syntax.tab.c"
    break;

  case 70: /* Exp: ID LP Args RP  */
#line 249 "./syntax.y"
                     {(yyloc).STnode->SDT_handler = SDTExp_IDLPArgsRP;}
#line 1819 "./syntax.tab.c"
    break;

  case 72: /* Exp: ID LP RP  */
#line 251 "./syntax.y"
                {(yyloc).STnode->SDT_handler = SDTExp_IDLPRP;}
#line 1825 "./syntax.tab.c"
    break;

  case 73: /* Exp: Exp LB Exp RB  */
#line 252 "./syntax.y"
                     {(yyloc).STnode->SDT_handler = SDTExp_ExpLBExpRB;}
#line 1831 "./syntax.tab.c"
    break;

  case 75: /* Exp: Exp LB error SEMI  */
#line 254 "./syntax.y"
                        {yyerrok;}
#line 1837 "./syntax.tab.c"
    break;

  case 76: /* Exp: Exp LB error RC  */
#line 255 "./syntax.y"
                      {yyerrok;}
#line 1843 "./syntax.tab.c"
    break;

  case 77: /* Exp: Exp DOT ID  */
#line 256 "./syntax.y"
                  {(yyloc).STnode->SDT_handler = SDTExp_ExpDOTID;}
#line 1849 "./syntax.tab.c"
    break;

  case 78: /* Exp: ID  */
#line 257 "./syntax.y"
         {(yyloc).STnode->SDT_handler = SDTExp_ID;}
#line 1855 "./syntax.tab.c"
    break;

  case 79: /* Exp: INT  */
#line 258 "./syntax.y"
          {(yyloc).STnode->SDT_handler = SDTExp_INT;}
#line 1861 "./syntax.tab.c"
    break;

  case 80: /* Exp: FLOAT  */
#line 259 "./syntax.y"
            {(yyloc).STnode->SDT_handler = SDTExp_FLOAT;}
#line 1867 "./syntax.tab.c"
    break;

  case 81: /* Args: Exp COMMA Args  */
#line 261 "./syntax.y"
                      {(yyloc).STnode->SDT_handler = SDTArgs_ExpCOMMAArgs;}
#line 1873 "./syntax.tab.c"
    break;

  case 82: /* Args: Exp  */
#line 262 "./syntax.y"
           {(yyloc).STnode->SDT_handler = SDTArgs_Exp;}
#line 1879 "./syntax.tab.c"
    break;


#line 1883 "./syntax.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  yyerror_range[1] = yylloc;
  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval, &yylloc);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;

      yyerror_range[1] = *yylsp;
      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  ++yylsp;
  YYLLOC_DEFAULT (*yylsp, yyerror_range, 2);

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturn;
#endif


/*-------------------------------------------------------.
| yyreturn -- parsing is finished, clean up and return.  |
`-------------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, &yylloc);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 267 "./syntax.y"

int yyerror(char * msg) {
    // fprintf(stderr, RED"error"RESET": %s\n", msg);
    // fprintf(stderr, "at %d, %d\n", yylineno, yycolumn);

    if (lexical_error) {
        lexical_error = 0;
        printf("Error type A at Line %d: Mysterious characters \'%s\'\n", yylineno, yytext);
        num_lexical_error ++;
    } else {
        printf("Error type B at Line %d: Unexpected %s \n", yylineno, yytext);
        num_syntax_error ++;
    }
    return 0;
}


int depth = 0;
void STtraversal(STnode_t *u) {
    if (u == NULL) return ;
    if (u->son == NULL) {
        switch (u->ti.token) {
          case YYEMPTY: {
            break;
          }
          case ID: {
            for (int i = 0; i < depth; i ++) printf("  ");
            //printf("%s: %s\n", yytname[YYTRANSLATE((u->ti.token))), u->ti.id_val);
            printf("%s: %s\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.id_val);
            break;
          }
          case TYPE: {
            for (int i = 0; i < depth; i ++) printf("  ");
            switch (u->ti.type_val) {
              case TYPE_INT: {
                printf("%s: int\n", yytname[YYTRANSLATE((u->ti.token))]);
                break;
              }
              case TYPE_FLOAT: {
                printf("%s: float\n", yytname[YYTRANSLATE((u->ti.token))]);
                break;
              }
              default: {
                assert(0);
              }
            }
            break;
          }
          case INT: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s: %d\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.int_val);
            break;
          }
          case FLOAT: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s: %f\n", yytname[YYTRANSLATE((u->ti.token))], u->ti.float_val);
            break;
          }
          default: {
            for (int i = 0; i < depth; i ++) printf("  ");
            printf("%s\n", yytname[YYTRANSLATE((u->ti.token))]);
          }
        }
    } else {
        for (int i = 0; i < depth; i ++) printf("  ");
        printf("%s (%d)\n", yytname[(u->symbol)], u->first_line);
    }
    depth ++;
    STtraversal(u->son);
    depth --;
    STtraversal(u->next);
}

void STprint() {
    STtraversal(root);
}

void SDTparse() {
    root->SDT_handler(root, NULL);
    SDT_report();
}

void prtname(STnode_t *STnode) {
    printf("%s (%d)\n", yytname[(STnode->symbol)], STnode->first_line);
}
