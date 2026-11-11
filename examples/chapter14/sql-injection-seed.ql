/**
 * @name SQL injection seed
 * @description Simplified seed: remote data flowing to a query execution call.
 * @kind path-problem
 * @id mustlearn/js-sql-injection-seed
 * @tags security
 * @problem.severity error
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

class SqlSeedConfig extends TaintTracking::Configuration {
  SqlSeedConfig() { this = "SqlSeedConfig" }

  override predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName().matches("%query%") or
                             c.getCalleeName().matches("%execute%")).getArgument(0).flow()
  }
}

from SqlSeedConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Possible SQL injection."
