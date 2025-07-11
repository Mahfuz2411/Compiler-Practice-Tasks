%{
#include "parser.tab.h"
%}

%%

"("         { return LPAREN; }
")"         { return RPAREN; }
\n          { return NEWLINE; }
[ \t]+      { /* skip whitespace */ }
.           { return yytext[0]; }

%%

int yywrap() {
    return 1;
}
