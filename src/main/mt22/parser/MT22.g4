
grammar MT22;

@lexer::header {
from lexererr import *
# 2152728
}

options{
	language=Python3;
}

program: EOF ;

/* comment line */
COMMENT_LINE: '//' ~[\n\r\f]* -> skip;
/* Comment block*/
COMMENT_BLOCK: '/''*' .*? '*''/' -> skip;

/* INDENTIFIERS */
Identifiers: [A-Za-z_][A-Za-z0-9_]*;

/* KEYWORDS */

AUTO: 'auto' ;
BREAK: 'break' ;
BOOLEAN: 'boolean' ;
DO: 'do' ;
ELSE: 'else' ;
FALSE: 'false' ;
FLOAT: 'float' ;
FOR: 'for' ;
FUNCTION: 'function' ;
IF: 'if' ;
INTEGER: 'integer' ;
RETURN: 'return' ;
STRING: 'string' ;
TRUE: 'true' ;
WHILE: 'while' ;
VOID: 'void' ;
OUT: 'out' ;
CONTINUE: 'continue' ;
OF: 'of' ;
INHERIT: 'inherit' ;
ARRAY: 'array' ;

/* Operators */

ADD: '+' ;
SUB: '-' ;
MULT: '*' ;
DIV: '/' ;
MOD: '%' ;
NOT: '!' ;
AND: '&&' ;
OR: '||' ;
EQUAL: '==' ;
NOT_EQUAL: '!=' ;
LESS_THAN: '<' ;
LESS_THAN_EQUAL: '<=' ;
GREATER_THAN: '>' ;
GREATER_THAN_EQUAL: '>=' ;
SCOPE: '::' ;

/* OPERATORS */
LEFT_PAR: '(' ;
RIGHT_PAR: ')' ;
LEFT_BRACK: '[' ;
RIGHT_BRACK: ']' ;
DOT: '.' ;
COMMA: ',' ;
SEMICOLON: ';' ;
COLON: ':' ;
LEFT_BRACE: '{' ;
RIGHT_BRACE: '}' ;
EQUALS: '=' ;


/* LITERALS */
INTEGER_LITERAL: ('0' | [1-9][0-9]*('_' [0-9]+)*){ self.text = self.text.replace('_', '') } ;
WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines

ERROR_CHAR: .;
UNCLOSE_STRING: .;
ILLEGAL_ESCAPE: .;