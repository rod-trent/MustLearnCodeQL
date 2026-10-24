/**
 * @name Remote input reaches system
 * @description Tracks remote flow sources into system calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/ruby-remote-to-system
 * @tags security
 */
import ruby
import codeql.ruby.DataFlow
import codeql.ruby.TaintTracking
import codeql.ruby.security.FlowSources

module RemoteToSystemConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(Call call |
      sink.asExpr() = call.getArgument(0) and
      call.getMethodName() = "system"
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSystemConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches system"
