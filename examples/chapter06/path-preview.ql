/**
 * @name Path query skeleton
 * @description Minimal skeleton showing the structure of a path-problem query.
 *              Full data-flow configuration is covered in later chapters.
 * @kind path-problem
 * @id mustlearn/js-path-preview
 * @tags security
 * @problem.severity warning
 * @precision medium
 */
import javascript
import DataFlow::PathGraph

from DataFlow::PathNode source, DataFlow::PathNode sink
where
  // Placeholder: replace with a real flow condition (e.g. Flow::flowPath)
  source.getNode() = sink.getNode() and
  false // prevents results until a real configuration is added
select sink.getNode(), source, sink, "Placeholder path result"
