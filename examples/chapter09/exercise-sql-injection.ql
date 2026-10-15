/**
 * @kind path-problem
 * @id mustlearn/exercise-sql
 * @name Exercise: basic SQL injection
 * @description Starter for the SQL injection exercise.
 * @problem.severity error
 */

import javascript

module SqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node n) { n instanceof RemoteFlowSource }

  predicate isSink(DataFlow::Node n) {
    // TODO: replace with a real sink or keep as exercise
    n.asExpr().(CallExpr).getCalleeName() = "query"
  }
}

module SqlFlow = TaintTracking::Global<SqlConfig>;
import SqlFlow::PathGraph

from SqlFlow::PathNode source, SqlFlow::PathNode sink
where SqlFlow::flowPath(source, sink)
select sink.getNode(), source, sink, "Potential SQL injection from $@.", source.getNode(), "user input"
