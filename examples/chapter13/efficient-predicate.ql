/**
 * @name Efficient predicate example
 * @description Shows a predicate that avoids unnecessary work.
 * @kind problem
 * @id mustlearn/js-efficient-predicate
 * @tags maintainability
 * @problem.severity recommendation
 * @precision high
 */
import javascript

// Prefer a direct, indexed lookup over a broad exists when possible.
predicate isEmptyFunction(Function f) {
  not exists(f.getAStmt())
}

from Function f
where isEmptyFunction(f)
select f, "Empty function."
