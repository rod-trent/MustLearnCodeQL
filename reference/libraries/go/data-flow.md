# Go — Data Flow

## Key imports

```ql
import go
import semmle.go.dataflow.DataFlow
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
```

## Notes

- Go extraction benefits from a successful build (`go build` or equivalent).
- Common sources include HTTP request parameters; common sinks include command execution and SQL.
- Global analysis follows the same configuration pattern used in other languages.

See the official Go library documentation for modeled packages.
