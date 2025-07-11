%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s) {
    fprintf(stderr, "Invalid\n");
    exit(1);
}
%}



%token LPAREN RPAREN NEWLINE




%%
prog :  expr  NEWLINE  { printf("Valid\n"); return 0;}
;

expr : LPAREN expr RPAREN expr  |  
;

%%

int main() {
    printf("Enter expression: ");
    yyparse();
    return 0;
}

