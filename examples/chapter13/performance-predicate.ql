/**
 * @kind problem
 * @id mustlearn/performance-example
 * @name Performance-conscious predicate
 * @description Example of a well-structured predicate for better performance.
 */

import javascript

/** Prefer specific predicates over broad joins. */
predicate isDirectEval(CallExpr c) {
  c.getCalleeName() = "eval" and
  not c.getCallee().(Function).getName().regexpMatch(".*wrapper.*")
}

from CallExpr c
where isDirectEval(c)
select c, "Direct eval call (performance-conscious version)."
