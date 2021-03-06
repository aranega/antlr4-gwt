/**
 * 
 * @author Vincent Aranega
 * 
 */
grammar SimpleG;

@lexer::header {
package org.antlr4gwt.demo.shared.grammar;
//This file had been generated by Antlr4.4 the desktop version
}

@parser::header {
package org.antlr4gwt.demo.shared.grammar;
//This file had been generated by Antlr4.4 the desktop version
}

root : expr+;

expr : 
	cell
|	NUMBER
|	STRING
|	WORD
;

cell : LEFT_P first_cell params+=expr (params+=expr)* RIGHT_P;

first_cell : 
	cell
|	OP
|	WORD
;

LEFT_P	:	'(';
RIGHT_P	:	')';
OP		:   '+' | '-' | '*' | '/' | 'mod';
STRING	:	'\''~[']*'\'';
WORD	:	[a-zA-Z0-9_]+;
NUMBER	:	[0-9]+;
WS		:	[ \t\n\r]+	->	skip;