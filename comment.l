/*Definition Section*/ 
%{ 
#include<stdio.h>
%}
/*Rule Section*/ 
%% 
\/\/(.*) ; 
\/\*(.*\n)*.*\*\/ ; 
%% 

/*Driver function*/ 
int main() 
{ 
yyin=fopen("demo.c","r"); 
yyout=fopen("output.c","w"); 
/*call the yylex function.*/ 
yylex(); 
return 0; 
}
