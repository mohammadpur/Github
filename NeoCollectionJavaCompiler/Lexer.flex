import java_cup.runtime.Symbol;
%%

%class Lexer
%cup

letter = [a-zA-Z]
digit = [0-9]
ID = {letter}+{digit}*
NUM = {digit}+
WhiteSpace = [ \n\r\t]
Comment = "//"[^\n\r]*

%%

{WhiteSpace} {/*do nothing*/}
{Comment} {/*do nothing*/}
"class" {return new Symbol(sym.CLASS);}
"public" {return new Symbol(sym.PUBLIC);}
"private" {return new Symbol(sym.PRIVATE);}
"static" {return new Symbol(sym.STATIC);}
"this" {return new Symbol(sym.THIS);}
"new" {return new Symbol(sym.NEW);}
"addto" {return new Symbol(sym.ADDTO);}
"operation" {return new Symbol(sym.operation);}
";" {return new Symbol(sym.SEMI);}
"," {return new Symbol(sym.COMMA);}
"." {return new Symbol(sym.DOT);}
"[" {return new Symbol(sym.LBRACK);}
"]" {return new Symbol(sym.RBRACK);}
"int" {return new Symbol(sym.INT);}
"void" {return new Symbol(sym.VOID);}
"boolean" {return new Symbol(sym.BOOLEAN);}
"(" {return new Symbol(sym.LPAREN);}
")" {return new Symbol(sym.RPAREN);}
"{" {return new Symbol(sym.LBRACE);}
"}" {return new Symbol(sym.RBRACE);}
"while" {return new Symbol(sym.WHILE);}
"return" {return new Symbol(sym.RETURN);}
"=" {return new Symbol(sym.EQ);}
"||" {return new Symbol(sym.OR);}
"&&" {return new Symbol(sym.AND);}
"!" {return new Symbol(sym.NOT);}
"<=" {return new Symbol(sym.LTEQ);}
"<" {return new Symbol(sym.LT);}
">" {return new Symbol(sym.GT);}
">=" {return new Symbol(sym.GTEQ);}
"==" {return new Symbol(sym.EQEQ);}
"!=" {return new Symbol(sym.NOTEQ);}
"+" {return new Symbol(sym.PLUS);}
"-" {return new Symbol(sym.MINUS);}
"*" {return new Symbol(sym.TIMES);}
"/" {return new Symbol(sym.DIV);}
"%" {return new Symbol(sym.MOD);}
"false" {return new Symbol(sym.FALSE);}
"true" {return new Symbol(sym.TRUE);}
{ID} {return new Symbol(sym.ID,yytext());}
{NUM} {return new Symbol(sym.NUM,Integer.parseInt(yytext()));}