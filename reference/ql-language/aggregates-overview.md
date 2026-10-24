# Aggregates

Aggregates compute summary values over sets of results.

## Common aggregates

| Aggregate | Purpose |
|-----------|---------|
| `count` | Number of values |
| `sum` | Sum of numeric values |
| `min` / `max` | Minimum / maximum |
| `avg` | Average |
| `concat` | String concatenation |
| `rank` | Ranked results |

## Example

```ql
from Function f
select f, count(f.getACall())
```

## Monotonic aggregates

With `language[monotonicAggregates]`, aggregates can be used recursively (the recursive call must appear in the expression, not the range).

```ql
language[monotonicAggregates]

int depth(Node n) {
  if not exists(n.getAChild())
  then result = 0
  else result = 1 + max(Node child | child = n.getAChild() | depth(child))
}
```

## Notes

- Aggregates are evaluated relationally.
- Prefer `strictcount` / `strictsum` when you need empty-set behavior.
- See also `aggregates.md` in this directory.
