%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s) {
    fprintf(stderr, "Invalid Syntex\n");
    exit(1);
}
%}



%token NUMBER NEWLINE
%left  '+'  '-'
%left  '*'  '/'
%left  UMINUS




%%
prog :  expr  NEWLINE  { printf("Valid Syntex\n"); return 0;}
;

expr : expr '+' expr             { $$ = $1 + $3; }
    |  expr '-' expr             { $$ = $1 - $3; }
    |  expr '*' expr             { $$ = $1 * $3; }
    |  expr '/' expr             { $$ = $1 / $3; }
    |  '-' expr %prec UMINUS     { $$ = -$2; }
    |  '(' expr ')'              { $$ = $2; }
    |  NUMBER                    { $$ = $1; }
    
;

%%

int main() {
    printf("Enter expression: ");
    yyparse();
    return 0;
}

