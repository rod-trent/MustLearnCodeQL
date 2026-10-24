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
| `FuncLit` | Function literal |
| `Type` | Type |
| `StructType` | Struct type |
| `Expr` | Expression |
| `Stmt` | Statement |
| `CallExpr` | Call expression |
| `SelectorExpr` | Selector (`x.f`) |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `FuncDecl.getName()`
- `FuncDecl.getParameter(int)`
- `FuncDecl.getACall()`
- `Expr.getType()`
- `CallExpr.getCalleeExpr()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for Go](https://codeql.github.com/codeql-standard-libraries/go/).
