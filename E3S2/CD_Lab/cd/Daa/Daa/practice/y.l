%{
#include <sdtdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+ {yylval=atoi(yytext); return Number;}
[ \t];
[\n] return 0;
. return yytext[0];
%%