# Formulas

Formulas define logical relations between free variables.

## Basic formulas

| Formula | Meaning |
|---------|---------|
| `expr = expr` | Equality |
| `expr != expr` | Inequality |
| `expr < expr` | Order comparison |
| `expr instanceof Type` | Type check |
| `expr in range` | Range membership |
| `not formula` | Negation |
| `formula and formula` | Conjunction |
| `formula or formula` | Disjunction |
| `formula implies formula` | Implication |

## Quantifiers

```ql
exists(int i | i in [1..10] | i % 2 = 0)

forall(Function f | f.getName() = "main" | f.isPublic())
```

## Notes

- Equality and order comparisons require compatible types.
- `exists` and `forall` introduce scoped variables.
- See also `formulas.md` in this directory.
