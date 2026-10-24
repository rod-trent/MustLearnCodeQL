/**
 * @name Remote input reaches Command
 * @description Tracks remote flow sources into std::process::Command.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/rust-remote-to-command
 * @tags security
 */
import rust
import codeql.rust.dataflow.DataFlow
import codeql.rust.dataflow.TaintTracking
import codeql.rust.dataflow.FlowSources

module RemoteToCommandConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(CallExpr call |
      sink.asExpr() = call.getArg(0) and
      call.getStaticTarget().getName() = "Command"
    )
  }
}

module Flow = TaintTracking::Global<RemoteToCommandConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches Command"
