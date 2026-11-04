/**
 * @name List functions
 * @description Lists every function and its name.
 * @kind problem
 * @id mustlearn/js-list-functions
 * @tags maintainability
 * @problem.severity recommendation
 * @precision high
 */
import javascript

from Function f
select f, "Function: " + f.getName()
