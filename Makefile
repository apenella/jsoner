JAVA=java
JAVAC=javac

all: lex cup parser

parser: 
	$(JAVAC) -d . parser.java sym.java Yylex.java 
	$(JAVA) parser file.json	
cup:
	$(JAVA) java_cup.Main jsoner.cup
lex:
	$(JAVA) JLex.Main jsoner.lex
	mv jsoner.lex.java Yylex.java
clean:
	rm *.class
	rm parser.java sym.java Yylex.java
