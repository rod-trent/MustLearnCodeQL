# Chapter 7 Examples

Example queries referenced in Chapter 7 of *Must Learn CodeQL*.

## Files

- `list-functions.ql` — lists functions and their names using the JavaScript standard library.
- `calls-to-eval.ql` — finds calls to `eval` (a simple exploration query).
- `empty-functions-refined.ql` — refined version of the empty-functions idea from Chapter 6, using library predicates.

## Running

These queries use the JavaScript libraries. Create a database first (see Chapters 2–3), then:

```bash
codeql query run --database=my-js-db list-functions.ql
codeql query run --database=my-js-db calls-to-eval.ql
codeql query run --database=my-js-db empty-functions-refined.ql
```

See the book chapter for guidance on exploring and refining queries with the standard libraries.
