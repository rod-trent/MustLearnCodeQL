/**
 * @name Partial flow debug skeleton
 * @description Skeleton for investigating why a flow stops.
 *              Use local flow or intermediate sinks to locate the break.
 * @kind problem
 * @id mustlearn/js-partial-flow-debug
 * @tags security
 * @problem.severity recommendation
 * @precision medium
 */
import javascript

from DataFlow::Node source, DataFlow::Node mid
where
  source instanceof RemoteFlowSource and
  DataFlow::localFlow(source, mid) and
  // mid is an intermediate point you suspect is the last successful step
  mid = any(Expr e).flow()
select mid, "Reached this intermediate node from a remote source."
