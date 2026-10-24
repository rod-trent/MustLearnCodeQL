/**
 * @name Remote input reaches Runtime.exec
 * @description Tracks remote flow sources into Runtime.exec calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/java-remote-to-runtime-exec
 * @tags security
 */
import java
import semmle.code.java.dataflow.DataFlow
import semmle.code.java.dataflow.TaintTracking
import semmle.code.java.dataflow.FlowSources

module RemoteToExecConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(MethodCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getMethod().hasName("exec")
    )
  }
}

module Flow = TaintTracking::Global<RemoteToExecConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches Runtime.exec"
