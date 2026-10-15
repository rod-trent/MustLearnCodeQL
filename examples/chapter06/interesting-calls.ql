/**
 * @kind problem
 * @id mustlearn/interesting-calls
 * @name Interesting calls
 * @description Example of a custom predicate used in a query.
 */

import javascript

predicate isInterestingCall(CallExpr c) {
  c.getCalleeName() = "eval" or
  c.getCalleeName() = "Function"
}

from CallExpr c
where isInterestingCall(c)
select c, "Found an interesting call."
