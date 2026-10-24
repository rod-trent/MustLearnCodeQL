/**
 * @name Remote input reaches SQL query
 * @description Tracks remote flow sources into SQL query construction.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/cpp-remote-to-sql
 * @tags security
 */
import cpp
import semmle.code.cpp.dataflow.new.DataFlow
import semmle.code.cpp.dataflow.new.TaintTracking
import semmle.code.cpp.security.FlowSources

module RemoteToSqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(FunctionCall call |
      sink.asExpr() = call.getArgument(0) and
      call.getTarget().hasGlobalName(["mysql_query", "sqlite3_exec"])
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSqlConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches SQL query"
