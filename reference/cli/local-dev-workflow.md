# Local Development Workflow

A practical workflow for developing and testing queries on your machine.

## 1. Create a small database

```bash
codeql database create test-db --language=javascript --source-root=./sample
```

## 2. Write and format the query

```bash
codeql query format -i my-query.ql
```

## 3. Compile-check

```bash
codeql query compile my-query.ql
```

## 4. Run against the database

```bash
codeql query run my-query.ql --database=test-db
```

## 5. Iterate

- Use quick evaluation in VS Code
- Add evaluator logs if the query is slow
- Expand the test database as the query stabilizes

## Notes

- Related commands: `query format`, `query compile`, `query run`.
- See also `debugging-workflow.md` and `query-workflow.md`.
