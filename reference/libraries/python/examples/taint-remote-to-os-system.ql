/**
 * @name Remote input reaches os.system
 * @description Tracks remote flow sources into os.system calls.
 * @kind path-problem
 * @problem.severity error
 * @id mustlearn/py-remote-to-os-system
 * @tags security
 */
import python
import semmle.python.dataflow.new.DataFlow
import semmle.python.dataflow.new.TaintTracking
import semmle.python.dataflow.new.RemoteFlowSources

module RemoteToOsSystemConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(Call call |
      sink.asExpr() = call.getArg(0) and
      call.getFunc().(Attribute).getName() = "system"
    )
  }
}

module Flow = TaintTracking::Global<RemoteToOsSystemConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Remote input reaches os.system"
