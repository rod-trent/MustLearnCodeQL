# Ruby — Data Flow

## Key imports

```ql
import ruby
import codeql.ruby.DataFlow
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
```

## Notes

- The Ruby library provides AST, API graphs, and data-flow abstractions.
- Common sources include controller parameters; common sinks include command execution and SQL.
- Use configurations for interprocedural analysis.

See the official Ruby library documentation for the full API.
