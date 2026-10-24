# CodeQL Data Flow Analysis

Data flow analysis tracks how values propagate through a program. CodeQL models both local and global data flow, plus taint tracking.

## Local vs global

| Kind | Scope | Precision | Cost |
|------|-------|-----------|------|
| Local data flow | Within a single function | Higher | Lower |
| Global data flow | Across the whole program | Lower | Higher |

Prefer local flow when it is sufficient.

## Data flow vs taint tracking

- **Data flow** — value-preserving steps only (assignments, parameter passing, etc.).
- **Taint tracking** — also includes non-value-preserving steps (string concatenation, arithmetic, container operations, etc.).

Taint tracking is the usual choice for security queries.

## Local data flow

```ql
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  DataFlow::localFlow(source, sink)
select sink, "Local flow from remote source"
```

Common helpers:
- `DataFlow::localFlow(source, sink)` — zero or more local steps
- `TaintTracking::localTaint(source, sink)` — local taint

## Global data flow (modern API)

```ql
/**
 * @kind path-problem
 * @id mustlearn/js-global-flow
 */
import javascript

module MyConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    sink.asExpr().(CallExpr).getCalleeName() = "eval"
  }
}

module Flow = TaintTracking::Global<MyConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Taint flows to eval"
```

Key pieces:
- Implement `DataFlow::ConfigSig` (or `StateConfigSig` for flow state)
- Instantiate `DataFlow::Global` or `TaintTracking::Global`
- Import the resulting `PathGraph` for path explanations

## Optional configuration predicates

| Predicate | Purpose |
|-----------|---------|
| `isAdditionalFlowStep` | Extra edges |
| `isBarrier` / `isBarrierIn` / `isBarrierOut` | Stop flow |
| `isSanitizer` (older style) | Equivalent barrier concept |

## Notes

- The modular API (`ConfigSig` + `Global`) is the current recommended style (CodeQL 2.13+).
- Path queries need `@kind path-problem` and a matching select clause.
- See the per-language `data-flow.md` pages under `libraries/` for language-specific patterns.
- See also `path-graphs.md` and `optimization.md` in this directory.
