%{
#include<stdio.h>
int count=0,length=0;
%}

%%
[a-zA-Z0-9]*	{length=yyleng;fun(length);}
%%
void fun(int len)
{
	if(yytext[0]=='a' && len==3)
	{
		printf("%s",yytext);
		count++;
	}
}

int main()
{
printf("Enter string: ");
yylex();
printf("%d",count);
}

int yywrap(){}