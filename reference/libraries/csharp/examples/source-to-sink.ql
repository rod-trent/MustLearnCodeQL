/**
 * @name Source-to-sink skeleton
 * @description Template for a local taint-tracking query.
 * @kind problem
 * @id mustlearn/cs-source-to-sink
 */
import csharp
import semmle.code.csharp.dataflow.DataFlow
import semmle.code.csharp.dataflow.TaintTracking

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  TaintTracking::localTaint(source, sink)
select sink, "Potential taint flow"
