DIGIT[0-9]
IDF[a-z][a-z0-9]*
DELIM[{};,]
OPER[+-/*]
WHITESPACE[\n\t\r]


%%
begin			{ printf("PR = %s\n", yytext); }
function		{ printf("PR = %s\n", yytext); }
{IDF}+			{ printf("IDF = %s\n",yytext); }
{OPER}|{DELIM}		{ printf("OP/DEL = %s\n", yytext); }
"("			{ printf("AP = %s\n", yytext); }
")"			{ printf("FP = %s\n", yytext); }
{DIGIT}+		{ printf("DIGIT = %s\n", yytext); }
{DIGIT}+"."{DIGIT}+ 	{ printf("DIGIT = %s\n", yytext); }
{WHITESPACE}+	
">="|"<="		{ printf("relacional = %s\n", yytext); }
. 			{ printf("ERRO = %s\n", yytext); }

%%

main()
{
	yylex(); /* scanner gerado por Flex */

	return 0;
}


