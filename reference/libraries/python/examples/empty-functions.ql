/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/py-empty-functions
 */
import python

from Function f
where not exists(f.getAStmt())
select f, "Empty function"
