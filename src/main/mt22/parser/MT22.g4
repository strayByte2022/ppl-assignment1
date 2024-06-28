
grammar MT22;

@lexer::header {
from lexererr import *
//2152728
}

options{
	language=Python3;
}

program: EOF ;

WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines

ERROR_CHAR: .;
UNCLOSE_STRING: .;
ILLEGAL_ESCAPE: .;