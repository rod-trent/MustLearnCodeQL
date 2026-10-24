# Rust Standard Library — Key Classes

Import with:

```ql
import rust
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Function` | Function |
| `Struct` | Struct |
| `Enum` | Enum |
| `Impl` | Impl block |
| `Expr` | Expression |
| `Stmt` | Statement |
| `CallExpr` | Call |
| `PathExpr` | Path expression |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Function.getName()`
- `Function.getParameter(int)`
- `Function.getACall()`
- `Struct.getName()`
- `CallExpr.getCallee()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for Rust](https://codeql.github.com/codeql-standard-libraries/rust/).
