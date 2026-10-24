# Python Standard Library — Key Classes

Import with:

```ql
import python
```

## Core classes

| Class | Description |
|-------|-------------|
| `Module` | Python module |
| `Function` | Function definition |
| `Class` | Class definition |
| `Parameter` | Function parameter |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Call expression |
| `Attribute` | Attribute access |
| `Name` | Name expression |
| `StrConst` | String constant |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Function.getName()`
- `Function.getArg(int)`
- `Function.getACall()`
- `Class.getAMethod()`
- `Class.getName()`
- `Call.getFunc()`
- `Call.getArg(int)`
- `DataFlow::localFlow(source, sink)`

## Data flow

Use `DataFlow` and `TaintTracking` for local and global analysis. Remote sources and common sinks are modeled in the standard library.

For full details see the official [CodeQL standard library for Python](https://codeql.github.com/codeql-standard-libraries/python/).
