/**
 * @name Calls to eval
 * @description Finds calls to the eval function.
 * @kind problem
 * @id mustlearn/js-calls-to-eval
 * @tags security
 * @problem.severity warning
 * @precision high
 */
import javascript

from CallExpr c
where c.getCalleeName() = "eval"
select c, "Call to eval."
