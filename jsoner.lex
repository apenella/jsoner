/* package Example; */

import java_cup.runtime.Symbol;
%%
%cup
%%

"{" 		{ return new Symbol(sym.OBRACE); }
"}" 		{ return new Symbol(sym.CBRACE); }
"[" 		{ return new Symbol(sym.OBRACKET); }
"]" 		{ return new Symbol(sym.CBRACKET); }
"," 		{ return new Symbol(sym.COMMA); }
":" 		{ return new Symbol(sym.COLON); }
"\""		{ return new Symbol(sym.QUOTE); }

[Tt][Rr][Uu][Ee]|[Ff][Aa][Ll][Ss][Ee] 		{ return new Symbol(sym.BOOLEAN, new Boolean(yytext())); }

\"[a-zA-Z0-9 ]+\"		{ return new Symbol(sym.STRING); }
[0-9]+ { return new Symbol(sym.INTEGER, new Integer(yytext())); }


[ \t\r\n\f] { /* ignore white space. */ }
. { System.err.println("Illegal character: "+yytext()); }
