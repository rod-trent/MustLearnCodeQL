/**
 * @name Remote input reaches Process launch
 * @description Tracks remote flow sources into process launch calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/swift-remote-to-process
 * @tags security
 */
import swift
import codeql.swift.dataflow.DataFlow
import codeql.swift.dataflow.TaintTracking
import codeql.swift.dataflow.FlowSources

module RemoteToProcessConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(CallExpr call |
      sink.asExpr() = call.getArgument(0).getExpr() and
      call.getStaticTarget().getName() = "Process"
    )
  }
}

module Flow = TaintTracking::Global<RemoteToProcessConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches process launch"
