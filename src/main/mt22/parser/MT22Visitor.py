# Generated from main/mt22/parser/MT22.g4 by ANTLR 4.13.1
from antlr4 import *
if "." in __name__:
    from .MT22Parser import MT22Parser
else:
    from MT22Parser import MT22Parser

# This class defines a complete generic visitor for a parse tree produced by MT22Parser.

class MT22Visitor(ParseTreeVisitor):

    # Visit a parse tree produced by MT22Parser#program.
    def visitProgram(self, ctx:MT22Parser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#literal.
    def visitLiteral(self, ctx:MT22Parser.LiteralContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#array_literal.
    def visitArray_literal(self, ctx:MT22Parser.Array_literalContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#var_decl.
    def visitVar_decl(self, ctx:MT22Parser.Var_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#variable_declaration.
    def visitVariable_declaration(self, ctx:MT22Parser.Variable_declarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#variable_type.
    def visitVariable_type(self, ctx:MT22Parser.Variable_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#integer_list.
    def visitInteger_list(self, ctx:MT22Parser.Integer_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#variable_list.
    def visitVariable_list(self, ctx:MT22Parser.Variable_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#primary_type.
    def visitPrimary_type(self, ctx:MT22Parser.Primary_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#array_type.
    def visitArray_type(self, ctx:MT22Parser.Array_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#array_element.
    def visitArray_element(self, ctx:MT22Parser.Array_elementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#function_declartion.
    def visitFunction_declartion(self, ctx:MT22Parser.Function_declartionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#function_type.
    def visitFunction_type(self, ctx:MT22Parser.Function_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#parameter_list.
    def visitParameter_list(self, ctx:MT22Parser.Parameter_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#parameter_declaration.
    def visitParameter_declaration(self, ctx:MT22Parser.Parameter_declarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#parameter_variable.
    def visitParameter_variable(self, ctx:MT22Parser.Parameter_variableContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#main_function.
    def visitMain_function(self, ctx:MT22Parser.Main_functionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#statement.
    def visitStatement(self, ctx:MT22Parser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#for_statement.
    def visitFor_statement(self, ctx:MT22Parser.For_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#if_statement.
    def visitIf_statement(self, ctx:MT22Parser.If_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#while_statement.
    def visitWhile_statement(self, ctx:MT22Parser.While_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#do_while_statement.
    def visitDo_while_statement(self, ctx:MT22Parser.Do_while_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#break_statement.
    def visitBreak_statement(self, ctx:MT22Parser.Break_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#continue_statement.
    def visitContinue_statement(self, ctx:MT22Parser.Continue_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#return_statement.
    def visitReturn_statement(self, ctx:MT22Parser.Return_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#block_statement.
    def visitBlock_statement(self, ctx:MT22Parser.Block_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#call_statement.
    def visitCall_statement(self, ctx:MT22Parser.Call_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#function_call.
    def visitFunction_call(self, ctx:MT22Parser.Function_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#returned_function.
    def visitReturned_function(self, ctx:MT22Parser.Returned_functionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#non_returned_function.
    def visitNon_returned_function(self, ctx:MT22Parser.Non_returned_functionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#read_Integer.
    def visitRead_Integer(self, ctx:MT22Parser.Read_IntegerContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#print_Integer.
    def visitPrint_Integer(self, ctx:MT22Parser.Print_IntegerContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#read_Float.
    def visitRead_Float(self, ctx:MT22Parser.Read_FloatContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#print_Float.
    def visitPrint_Float(self, ctx:MT22Parser.Print_FloatContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#read_Boolean.
    def visitRead_Boolean(self, ctx:MT22Parser.Read_BooleanContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#print_Boolean.
    def visitPrint_Boolean(self, ctx:MT22Parser.Print_BooleanContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#read_String.
    def visitRead_String(self, ctx:MT22Parser.Read_StringContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#print_String.
    def visitPrint_String(self, ctx:MT22Parser.Print_StringContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#super_Func.
    def visitSuper_Func(self, ctx:MT22Parser.Super_FuncContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#prevent_Default.
    def visitPrevent_Default(self, ctx:MT22Parser.Prevent_DefaultContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#assign_statement.
    def visitAssign_statement(self, ctx:MT22Parser.Assign_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression_list.
    def visitExpression_list(self, ctx:MT22Parser.Expression_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression.
    def visitExpression(self, ctx:MT22Parser.ExpressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression1.
    def visitExpression1(self, ctx:MT22Parser.Expression1Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression2.
    def visitExpression2(self, ctx:MT22Parser.Expression2Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression3.
    def visitExpression3(self, ctx:MT22Parser.Expression3Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression4.
    def visitExpression4(self, ctx:MT22Parser.Expression4Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression5.
    def visitExpression5(self, ctx:MT22Parser.Expression5Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression6.
    def visitExpression6(self, ctx:MT22Parser.Expression6Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#expression7.
    def visitExpression7(self, ctx:MT22Parser.Expression7Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MT22Parser#operands.
    def visitOperands(self, ctx:MT22Parser.OperandsContext):
        return self.visitChildren(ctx)



del MT22Parser