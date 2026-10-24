# Custom Query Development Workflow

A practical workflow for writing and testing your own CodeQL queries.

## 1. Create a pack (optional but recommended)

```bash
codeql pack init my-org/custom-queries
cd custom-queries
codeql pack add codeql/javascript-all
codeql pack install
```

## 2. Write a query

```ql
/**
 * @name Functions with many calls
 * @kind problem
 * @id my-org/js-many-calls
 */
import javascript

from Function f
where count(f.getACall()) > 10
select f, "Function has many calls"
```

## 3. Compile-check

```bash
codeql query compile my-query.ql
```

## 4. Run against a database

```bash
codeql query run my-query.ql --database=my-js-db
```

## 5. Format

```bash
codeql query format -i my-query.ql
```

## 6. Analyze as part of a suite

Create `default.qls` and run:

```bash
codeql database analyze my-js-db . --format=sarif-latest --output=results.sarif
```

## Notes

- Use `query compile` early to catch type and import errors.
- Prefer `database analyze` when you want SARIF output.
- Related commands: `query compile`, `query run`, `query format`, `database analyze`.
