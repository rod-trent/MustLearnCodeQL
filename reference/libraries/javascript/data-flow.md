# JavaScript / TypeScript — Data Flow and Taint Tracking

The JavaScript library provides a mature data-flow framework.

## Key modules

```ql
import javascript
import DataFlow::PathGraph   // for path queries
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
TaintTracking::localTaint(source, sink)
```

## Global analysis (configuration style)

```ql
class MyConfig extends TaintTracking::Configuration {
  MyConfig() { this = "MyConfig" }

  override predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = any(CallExpr c | c.getCalleeName() = "eval").getArgument(0).flow()
  }
}

from MyConfig cfg, DataFlow::Node source, DataFlow::Node sink
where cfg.hasFlow(source, sink)
select sink, source, sink, "flow"
```

## Common sources and sinks

- `RemoteFlowSource` — typical remote input
- Calls to `eval`, `Function`, `setTimeout` with strings, DOM sinks, etc.

See the official JavaScript data-flow documentation for the full set of modeled APIs.
