/**
 * @name Source-to-sink skeleton
 * @description Template for a local data-flow query.
 * @kind problem
 * @id mustlearn/swift-source-to-sink
 */
import swift
import codeql.swift.dataflow.DataFlow

from DataFlow::Node source, DataFlow::Node sink
where DataFlow::localFlow(source, sink)
select sink, "Local flow from " + source
