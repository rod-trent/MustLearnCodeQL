# CodeQL Path Graphs

Path graphs power `@kind path-problem` queries. They supply the edges that the CodeQL tooling uses to reconstruct and display a path for each result.

## What a path graph provides

A path graph module typically exposes three query predicates:

| Predicate | Purpose |
|-----------|---------|
| `edges(a, b)` | Defines the directed edges of the graph (required) |
| `nodes(n)` | Optional extra information about nodes |
| `subpaths(...)` | Optional summarization of intermediate sub-paths |

Only `edges` is required. The data-flow libraries already define these predicates for you.

## Using a standard data-flow path graph

```ql
/**
 * @kind path-problem
 * @id mustlearn/js-flow-example
 */
import javascript
import DataFlow::PathGraph

from DataFlow::PathNode source, DataFlow::PathNode sink
where TaintTracking::localTaint(source.getNode(), sink.getNode())
select sink.getNode(), source, sink, "Flow from source to sink"
```

Key points:
- Import the language’s `PathGraph` (or a configuration’s `PathGraph`).
- Source and sink variables must be path nodes.
- The select clause must be `select element, source, sink, message`.

## Defining your own edges predicate

You can build a custom path graph by writing a `query predicate edges`:

```ql
/**
 * @kind path-problem
 * @id mustlearn/java-call-path
 */
import java

query predicate edges(Method caller, Method callee) {
  caller.calls(callee)
}

from Method start, Method end
where edges+(start, end)
select end, start, end, "Call path from " + start.getName() + " to " + end.getName()
```

The types used in `edges` must match the types used for the source and sink columns in the select clause.

## Global data-flow configuration style

```ql
module MyConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) { ... }
  predicate isSink(DataFlow::Node sink) { ... }
}

module Flow = DataFlow::Global<MyConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Global flow"
```

## Notes

- Path explanations are only generated when the query is `@kind path-problem` and a suitable `edges` predicate is in scope.
- Nodes used in the path should have locations; otherwise some viewers will not display the path.
- Custom path graphs are useful for call graphs, include chains, inheritance, etc., not only data flow.
- See also `query-types.md` and the per-language `data-flow.md` pages.
