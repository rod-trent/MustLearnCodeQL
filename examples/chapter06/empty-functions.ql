/**
 * @name Empty functions
 * @description Finds functions that contain no statements.
 * @kind problem
 * @id mustlearn/js-empty-functions
 * @tags maintainability
 * @problem.severity recommendation
 * @precision high
 */
import javascript

from Function f
where not exists(f.getAStmt())
select f, "This function is empty."
