grammar MT22;

@lexer::header {
from lexererr import *
# 2152728
}

options{
	language=Python3;
}

program: (variable_declaration | function_declartion| statement)+ |literal EOF ;

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
ASSIGN: '=' ;


/* LITERALS */
literal: INTEGER_LITERAL | FLOAT_LITERAL | BOOLEAN_LITERAL | STRING_LITERAL | array_literal;
INTEGER_LITERAL: ('0' | [1-9][0-9]*('_' [0-9]+)*) { self.text = self.text.replace('_', '') } ;
FLOAT_LITERAL: ('0' | [1-9][0-9]*('_' [0-9]+)*) '.' | ('E'|'e') ('+' | '-')? [0-9]+{ self.text = self.text.replace('_', '') } ;
BOOLEAN_LITERAL: TRUE | FALSE;
STRING_LITERAL: '"' (~[\b\n\f\r\t'"\\] | '\\"' | [\b\f\r\t'] | ('\\' [bnfrt'\\]))* '"' {
    temp = self.text
    self.text = temp[1:-1]
};
array_literal: LEFT_BRACE expression_list RIGHT_BRACE;
// array

//DECLARATION
var_decl: variable_list COLON variable_type (ASSIGN (expression  COMMA expression))  SEMICOLON;
variable_declaration: variable_list COLON variable_type (ASSIGN? );
variable_type: primary_type | AUTO | array_type;
integer_list: INTEGER_LITERAL (COMMA INTEGER_LITERAL)*;
variable_list: Identifiers (COMMA Identifiers)* ;
primary_type: STRING | BOOLEAN | INTEGER | FLOAT;
array_type: ARRAY (LEFT_BRACK integer_list RIGHT_BRACK) OF primary_type;
array_element: Identifiers (LEFT_BRACK expression_list RIGHT_BRACK);

//Functions

function_declartion: main_function| Identifiers COLON FUNCTION (LEFT_PAR parameter_list? RIGHT_PAR) (INHERIT Identifiers)? block_statement;
function_type: variable_type | VOID;
parameter_list: parameter_declaration (COMMA parameter_declaration)*;
parameter_declaration: INHERIT? OUT? parameter_variable COLON variable_type;
parameter_variable: Identifiers(LEFT_BRACK RIGHT_BRACK)?;
main_function: 'main' COLON FUNCTION VOID LEFT_PAR RIGHT_PAR;

//statements
statement: for_statement | if_statement | while_statement | do_while_statement | break_statement | continue_statement | return_statement | call_statement | assign_statement | block_statement;
for_statement: FOR LEFT_PAR Identifiers ASSIGN expression COMMA expression COMMA expression RIGHT_PAR;
if_statement:   IF LEFT_PAR expression RIGHT_PAR statement (ELSE statement)?;
while_statement: WHILE LEFT_PAR expression RIGHT_PAR statement;
do_while_statement: DO statement WHILE LEFT_PAR expression RIGHT_PAR SEMICOLON;
break_statement: BREAK SEMICOLON;
continue_statement: CONTINUE SEMICOLON;
return_statement: RETURN (expression)? SEMICOLON;
block_statement: LEFT_BRACE (statement | variable_declaration)* RIGHT_BRACE;
call_statement: (Identifiers (LEFT_PAR expression_list? RIGHT_PAR)| non_returned_function)* SEMICOLON;
function_call: Identifiers (LEFT_PAR expression_list? RIGHT_PAR)| returned_function;

returned_function: read_Integer | read_Float | read_String | read_Boolean;
non_returned_function: print_Integer | print_Float | read_Float | read_Boolean | super_Func | prevent_Default;

read_Integer: 'readInteger' LEFT_PAR RIGHT_PAR;
print_Integer: 'printInteger' LEFT_PAR expression RIGHT_PAR;
read_Float: 'readFloat' LEFT_PAR RIGHT_PAR;
print_Float: 'printFloat' LEFT_PAR expression RIGHT_PAR;
read_Boolean: 'readBoolean' LEFT_PAR RIGHT_PAR;
print_Boolean: 'printBoolean' LEFT_PAR expression RIGHT_PAR;
read_String: 'readString' LEFT_PAR RIGHT_PAR;
print_String: 'printString' LEFT_PAR expression RIGHT_PAR;
super_Func: 'super' LEFT_PAR expression_list RIGHT_PAR;
prevent_Default: 'preventDefault' LEFT_PAR RIGHT_PAR;
assign_statement: (Identifiers | array_element) ASSIGN  expression SEMICOLON;

//expressions
expression_list: expression (COMMA expression)*;
expression: expression1 SCOPE expression1 | expression1;
expression1: expression1 (EQUAL | NOT_EQUAL | LESS_THAN | LESS_THAN_EQUAL | GREATER_THAN | GREATER_THAN_EQUAL) expression1 | expression2;
expression2: expression2 (AND | OR) expression3 | expression3;
expression3: expression3 (ADD | SUB) expression4 | expression4;
expression4: expression4 (MULT | DIV | MOD) expression5 | expression5;
expression5: NOT expression5 | expression6;
expression6: SUB expression6 | expression7;
expression7: array_element | operands;


operands: literal | (LEFT_PAR expression RIGHT_PAR) | function_call | Identifiers | array_literal;

WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines

/* comment line */
COMMENT_LINE: '//' ~[\n\r\f]* -> skip;
/* Comment block*/
COMMENT_BLOCK: '/''*' .*? '*''/' -> skip;

/* INDENTIFIERS */
Identifiers: [A-Za-z_][A-Za-z0-9_]*;
ERROR_CHAR: .{raise ErrorToken(self.text)};
UNCLOSE_STRING: '"' ( ~[\b\n\f\r\t'"\\] | '\\"' | [\b\f\r\t'] | ('\\' [bnfrt'\\]))* ([\n]|EOF) {
    esc = ['\n']
    temp = str(self.text)
    if (temp[-1] in esc):
        raise UncloseString(temp[1:-1])
    else:
        raise UncloseString(temp[1:])
};
ILLEGAL_ESCAPE: '"' ( ~[\b\n\f\r\t'"\\] | '\\"' | [\b\f\r\t'] | ('\\' [bnfrt'\\]))* ('\\' ~[bnfrt'\\] | ~'\\') {
    temp = self.text
    raise IllegalEscape(temp[1:])
};