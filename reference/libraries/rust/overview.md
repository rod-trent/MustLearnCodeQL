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
| `Expr` | Expression |
| `Stmt` | Statement |
| `CallExpr` | Call |

## Useful predicates (examples)

- `Function.getName()`
- `Function.getACall()`

For full details see the official [CodeQL standard library for Rust](https://codeql.github.com/codeql-standard-libraries/rust/).
