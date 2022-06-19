digit		[0-9a-fA-F]
hextail		{digit}+
hex		0[xX]{hextail}

%%
{hex}	printf("Found a HEX number %s !", yytext);
.	printf("");
%%

main(){
  printf("Give me your input:\n");
  yylex();
}

