# Annotations

Annotations modify the behavior of QL entities.

## Common annotations

| Annotation | Purpose |
|------------|---------|
| `private` | Hide a name from outside the module |
| `cached` | Store the relation for reuse |
| `query` | Turn a predicate into a query |
| `deprecated` | Mark as deprecated |
| `pragma[inline]` | Force inlining |
| `pragma[noinline]` | Prevent inlining |
| `language[monotonicAggregates]` | Enable recursive aggregates |

## Example

```ql
cached
predicate expensiveHelper(Function f) {
  count(f.getACall()) > 100
}
```

## Notes

- `cached` increases memory use and can prevent contextual optimization.
- Use `pragma[inline]` / `pragma[noinline]` only when needed.
- See also `optimization.md`.
