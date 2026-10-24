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
| `MemberFunction` | Member function |
| `Class` | Class or struct |
| `Variable` | Variable |
| `Parameter` | Parameter |
| `Expr` | Expression |
| `Stmt` | Statement |
| `FunctionCall` | Function call |
| `BinaryOperation` | Binary operator |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Function.getName()`
- `Function.getParameter(int)`
- `Function.calls(Function)`
- `Function.getBlock()`
- `Expr.getType()`
- `Variable.getAnAccess()`
- `FunctionCall.getTarget()`
- `DataFlow::localFlow(source, sink)`

## Notes

C/C++ extraction quality depends heavily on a successful build (or accurate `none` mode inference). Prefer an explicit build command for the best results.

For full details see the official [CodeQL standard library for C/C++](https://codeql.github.com/codeql-standard-libraries/cpp/).
