# Chapter 9 Examples

Example queries referenced in Chapter 9 of *Must Learn CodeQL*.

## Files

- `taint-vs-dataflow.ql` — shows the difference between pure data flow and taint tracking.
- `path-query-skeleton.ql` — skeleton of a path-problem query.
- `remote-to-eval.ql` — tracks remote sources to `eval` with taint tracking.

## Running

These queries use the JavaScript libraries. Create a database first (see Chapters 2–3), then explore them in the CodeQL extension for VS Code (path queries work best there) or with:

```bash
codeql database analyze --format=sarif-latest --output=results.sarif my-js-db path-query-skeleton.ql
```

See the book chapter for the distinction between taint and pure data flow, sources, sinks, barriers, path queries, and flow state.
