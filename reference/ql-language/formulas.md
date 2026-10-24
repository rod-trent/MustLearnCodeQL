# Formulas

Formulas are the logical conditions that constrain variables in predicates, classes, and queries.

## Logical connectives

- `and` / `or` / `not`
- Parentheses for grouping

## Quantifiers

```ql
exists(Type x | formula1 | formula2)
forall(Type x | formula1 | formula2)
```

`exists` holds if there is at least one value satisfying both formulas.  
`forall` holds if every value that satisfies the first formula also satisfies the second.

## Comparison and membership

- `=`, `!=`, `<`, `<=`, `>`, `>=`
- `in` / `not in` (ranges, sets)
- `matches` (regular expressions on strings)

## Example

```ql
from Function f
where exists(Call c | c.getEnclosingFunction() = f and c.getCalleeName() = "eval")
select f
```
