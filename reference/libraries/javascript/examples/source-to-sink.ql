/**
 * @name Source-to-sink skeleton
 * @description Template for a local taint-tracking query.
 * @kind path-problem
 * @id mustlearn/js-source-to-sink
 */
import javascript
import DataFlow::PathGraph

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow() and
  TaintTracking::localTaint(source, sink)
select sink, source, sink, "Potential flow into eval"
