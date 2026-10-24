# Data-Flow Patterns

Most CodeQL standard libraries provide a data-flow (and taint-tracking) framework.

## Basic local flow

```ql
import javascript   // or python, java, etc.

from DataFlow::Node source, DataFlow::Node sink
where DataFlow::localFlow(source, sink)
select source, sink
```

## Typical source-to-sink query shape

```ql
from DataFlow::Node source, DataFlow::Node sink
where
  source instanceof RemoteFlowSource and
  sink instanceof SqlInjectionSink and
  TaintTracking::localTaint(source, sink)
select sink, "Potential SQL injection"
```

## Global data flow / taint tracking

For interprocedural analysis use the configuration-based API (varies slightly by language):

```ql
class MyConfig extends TaintTracking::Configuration {
  MyConfig() { this = "MyConfig" }

  override predicate isSource(DataFlow::Node source) { ... }
  override predicate isSink(DataFlow::Node sink) { ... }
}

from MyConfig cfg, DataFlow::Node source, DataFlow::Node sink
where cfg.hasFlow(source, sink)
select sink, source, sink, "flow found"
```

## Tips

- Prefer the language’s standard data-flow library over hand-rolled AST walking.
- Use `localFlow` / `localTaint` for intra-procedural checks; use configurations for global analysis.
- Barriers and sanitizers are expressed as additional predicates on the configuration.

See the language-specific library documentation for the exact class and predicate names.
