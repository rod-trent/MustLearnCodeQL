# Chapter 8 Examples

Example queries referenced in Chapter 8 of *Must Learn CodeQL*.

## Files

- `local-flow.ql` — demonstrates local data flow within a function.
- `global-flow-skeleton.ql` — skeleton of a global data-flow configuration.
- `barrier-example.ql` — shows a simple barrier that stops flow.

## Running

These queries use the JavaScript libraries. Create a database first (see Chapters 2–3), then:

```bash
codeql query run --database=my-js-db local-flow.ql
```

Global configurations are best explored with the CodeQL extension for VS Code or `database analyze`.

See the book chapter for the distinction between local and global flow, configurations, additional steps, and barriers.
