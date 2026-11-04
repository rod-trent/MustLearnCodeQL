/**
 * @name Empty functions (refined)
 * @description Finds empty functions that are not constructors or getters/setters.
 * @kind problem
 * @id mustlearn/js-empty-functions-refined
 * @tags maintainability
 * @problem.severity recommendation
 * @precision high
 */
import javascript

from Function f
where
  not exists(f.getAStmt()) and
  not f.isConstructor() and
  not f.isGetter() and
  not f.isSetter()
select f, "Empty function: " + f.getName()
