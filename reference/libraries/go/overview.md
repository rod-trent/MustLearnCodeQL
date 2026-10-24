# Go Standard Library — Key Classes

Import with:

```ql
import go
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `FuncDecl` | Function declaration |
| `Type` | Type |
| `Expr` | Expression |
| `Stmt` | Statement |
| `CallExpr` | Call expression |

## Useful predicates (examples)

- `FuncDecl.getName()`
- `FuncDecl.getACall()`
- `Expr.getType()`

For full details see the official [CodeQL standard library for Go](https://codeql.github.com/codeql-standard-libraries/go/).
