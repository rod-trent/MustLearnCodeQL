/**
 * @name Remote input reaches SQL query
 * @description Tracks remote flow sources into SQL query construction.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/swift-remote-to-sql
 * @tags security
 */
import swift
import codeql.swift.dataflow.DataFlow
import codeql.swift.dataflow.TaintTracking
import codeql.swift.dataflow.FlowSources

module RemoteToSqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(CallExpr call |
      sink.asExpr() = call.getArgument(0).getExpr() and
      call.getStaticTarget().getName() in ["execute", "query"]
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSqlConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches SQL query"
