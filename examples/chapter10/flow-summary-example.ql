/**
 * @name Flow summary style example
 * @description Illustrates the idea of a flow summary (simplified).
 *              In production this would live in a model pack.
 * @kind problem
 * @id mustlearn/js-flow-summary-example
 * @tags security
 * @problem.severity recommendation
 * @precision medium
 */
import javascript

// Simplified illustration: a call to transform(x) is modeled as flowing
// its argument to its return value.
predicate transforms(DataFlow::Node arg, DataFlow::Node ret) {
  exists(CallExpr c |
    c.getCalleeName() = "transform" and
    arg = c.getArgument(0).flow() and
    ret = c.flow()
  )
}

from DataFlow::Node source, DataFlow::Node sink
where
  transforms(source, sink) and
  source instanceof RemoteFlowSource
select sink, "Flow through modeled transform function."
