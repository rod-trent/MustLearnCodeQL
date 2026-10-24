/**
 * @name Source-to-sink skeleton
 * @description Template for a local data-flow query.
 * @kind problem
 * @id mustlearn/rust-source-to-sink
 */
import rust
import codeql.rust.dataflow.DataFlow

from DataFlow::Node source, DataFlow::Node sink
where DataFlow::localFlow(source, sink)
select sink, "Local flow from " + source
