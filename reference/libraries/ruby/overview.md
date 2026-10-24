# Ruby Standard Library — Key Classes

Import with:

```ql
import ruby
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Method` | Method |
| `ClassDeclaration` | Class |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Call |

## Useful predicates (examples)

- `Method.getName()`
- `Method.getACall()`
- `Expr.getParent()`

For full details see the official [CodeQL standard library for Ruby](https://codeql.github.com/codeql-standard-libraries/ruby/).
