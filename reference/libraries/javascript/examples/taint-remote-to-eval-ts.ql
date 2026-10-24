/**
 * @name Remote input reaches eval (TypeScript)
 * @description Tracks remote flow sources into eval calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/ts-remote-to-eval
 * @tags security
 */
import javascript

module RemoteToEvalConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    sink.asExpr().(CallExpr).getCalleeName() = "eval"
  }
}

module Flow = TaintTracking::Global<RemoteToEvalConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches eval"
