%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(const char *s) { fprintf(stderr, "%s\n", s); }
%}

%token Num Nl PLUS MINUS MUL DIV

%%
prg: exp Nl  {printf("Result: %d\n", $1);  return 0;}
;
exp:  Num PLUS Num    { $$ = $1 + $3; }
    | Num MINUS Num   { $$ = $1 - $3; }
    | Num MUL Num     { $$ = $1 * $3; }
    | Num DIV Num     { $$ = $1 / $3; }
;
%%

int main(void) {
    yyparse();
    return 0;
}