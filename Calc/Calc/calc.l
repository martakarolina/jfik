%{
#include "global.h"
#include "calc.tab.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

%}

white		[ \t]+

digit		[0-9]
integer 	{digit}+

%%

{white} 	{ /* We ignore white characters */ }

{integer}	{
		  yylval=atof(yytext);
		  return(NUMBER);
		}


"+"		return(PLUS);
"-"		return(MINUS);

"\n"	return(END);

