# codeql generate log-summary

Summarize an evaluator log produced by `--evaluator-log`.

## Example

```bash
codeql generate log-summary eval.log --format=text
```

## Options

- `--format=text` or `--format=json`

## Notes

- Use after `database analyze --evaluator-log=...` to identify slow predicates.
- Related: `database analyze`, query optimization.
