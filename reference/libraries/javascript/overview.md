# JavaScript / TypeScript Standard Library — Key Classes

Import with:

```ql
import javascript
```

## Core AST and program elements

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Folder` | Directory |
| `Function` | Function or method |
| `ArrowFunctionExpr` | Arrow function |
| `ClassDefinition` | Class declaration |
| `MethodDefinition` | Method inside a class |
| `Expr` | Any expression |
| `Stmt` | Any statement |
| `CallExpr` | Function/method call |
| `MemberAccess` | Property access (`obj.prop`) |
| `Identifier` | Identifier |
| `StringLiteral` | String literal |
| `DataFlow::Node` | Data-flow node |
| `RemoteFlowSource` | Typical remote source |

## Useful predicates

- `Function.getName()`
- `Function.getParameter(int)`
- `Function.getACall()`
- `CallExpr.getCalleeName()`
- `DataFlow::localFlow(source, sink)`
- `TaintTracking::localTaint(source, sink)`

## Additional notes

- `RemoteFlowSource` is the usual starting point for security queries.
- Prefer the data-flow library over manual AST walking for taint tracking.
- See `data-flow.md` in this directory for configuration examples.
- `Function.getParameter(int)`
- `Function.getACall()`
- `CallExpr.getCallee()`
- `CallExpr.getArgument(int)`
- `Expr.getParent()`
- `DataFlow::localFlow(source, sink)`
- `TaintTracking::localTaint(source, sink)`

## Data flow

The library provides a mature data-flow and taint-tracking framework under `DataFlow` and `TaintTracking`. Use configurations for global (interprocedural) analysis.

For full details see the official [CodeQL standard library for JavaScript](https://codeql.github.com/codeql-standard-libraries/javascript/).
