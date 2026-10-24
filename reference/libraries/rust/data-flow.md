# Rust — Data Flow

## Key imports

```ql
import rust
import codeql.rust.dataflow.DataFlow
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
```

## Notes

- Rust support continues to mature; check the current CodeQL release notes for coverage.
- Ownership and borrowing affect how data flow is modeled.
- Prefer the standard data-flow library for security queries.

See the official Rust library documentation for current capabilities.
