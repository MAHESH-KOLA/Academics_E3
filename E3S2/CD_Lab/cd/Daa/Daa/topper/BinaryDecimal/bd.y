%{
#include<stdio.h>
int yyerror(char *c);
%}



%token one zero

%%
A : L	{$$=$1; printf("%d",$$);}
L : L B	{$$=(2*$1)+$2;}
L : B	{$$=$1;}
B : one	{$$=$1;}
B : zero {$$=$1;}
%%

int main()
{
printf("Enter binary number: ");
yyparse();
return 0;
}
int yyerror(char *c)
{
printf("%s",c);
}