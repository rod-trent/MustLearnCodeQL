/**
 * @name Source-to-sink skeleton
 * @description Template for a local taint-tracking query.
 * @kind path-problem
 * @id mustlearn/java-source-to-sink
 */
import java
import semmle.code.java.dataflow.DataFlow
import semmle.code.java.dataflow.TaintTracking

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  sink.asExpr() instanceof MethodAccess and
  TaintTracking::localTaint(source, sink)
select sink, source, sink, "Potential taint flow"
