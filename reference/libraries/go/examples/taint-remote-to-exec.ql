/**
 * @name Remote input reaches os/exec
 * @description Tracks remote flow sources into exec.Command calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/go-remote-to-exec
 * @tags security
 */
import go
import semmle.go.dataflow.DataFlow
import semmle.go.dataflow.TaintTracking
import semmle.go.security.FlowSources

module RemoteToExecConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(DataFlow::CallNode call |
      sink = call.getArgument(0) and
      call.getTarget().hasQualifiedName("os/exec", "Command")
    )
  }
}

module Flow = TaintTracking::Global<RemoteToExecConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches exec.Command"
