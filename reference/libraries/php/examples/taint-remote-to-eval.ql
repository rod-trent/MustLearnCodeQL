/**
 * @name Remote input reaches eval
 * @description Tracks remote flow sources into eval calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/php-remote-to-eval
 * @tags security
 */
import php

module RemoteToEvalConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(FunctionCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getTarget().getName() = "eval"
    )
  }
}

module Flow = TaintTracking::Global<RemoteToEvalConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches eval"
