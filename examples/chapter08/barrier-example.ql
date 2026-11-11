/**
 * @name Barrier example
 * @description Demonstrates a barrier that stops flow through a sanitizer call.
 * @kind problem
 * @id mustlearn/js-barrier-example
 * @tags security
 * @problem.severity recommendation
 * @precision high
 */
import javascript

class SanitizerConfig extends DataFlow::Configuration {
  SanitizerConfig() { this = "SanitizerConfig" }

  override predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
  }

  override predicate isBarrier(DataFlow::Node node) {
    // Stop flow through calls to a sanitizer function
    node = any(CallExpr c | c.getCalleeName() = "sanitize").getArgument(0).flow()
  }
}

from SanitizerConfig cfg, DataFlow::Node source, DataFlow::Node sink
where cfg.hasFlow(source, sink)
select sink, "Flow that bypassed the sanitizer barrier."
