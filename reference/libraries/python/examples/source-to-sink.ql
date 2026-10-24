/**
 * @name Source-to-sink skeleton
 * @description Template for a local taint-tracking query.
 * @kind path-problem
 * @id mustlearn/py-source-to-sink
 */
import python
import semmle.python.dataflow.new.DataFlow
import semmle.python.dataflow.new.TaintTracking

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  sink = any(Call c | c.getFunc().(Name).getId() = "eval").getArg(0).flow() and
  TaintTracking::localTaint(source, sink)
select sink, source, sink, "Potential flow into eval"
