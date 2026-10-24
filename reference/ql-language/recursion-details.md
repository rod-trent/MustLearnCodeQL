# Recursion Details

QL evaluates recursive predicates by computing the least fixed point.

## Least fixed point

1. Start with the empty set.
2. Repeatedly apply the predicate body to generate new tuples.
3. Stop when no new tuples appear.

## Base case required

A recursive predicate must have a base case, otherwise it evaluates to empty.

```ql
int getANumber() {
  result = 0                          // base case
  or
  result <= 100 and result = getANumber() + 1
}
```

## Transitive closure

Prefer `+` or `*` over complex recursion when possible:

```ql
predicate reachable(Node start, Node end) {
  edges+(start, end)
}
```

## Mutual recursion

Predicates can depend on each other. The evaluator still computes a least fixed point over the group.

## Notes

- Recursion must be monotonic.
- Avoid expensive operations inside recursive predicates.
- See also `recursion.md` and `optimization.md`.
