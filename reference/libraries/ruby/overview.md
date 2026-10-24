# Ruby Standard Library — Key Classes

Import with:

```ql
import ruby
```

## Core classes

| Class | Description |
|-------|-------------|
| `File` | Source file |
| `Module` | Module or class value |
| `ClassDeclaration` | Class declaration |
| `Method` | Method |
| `Parameter` | Parameter |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Call |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Method.getName()`
- `Method.getParameter(int)`
- `Method.getACall()`
- `ClassDeclaration.getName()`
- `Call.getMethodName()`
- `DataFlow::localFlow(source, sink)`

For full details see the official [CodeQL standard library for Ruby](https://codeql.github.com/codeql-standard-libraries/ruby/).
