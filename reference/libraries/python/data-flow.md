# Python — Data Flow and Taint Tracking

## Key imports

```ql
import python
import semmle.python.dataflow.new.DataFlow
import semmle.python.dataflow.new.TaintTracking
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
TaintTracking::localTaint(source, sink)
```

## Global analysis

Use a `TaintTracking::Configuration` subclass (or the newer module-based API) with `isSource` and `isSink` predicates.

## Common patterns

- Remote sources are modeled (HTTP parameters, etc.).
- Common sinks include `eval`, SQL execution, command execution, and file writes.

See the official Python library documentation for modeled frameworks.
