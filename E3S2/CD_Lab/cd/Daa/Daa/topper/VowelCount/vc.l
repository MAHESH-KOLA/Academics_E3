%{
#include<stdio.h>
int c=0,v=0;
%}

%%
[aeiouAEIOU]	{v++;}
[a-zA-Z]	{c++;}
%%

int main()
{
printf("Enter String:");
yylex();
printf("Vowel:%d,Consonant:%d",v,c);
}

int yywrap()
{

}