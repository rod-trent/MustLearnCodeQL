# Chapter 8 Examples

Example queries referenced in Chapter 8 of *Must Learn CodeQL*.

## Files

- `local-flow-to-eval.ql` — simple local data-flow query that finds values that flow into `eval` within a single function.
- `global-flow-skeleton.ql` — skeleton of a global data-flow configuration (sources and sinks).
- `EXERCISES.md` — suggested exercises.

## Running

These queries use the JavaScript libraries. Create a database first (see Chapters 2–3), then:

```bash
codeql query run --database=my-js-db local-flow-to-eval.ql
```

Global configurations are best explored in the CodeQL extension for VS Code so you can inspect paths.

See the book chapter for the distinction between local and global flow and for how to add barriers and additional steps.
