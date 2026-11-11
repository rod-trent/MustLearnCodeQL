/**
 * @name Local flow into eval
 * @description Finds values that flow into a call to eval within the same function.
 * @kind problem
 * @id mustlearn/js-local-flow-to-eval
 * @tags security
 * @problem.severity warning
 * @precision high
 */
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow() and
  DataFlow::localFlow(source, sink)
select sink, "Value flows into eval: " + source
