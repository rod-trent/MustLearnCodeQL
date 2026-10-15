/**
 * @kind path-problem
 * @id mustlearn/example-xss
 * @name Example DOM XSS
 * @description Illustrative path query for DOM XSS.
 * @problem.severity error
 */

import javascript

module XssConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node n) { n instanceof RemoteFlowSource }
  predicate isSink(DataFlow::Node n) { n instanceof DomBasedXssSink }
}

module XssFlow = TaintTracking::Global<XssConfig>;
import XssFlow::PathGraph

from XssFlow::PathNode source, XssFlow::PathNode sink
where XssFlow::flowPath(source, sink)
select sink.getNode(), source, sink, "XSS via $@.", source.getNode(), "user input"
