# Aggregates

Aggregates summarize a set of values.

## Common aggregates

| Aggregate | Meaning |
|-----------|---------|
| `count(x)` | Number of distinct values of `x` |
| `sum(x)` | Sum of numeric values |
| `min(x)` / `max(x)` | Minimum / maximum |
| `avg(x)` | Average |
| `concat(x, sep)` | Concatenation of strings |
| `unique(x)` | The single value if exactly one exists |

## Syntax

```ql
count(Type x | formula | expression)
```

The optional formula filters the values that are aggregated; the expression selects what is aggregated.

## Examples

```ql
// Number of functions
count(Function f)

// Number of calls inside a function
count(Call c | c.getEnclosingFunction() = f)

// Functions with more than 10 calls
from Function f
where count(f.getACall()) > 10
select f
```

Aggregates are evaluated after the rest of the formula, so they can be used both to filter and to project summary values.
