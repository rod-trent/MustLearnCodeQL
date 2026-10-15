/**
 * @kind path-problem
 * @id mustlearn/case-study-sql
 * @name Example SQL injection path
 * @description Simplified case-study style path query.
 * @problem.severity error
 */

import javascript

module SqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node n) { n instanceof RemoteFlowSource }
  predicate isSink(DataFlow::Node n) {
    // Placeholder sink – replace with real SQL sink in production
    n.asExpr().(CallExpr).getCalleeName() = "query"
  }
}

module SqlFlow = TaintTracking::Global<SqlConfig>;
import SqlFlow::PathGraph

from SqlFlow::PathNode source, SqlFlow::PathNode sink
where SqlFlow::flowPath(source, sink)
select sink.getNode(), source, sink, "Potential SQL injection from $@.", source.getNode(), "user input"
