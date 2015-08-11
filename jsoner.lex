/* package Example; */

import java_cup.runtime.Symbol;
%%
%cup
%%

";" { return new Symbol(sym.SEMI); }
"+" { return new Symbol(sym.PLUS); }
"*" { return new Symbol(sym.TIMES); }
"(" { return new Symbol(sym.LPAREN); }
")" { return new Symbol(sym.RPAREN); }

"{" 		{ return new Symbol(sym.OBRACE); }
"}" 		{ return new Symbol(sym.CBRACE); }
"[" 		{ return new Symbol(sym.OBRACKET); }
"]" 		{ return new Symbol(sym.CBRACKET); }
"," 		{ return new Symbol(sym.COMMA); }
":" 		{ return new Symbol(sym.COLON); }
"\""		{ return new Symbol(sym.QUOTE); }
[Tt][Rr][Uu][Ee] 		{ return new Symbol(sym.TRUE, new Bool(yytext())); }
[Ff][Aa][Ll][Ss][Ee]	{ return new Symbol(sym.TRUE, new Bool(yytext())); }
"\"[a-zA-Z0-9 ]+\""		{ return new Symbol(sym.STRING); }
[0-9]+ { return new Symbol(sym.INTEGER, new Integer(yytext())); }


[ \t\r\n\f] { /* ignore white space. */ }
. { System.err.println("Illegal character: "+yytext()); }
