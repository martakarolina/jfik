%{
#include "global.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>


%}

%token	NUMBER MINUS PLUS
%token	END


%start Input
%%

Input:
	  /* Empty */
	| Input Line
	;

Line:
	  END
	| S END		{ printf("Wynik: %f\n",$1); }
	;

S:
	  T				{ $$=$1; }
	| S PLUS T  			{ $$=$1+$3; }
        | S MINUS T                     { $$=$1-$3; }
;
T:
	  NUMBER	
;

%%

int yyerror(char *s) {
  printf("%s\n",s);
}

int main(void) {
  yyparse();
}
