%{
#include<stdio.h>
%}

%%
^[-+]?[0-9]+ {printf("Valid integer;");}
^[-+]?[0-9]*[.][0-9]+ {printf("valid float");}
.* {printf("Not a valid integer or float");}
%%

main()
{
    printf("Enter any number:");
    yylex();
}
int yywrap()
{
    return 1;
}