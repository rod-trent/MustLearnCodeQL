# Chapter 5 Examples

Reusable predicate examples referenced in Chapter 5 of *Must Learn CodeQL*.

## Files

- `SmallInt.qll` — library defining a `SmallInt` class with member predicates.
- `even-squares.ql` — query that imports the library.

## Running

```bash
codeql query run --database=my-first-db even-squares.ql
```

(The query does not depend on language-specific libraries, so any database works.)

See the book chapter for naming conventions and organization guidance.
