/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/go-empty-functions
 */
import go

from FuncDecl f
where not exists(f.getBody().getAStmt())
select f, "Empty function"
