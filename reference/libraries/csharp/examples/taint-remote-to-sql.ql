/**
 * @name Remote input reaches SQL query
 * @description Tracks remote flow sources into SQL command construction.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/cs-remote-to-sql
 * @tags security
 */
import csharp
import semmle.code.csharp.dataflow.DataFlow
import semmle.code.csharp.dataflow.TaintTracking
import semmle.code.csharp.security.dataflow.flowsources.Remote

module RemoteToSqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(MethodCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getTarget().hasName(["ExecuteReader", "ExecuteNonQuery", "ExecuteScalar"])
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSqlConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches SQL query"
