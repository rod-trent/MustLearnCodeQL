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
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Call expression |
| `DataFlow::Node` | Data-flow node |

## Useful predicates (examples)

- `Function.getName()`
- `Function.getACall()`
- `Class.getAMethod()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for Python](https://codeql.github.com/codeql-standard-libraries/python/).
