/**
 * @name Path query skeleton
 * @description Skeleton of a path-problem query. Replace the placeholders.
 * @kind path-problem
 * @id mustlearn/js-path-query-skeleton
 * @tags security
 * @problem.severity warning
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

class MyTaintConfig extends TaintTracking::Configuration {
  MyTaintConfig() { this = "MyTaintConfig" }

  override predicate isSource(DataFlow::Node source) {
    // Placeholder
    none()
  }

  override predicate isSink(DataFlow::Node sink) {
    // Placeholder
    none()
  }
}

from MyTaintConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Taint path from source to sink."
