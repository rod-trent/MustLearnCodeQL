# Swift — Data Flow

## Key imports

```ql
import swift
import codeql.swift.dataflow.DataFlow
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
```

## Notes

- Swift extraction quality depends on a successful build.
- The library models common Apple frameworks.
- Use configurations for global analysis.

See the official Swift library documentation for modeled APIs.
