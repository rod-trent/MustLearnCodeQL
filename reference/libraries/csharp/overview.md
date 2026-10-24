# C# Standard Library — Key Classes

Import with:

```ql
import csharp
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Class` | Class |
| `Interface` | Interface |
| `Method` | Method |
| `Constructor` | Constructor |
| `Property` | Property |
| `Field` | Field |
| `Parameter` | Parameter |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Method call |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Method.getName()`
- `Method.getParameter(int)`
- `Method.calls(Method)`
- `Method.getDeclaringType()`
- `Expr.getType()`
- `Call.getTarget()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for C#](https://codeql.github.com/codeql-standard-libraries/csharp/).
