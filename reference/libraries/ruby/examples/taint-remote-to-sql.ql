/**
 * @name Remote input reaches SQL query
 * @description Tracks remote flow sources into SQL query construction.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/ruby-remote-to-sql
 * @tags security
 */
import ruby
import codeql.ruby.DataFlow
import codeql.ruby.TaintTracking
import codeql.ruby.security.FlowSources

module RemoteToSqlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(Call call |
      sink.asExpr() = call.getArgument(0) and
      call.getMethodName() in ["execute", "query"]
    )
  }
}

module Flow = TaintTracking::Global<RemoteToSqlConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches SQL query"
