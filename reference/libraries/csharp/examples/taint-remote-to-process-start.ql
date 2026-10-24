/**
 * @name Remote input reaches Process.Start
 * @description Tracks remote flow sources into Process.Start calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/cs-remote-to-process-start
 * @tags security
 */
import csharp
import semmle.code.csharp.dataflow.DataFlow
import semmle.code.csharp.dataflow.TaintTracking
import semmle.code.csharp.security.dataflow.flowsources.Remote

module RemoteToProcessStartConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(MethodCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getTarget().hasName("Start") and
      call.getTarget().getDeclaringType().hasFullyQualifiedName("System.Diagnostics", "Process")
    )
  }
}

module Flow = TaintTracking::Global<RemoteToProcessStartConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches Process.Start"
