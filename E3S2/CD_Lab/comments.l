%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("input.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
