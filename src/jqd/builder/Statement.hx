package jqd.builder;

import haxe.macro.Expr;

enum AsyncOption {
	OptNone;
	OptVar(varName: String);
	OptReturn;
}

enum AsyncExpr {	
	SAsyncExpr(expr: Expr);
	SAsyncCall(expr: Expr);
	SAsyncBlock(ctx: DeferredAstContext, pos: Position);
}

enum StatementContent {
	SSync(expr: Expr);
	SAsync(expr: AsyncExpr, opt: AsyncOption);
}