#include<stdio.h>
#include<string.h>
int n,m=0,p,i=0,j=0;
char a[10][10],followResult[10];

void follow(char c)
{
	if(a[0][0]==c)
	addToResult('$');
	for(i=0;i<n;i++)
	{
		for(j=2;j<strlen(a[i]);j++)
		{
			if(a[i][j]==c)
			{
				if(a[i][j+1]!='\0')
				first(a[i][j+1]);
				if(a[i][j+1]=='\0')
				follow(a[i][0]);
			}
		}
	}
}

void first(char c)
{
	int k;
	if(!(isupper(c)))
	addToResult(c);
	for(k=0;k<n;k++)
	{
		if(a[k][0]==c)
		{
			if(a[k][2]=='$')
			follow(a[k][0]);
			else if(islower(a[k][2]))
			addToResult(a[k][2]);
			else
			first(a[k][2]);
		}
	}
}			

void addToResult(char c)
{
int i;
for(i=0;i<=m;i++)
if(followResult[i]==c)
return;
followResult[m++]=c;
}

			

int main()
{
	int i;
	int choice;
	char c,ch;
	printf("Enter the no.of productions:");
	scanf("%d",&n);
	printf("Enter the Productions");
	for(i=0;i<n;i++)
	scanf("%s",a[i]);
	do
	{
		m=0;
		printf("Find Follow of-->");
		scanf(" %c",&c);
		follow(c);
		printf("Follow(%c)={ ",c);
		for(i=0;i<m;i++)
		printf("%c",followResult[i]);
		printf(" }\n");
		printf("continue? press 1");
		scanf("%d",&choice);
	}
		while(choice==1);
}	
		
	/*
	Enter the no.of productions:5
Enter the Productions
S-aABb
A-c
A-$
B-d
B-$
Find Follow of-->S
Follow(S)={ $ }
continue? press 11
Find Follow of-->A
Follow(A)={ db }
continue? press 11
Find Follow of-->B
Follow(B)={ b }
continue? press 14
(base) */	
		
