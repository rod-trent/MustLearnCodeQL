/**
 * @name Source-to-sink skeleton
 * @description Template for a local data-flow query.
 * @kind problem
 * @id mustlearn/cpp-source-to-sink
 */
import cpp
import semmle.code.cpp.dataflow.DataFlow

from DataFlow::Node source, DataFlow::Node sink
where
  source.asExpr() instanceof FunctionCall and
  DataFlow::localFlow(source, sink)
select sink, "Local flow from " + source
