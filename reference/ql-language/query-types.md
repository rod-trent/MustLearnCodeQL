# CodeQL Query Types

The `@kind` metadata property determines the type of a query and how its results are interpreted and displayed.

## Main query types

| Kind | Purpose | Typical select shape |
|------|---------|----------------------|
| `problem` | Simple alert | `select element, message` |
| `path-problem` | Alert with a path (source → sink) | `select element, source, sink, message` |
| `metric` | Numeric measurement | `select number` or `select entity, number` |
| `diagnostic` | Diagnostic information | Varies |

## problem

The most common type. Produces alerts that point at a single code location.

```ql
/**
 * @name Empty functions
 * @kind problem
 * @id mustlearn/js-empty-functions
 */
import javascript

from Function f
where not exists(f.getAStmt())
select f, "Empty function"
```

Optional but recommended for published queries:
- `@problem.severity` — `error`, `warning`, or `recommendation`
- `@precision` — `very-high`, `high`, `medium`, or `low`
- `@security-severity` — 0.0–10.0 (for security-tagged queries)

## path-problem

Produces an alert together with a path (commonly a data-flow path from source to sink).

Requirements:
- `@kind path-problem`
- Import of a path graph (e.g. `import DataFlow::PathGraph` or `import Flow::PathGraph`)
- Select clause of the form `select element, source, sink, message`
- Source and sink must be path nodes

```ql
/**
 * @name Potential flow into eval
 * @kind path-problem
 * @id mustlearn/js-source-to-sink
 */
import javascript
import DataFlow::PathGraph

from DataFlow::PathNode source, DataFlow::PathNode sink
where
  source.getNode() instanceof RemoteFlowSource and
  TaintTracking::localTaint(source.getNode(), sink.getNode())
select sink.getNode(), source, sink, "Potential flow into eval"
```

## metric

Produces numeric results rather than alerts. Useful for measuring codebase properties (lines of code, complexity, etc.).

```ql
/**
 * @name Number of functions
 * @kind metric
 * @id mustlearn/js-function-count
 */
import javascript

select count(Function f)
```

## diagnostic

Used for diagnostic messages (extraction or analysis issues). Less common for custom security queries.

## Choosing a kind

- Use `problem` for most alerts.
- Use `path-problem` when the value of the result depends on showing the path (data flow, control flow, etc.).
- Use `metric` for measurements rather than alerts.
- Use `diagnostic` for tooling or extraction feedback.

## Notes

- `@kind` is required when the query is run via the CLI (`database analyze`).
- The select-clause shape must match the kind, or interpretation will fail.
- See also `query-metadata.md` in this directory.
