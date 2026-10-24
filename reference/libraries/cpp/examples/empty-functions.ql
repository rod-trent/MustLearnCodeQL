/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/cpp-empty-functions
 */
import cpp

from Function f
where not exists(f.getBlock().getAStmt())
select f, "Empty function"
