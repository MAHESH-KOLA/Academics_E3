%{
#include<stdio.h>
%}


%%

int yywrap(){return 1;}

int main(){

yyin=fopen("sample.c","r");
yyout=fopen("output.c","w");
yylex();
return 0;
}
