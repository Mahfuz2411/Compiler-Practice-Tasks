%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
%}

%token NUMBER NEWLINE
%left '+' '-'
%left '*' '/'
%left UMINUS

%%

calculation:
      expression  NEWLINE     { printf("Result: %d\n", $1);  return 0;}
;

expression:
      expression '+' expression   { $$ = $1 + $3; }
    | expression '-' expression   { $$ = $1 - $3; }
    | expression '*' expression   { $$ = $1 * $3; }
    
    | expression '/' expression   { 
                                      if ($3 == 0) {
                                          yyerror("division by zero");
                                          exit(1);
                                      }
                                      $$ = $1 / $3; 
                                  }
    | '-' expression %prec UMINUS { $$ = -$2; }
    | '(' expression ')'          { $$ = $2; }
    | NUMBER                      { $$ = $1; }
;

%%

int main() {
    printf("Enter expression: ");
    yyparse();
    return 0;
}

