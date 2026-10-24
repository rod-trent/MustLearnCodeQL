/**
 * @name Empty functions
 * @description Finds functions with no statements in the body.
 * @kind problem
 * @id mustlearn/js-empty-functions
 */
import javascript

from Function f
where not exists(f.getAStmt())
select f, "Empty function"
