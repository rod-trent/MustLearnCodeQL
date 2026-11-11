/**
 * @name XSS seed
 * @description Simplified seed: remote data flowing to a DOM write.
 * @kind path-problem
 * @id mustlearn/js-xss-seed
 * @tags security
 * @problem.severity error
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

class XssSeedConfig extends TaintTracking::Configuration {
  XssSeedConfig() { this = "XssSeedConfig" }

  override predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName() = "document.write" or
                             c.getCalleeName() = "innerHTML").getArgument(0).flow()
  }
}

from XssSeedConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Possible XSS."
