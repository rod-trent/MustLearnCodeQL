# C# — Data Flow and Taint Tracking

## Key imports

```ql
import csharp
import semmle.code.csharp.dataflow.DataFlow
import semmle.code.csharp.dataflow.TaintTracking
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
TaintTracking::localTaint(source, sink)
```

## Global analysis

Use a `TaintTracking::Configuration` subclass with `isSource` and `isSink`.

## Notes

- The library models common .NET frameworks and ASP.NET sources/sinks.
- Prefer standard data-flow predicates over manual AST walking for security queries.

See the official C# library documentation for the full API.
