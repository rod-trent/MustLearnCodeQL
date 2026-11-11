/**
 * @name Global flow skeleton
 * @description Minimal skeleton of a global data-flow configuration.
 *              Replace the source and sink predicates with real ones for a working query.
 * @kind path-problem
 * @id mustlearn/js-global-flow-skeleton
 * @tags security
 * @problem.severity warning
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

module FlowConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
  }

  // Optional: block flow through certain nodes
  // predicate isBarrier(DataFlow::Node node) { ... }

  // Optional: add custom flow steps
  // predicate isAdditionalFlowStep(DataFlow::Node pred, DataFlow::Node succ) { ... }
}

module Flow = DataFlow::Global<FlowConfig>;

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Flow from remote source to eval"
