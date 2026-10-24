# Java / Kotlin Standard Library — Key Classes

Import with:

```ql
import java
```

## Core classes

| Class | Description |
|-------|-------------|
| `CompilationUnit` | Source file |
| `Type` | Any type |
| `Class` | Class or interface |
| `Method` | Method |
| `Constructor` | Constructor |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Method or constructor call |

## Useful predicates (examples)

- `Method.getName()`
- `Method.calls(Method)`
- `Expr.getType()`
- `Call.getCallee()`

For full details see the official [CodeQL standard library for Java](https://codeql.github.com/codeql-standard-libraries/java/).
