package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L = [a-zA-Z_]+
D = [0-9]+
espacio = [ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
%%
int {return new Symnol(sym.Int, yychar, yyline, yytext());}
for {return new Symnol(sym.For, yychar, yyline, yytext());}
if {return new Symnol(sym.If, yychar, yyline, yytext());}
else {return new Symnol(sym.Else, yychar, yyline, yytext());}
while {return new Symnol(sym.While, yychar, yyline, yytext());}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return new Symnol(sym.Igual, yychar, yyline, yytext());}
"+" {return new Symnol(sym.Suma, yychar, yyline, yytext());}
"-" {return new Symnol(sym.Resta, yychar, yyline, yytext());}
"*" {return new Symnol(sym.Multiplicacion, yychar, yyline, yytext());}
"/" {return new Symnol(sym.Division, yychar, yyline, yytext());}
"(" {return new Symnol(sym.Parentesis_a, yychar, yyline, yytext());}
")" {return new Symnol(sym.Parentesis_c, yychar, yyline, yytext());}
"{" {return new Symnol(sym.Llave_a, yychar, yyline, yytext());}
"]" {return new Symnol(sym.Llave_c, yychar, yyline, yytext());}
"main" {return new Symnol(sym.Main, yychar, yyline, yytext());}
";" {return new Symnol(sym.P_coma, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symnol(sym.Identificador, yychar, yyline, yytext());}
("(-"{D}+")")|{D}+ {return new Symnol(sym.Numero, yychar, yyline, yytext());}
 . {return new Symnol(sym.ERROR, yychar, yyline, yytext());}