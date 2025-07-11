%{
#include "parser.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext); return Num; }
"\n"        { return Nl; }
[ \t]       {}
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MUL; }
"/"         { return DIV; }
.           { return yytext[0]; }
%%

int yywrap() { return 1; }