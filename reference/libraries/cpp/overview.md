# C/C++ Standard Library — Key Classes

Import with:

```ql
import cpp
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Function` | Function |
| `Class` | Class or struct |
| `Variable` | Variable |
| `Expr` | Expression |
| `Stmt` | Statement |
| `FunctionCall` | Function call |

## Useful predicates (examples)

- `Function.getName()`
- `Function.calls(Function)`
- `Expr.getType()`
- `Variable.getAnAccess()`

For full details see the official [CodeQL standard library for C/C++](https://codeql.github.com/codeql-standard-libraries/cpp/).
