/**
 * @name Source-to-sink skeleton
 * @description Template for a local data-flow query.
 * @kind problem
 * @id mustlearn/go-source-to-sink
 */
import go
import semmle.go.dataflow.DataFlow

from DataFlow::Node source, DataFlow::Node sink
where DataFlow::localFlow(source, sink)
select sink, "Local flow from " + source
