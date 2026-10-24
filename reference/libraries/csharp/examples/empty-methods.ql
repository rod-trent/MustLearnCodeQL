/**
 * @name Empty methods
 * @description Finds methods with no statements in the body.
 * @kind problem
 * @id mustlearn/cs-empty-methods
 */
import csharp

from Method m
where not exists(m.getBody().getAStmt())
select m, "Empty method"
