/**
 * @name Local taint to eval
 * @description Local (intra-procedural) taint from remote sources to eval.
 * @kind problem
 * @id mustlearn/js-local-taint-to-eval
 */
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  TaintTracking::localTaint(source, sink) and
  sink.asExpr().(CallExpr).getCalleeName() = "eval"
select sink, "Local taint reaches eval"
