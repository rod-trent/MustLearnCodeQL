# Java / Kotlin — Data Flow and Taint Tracking

## Key imports

```ql
import java
import semmle.code.java.dataflow.DataFlow
import semmle.code.java.dataflow.TaintTracking
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
TaintTracking::localTaint(source, sink)
```

## Global analysis

```ql
class MyConfig extends TaintTracking::Configuration {
  MyConfig() { this = "MyConfig" }

  override predicate isSource(DataFlow::Node source) { ... }
  override predicate isSink(DataFlow::Node sink) { ... }
}
```

## Notes

- Kotlin is analyzed together with Java.
- The library models many common frameworks (Spring, etc.).
- Prefer the standard data-flow library over manual AST traversal for security queries.

See the official Java library documentation for the full API.
