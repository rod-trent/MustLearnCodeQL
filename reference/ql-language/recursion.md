# Recursion

QL supports recursion. A recursive predicate is evaluated to its least fixed point: the engine starts with the empty set and repeatedly applies the predicate until the set stops growing.

## Basic recursion

```ql
int getANumber() {
  result = 0
  or
  result <= 100 and result = getANumber() + 1
}
```

## Transitive closure

QL provides the `+` operator as shorthand for one or more applications of a binary predicate:

```ql
Person getAnAncestor() {
  result = this.getAParent+()
}
```

The `*` operator means zero or more applications.

## Mutual recursion

Predicates may call each other. The engine still computes the least fixed point of the whole system.

## Notes

- Avoid non-monotonic recursion (e.g. negation inside a recursive definition) — it is not supported.
- Recursion is the natural way to express reachability, dominance, and transitive relationships in a codebase.
- See the official QL language reference on recursion for the formal semantics.
