/**
 * @kind problem
 * @id mustlearn/exercise-barrier
 * @name Exercise: add a barrier
 * @description Starter query for practicing barriers.
 */

import javascript

module Config implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node n) { n instanceof RemoteFlowSource }
  predicate isSink(DataFlow::Node n) { n instanceof DomBasedXssSink }

  // TODO: add an isBarrier predicate that stops flow through
  // a function named "sanitize" or "escapeHtml"
}

module Flow = TaintTracking::Global<Config>;

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), "XSS path (add a barrier to reduce false positives)"
