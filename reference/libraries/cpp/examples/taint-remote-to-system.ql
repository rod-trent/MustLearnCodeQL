/**
 * @name Remote input reaches system
 * @description Tracks remote flow sources into system calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/cpp-remote-to-system
 * @tags security
 */
import cpp
import semmle.code.cpp.dataflow.new.DataFlow
import semmle.code.cpp.dataflow.new.TaintTracking
import semmle.code.cpp.security.FlowSources

module RemoteToSystemConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(FunctionCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getTarget().hasGlobalName("system")
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSystemConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches system"
