/**
 * @name Empty methods
 * @description Finds methods with no statements in the body.
 * @kind problem
 * @id mustlearn/ruby-empty-methods
 */
import ruby

from Method m
where not exists(m.getAStmt())
select m, "Empty method"
