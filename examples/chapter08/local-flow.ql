/**
 * @name Local flow into console.log
 * @description Finds values that flow locally into console.log.
 * @kind problem
 * @id mustlearn/js-local-flow
 * @tags security
 * @problem.severity recommendation
 * @precision high
 */
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  DataFlow::localFlow(source, sink) and
  sink = any(CallExpr c | c.getCalleeName() = "console.log").getArgument(0).flow()
select sink, "Value flows locally into console.log."
