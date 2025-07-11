%{
#include "parser.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }
\n          { return NEWLINE; }
[ \t]+      { /* skip whitespace */ }
.           { return yytext[0]; }

%%

int yywrap() {
    return 1;
}
