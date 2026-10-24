# Swift Standard Library — Key Classes

Import with:

```ql
import swift
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Function` | Function |
| `Class` | Class |
| `Struct` | Struct |
| `Expr` | Expression |
| `Stmt` | Statement |
| `CallExpr` | Call |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Function.getName()`
- `Function.getParameter(int)`
- `Function.getACall()`
- `Expr.getType()`
- `CallExpr.getCallee()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for Swift](https://codeql.github.com/codeql-standard-libraries/swift/).
