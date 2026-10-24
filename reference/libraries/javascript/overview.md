# JavaScript / TypeScript Standard Library — Key Classes

Import with:

```ql
import javascript
```

## Core AST and program elements

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Function` | Function or method |
| `ClassDefinition` | Class declaration |
| `Expr` | Any expression |
| `Stmt` | Any statement |
| `CallExpr` | Function/method call |
| `DataFlow::Node` | Data-flow node |

## Useful predicates (examples)

- `Function.getName()`
- `Function.getACall()`
- `CallExpr.getCallee()`
- `Expr.getParent()`
- `DataFlow::localFlow(source, sink)`

## Data flow

The JavaScript library provides a mature data-flow and taint-tracking framework under `DataFlow` and `TaintTracking`.

For full details see the official [CodeQL standard library for JavaScript](https://codeql.github.com/codeql-standard-libraries/javascript/).
