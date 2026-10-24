# Debugging Workflow

Steps for debugging a slow or incorrect CodeQL query.

## 1. Compile-check

```bash
codeql query compile my-query.ql
```

## 2. Run with evaluator log

```bash
codeql database analyze my-db my-query.ql \
  --evaluator-log=eval.log \
  --format=sarif-latest --output=results.sarif
```

## 3. Summarize the log

```bash
codeql generate log-summary eval.log --format=text
```

## 4. Narrow the query

- Add more specific types
- Restrict sources/sinks
- Test local flow before global flow

## 5. Use quick evaluation (VS Code)

Evaluate individual predicates to confirm intermediate results.

## Notes

- Most performance problems come from large intermediate relations.
- Related pages: `optimization.md`, `generate-log-summary.md`.
