/**
 * @name Global flow skeleton
 * @description Skeleton of a global data-flow configuration.
 *              Replace the placeholders with real sources and sinks.
 * @kind path-problem
 * @id mustlearn/js-global-flow-skeleton
 * @tags security
 * @problem.severity warning
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

class MyConfig extends DataFlow::Configuration {
  MyConfig() { this = "MyConfig" }

  override predicate isSource(DataFlow::Node source) {
    // Placeholder: e.g. source instanceof RemoteFlowSource
    none()
  }

  override predicate isSink(DataFlow::Node sink) {
    // Placeholder: e.g. sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
    none()
  }
}

from MyConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Global flow from source to sink."
