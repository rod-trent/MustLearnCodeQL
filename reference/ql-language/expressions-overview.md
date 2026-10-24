# Expressions

An expression evaluates to a set of values and has a type.

## Common expressions

| Expression | Example | Type |
|------------|---------|------|
| Literal | `42`, `"hello"` | `int`, `string` |
| Variable reference | `f` | Declared type of `f` |
| Cast | `x.(Function)` | `Function` |
| Set literal | `[1, 2, 3]` | Compatible element type |
| Aggregation | `count(Function f)` | Result type of aggregate |
| Conditional | `if cond then e1 else e2` | Common type of branches |

## Casts

```ql
x.(Function)          // postfix (preferred)
(Function)x           // prefix
```

## Notes

- Every expression has a static type.
- Casts constrain the type of an expression.
- See also `type-inference.md` and `type-system.md`.
