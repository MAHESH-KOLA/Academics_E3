%{
#include<stdio.h>
int vcount=0;
int Ccount=0;
%}

%%
[aeiouAEIOU] {vcount++;}
[a-zA-Z] {Ccount++;}
[0-9]+ {printf("Invalid entry");}
%%
int main()
{
    printf("Enter any string:");
    yylex();
    printf("\nVowels count=%d\nConsonant count=%d",vcount,Ccount);
    return 0;
}
int yywrap()
{
    return 1;
}