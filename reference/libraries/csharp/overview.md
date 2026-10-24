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
| `Method` | Method |
| `Property` | Property |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Method call |

## Useful predicates (examples)

- `Method.getName()`
- `Method.calls(Method)`
- `Expr.getType()`

For full details see the official [CodeQL standard library for C#](https://codeql.github.com/codeql-standard-libraries/csharp/).
