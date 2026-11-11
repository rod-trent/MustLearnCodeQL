/**
 * @name Taint vs pure data flow
 * @description Demonstrates that taint tracking follows through string operations where pure data flow does not.
 * @kind problem
 * @id mustlearn/js-taint-vs-dataflow
 * @tags security
 * @problem.severity recommendation
 * @precision high
 */
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  // Pure data flow stops at string concatenation; taint does not
  TaintTracking::localTaint(source, sink) and
  not DataFlow::localFlow(source, sink) and
  sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
select sink, "Taint reaches eval but pure data flow does not."
