/**
 * @kind problem
 * @id mustlearn/eval-call
 * @name Direct eval call
 * @description Finds direct calls to eval.
 */

import javascript

predicate isEvalCall(CallExpr call) {
  call.getCalleeName() = "eval"
}

from CallExpr c
where isEvalCall(c)
select c, "Direct call to eval."
