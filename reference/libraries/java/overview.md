# Java / Kotlin Standard Library — Key Classes

Import with:

```ql
import java
```

## Core classes

| Class | Description |
|-------|-------------|
| `CompilationUnit` | Source file |
| `Package` | Package |
| `Type` | Any type |
| `RefType` | Reference type |
| `Class` | Class or interface |
| `Interface` | Interface |
| `Method` | Method |
| `Constructor` | Constructor |
| `Field` | Field |
| `Parameter` | Parameter |
| `Expr` | Expression |
| `Stmt` | Statement |
| `Call` | Method or constructor call |
| `MethodAccess` | Method call |
| `DataFlow::Node` | Data-flow node |

## Useful predicates

- `Method.getName()`
- `Method.getParameter(int)`
- `Method.getACall()`
- `MethodAccess.getMethod()`
- `Class.getAMethod()`
- `DataFlow::localFlow(source, sink)`
- `TaintTracking::localTaint(source, sink)`

## Additional notes

- Kotlin is analyzed together with Java.
- The library models many common frameworks (Spring, etc.).
- See `data-flow.md` in this directory for configuration examples.

- `Method.getName()`
- `Method.getParameter(int)`
- `Method.calls(Method)`
- `Method.getDeclaringType()`
- `Expr.getType()`
- `Call.getCallee()`
- `Call.getArgument(int)`
- `DataFlow::localFlow(source, sink)`

## Data flow

The Java library has a full data-flow and taint-tracking framework. Use `TaintTracking::Configuration` (or the newer module-based API) for global analysis.

For full details see the official [CodeQL standard library for Java](https://codeql.github.com/codeql-standard-libraries/java/).
