# CodeQL Taint Tracking

Taint tracking extends data flow with non-value-preserving steps. It is the standard technique for security queries that follow untrusted data to dangerous operations.

## Data flow vs taint tracking

| Aspect | Data flow | Taint tracking |
|--------|-----------|----------------|
| Steps | Value-preserving only | Also transformations |
| Typical use | Precise value tracking | Security (untrusted input → sink) |
| Local helper | `DataFlow::localFlow` | `TaintTracking::localTaint` |
| Global module | `DataFlow::Global` | `TaintTracking::Global` |

Example of a taint step: if `x` is tainted then `y = "Hello " + x` is also tainted.

## Local taint tracking

```ql
import javascript

from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  TaintTracking::localTaint(source, sink)
select sink, "Local taint from remote source"
```

## Global taint tracking

```ql
/**
 * @kind path-problem
 * @id mustlearn/js-taint-example
 */
import javascript

module MyConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    sink.asExpr().(CallExpr).getCalleeName() = "eval"
  }

  // Optional: extra edges
  predicate isAdditionalFlowStep(DataFlow::Node pred, DataFlow::Node succ) {
    // custom step
  }

  // Optional: stop flow
  predicate isBarrier(DataFlow::Node node) {
    // sanitizer
  }
}

module Flow = TaintTracking::Global<MyConfig>;
import Flow::PathGraph

from Flow::PathNode source, Flow::PathNode sink
where Flow::flowPath(source, sink)
select sink.getNode(), source, sink, "Taint reaches eval"
```

## Key configuration predicates

| Predicate | Purpose |
|-----------|---------|
| `isSource` | Starting points (required) |
| `isSink` | End points (required) |
| `isAdditionalFlowStep` | Extra propagation edges |
| `isBarrier` / `isBarrierIn` / `isBarrierOut` | Places where taint stops |
| Flow state variants | Track additional state along the path |

## Notes

- Prefer `TaintTracking::Global` over `DataFlow::Global` for most vulnerability queries.
- The modular `ConfigSig` API is the current recommended style.
- Barriers are the modern replacement for older sanitizer predicates.
- See also `data-flow-analysis.md` and the per-language `data-flow.md` pages.
