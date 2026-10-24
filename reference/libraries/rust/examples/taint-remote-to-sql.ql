/**
 * @name Remote input reaches SQL query
 * @description Tracks remote flow sources into SQL query construction.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/rust-remote-to-sql
 * @tags security
 */
import rust
import codeql.rust.dataflow.DataFlow
import codeql.rust.dataflow.TaintTracking
import codeql.rust.dataflow.FlowSources

module RemoteToSqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(CallExpr call |
      sink.asExpr() = call.getArg(0) and
      call.getStaticTarget().getName() in ["query", "execute"]
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSqlConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches SQL query"
