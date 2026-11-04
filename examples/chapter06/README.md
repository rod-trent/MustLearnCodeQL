# Chapter 6 Examples

Example queries referenced in Chapter 6 of *Must Learn CodeQL*.

## Files

- `empty-functions.ql` — simple `@kind problem` alert query that finds empty functions.
- `function-count.ql` — simple `@kind metric` query.
- `path-preview.ql` — skeleton of a `@kind path-problem` query (full data-flow configuration is covered in later chapters).

## Running

These queries use the JavaScript libraries. Create a database first (see Chapters 2–3), then:

```bash
codeql query run --database=my-js-db empty-functions.ql
codeql query run --database=my-js-db function-count.ql
```

For path-problem queries, results are best viewed with the CodeQL extension for VS Code or via `database analyze` producing SARIF.

See the book chapter for metadata requirements and select-clause shapes.
