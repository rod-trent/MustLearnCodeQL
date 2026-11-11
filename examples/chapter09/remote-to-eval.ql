/**
 * @name Remote source to eval
 * @description Tracks remote (attacker-controlled) sources to calls to eval.
 * @kind path-problem
 * @id mustlearn/js-remote-to-eval
 * @tags security
 * @problem.severity error
 * @precision high
 * @security-severity 9.0
 */
import javascript
import DataFlow::PathGraph

class RemoteToEvalConfig extends TaintTracking::Configuration {
  RemoteToEvalConfig() { this = "RemoteToEvalConfig" }

  override predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
  }
}

from RemoteToEvalConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Remote data flows to eval."
