# Custom Query Pack Workflow

A practical workflow for creating and using a custom query pack.

## 1. Initialize the pack

```bash
codeql pack init my-org/custom-queries
cd custom-queries
```

## 2. Add language dependencies

```bash
codeql pack add codeql/javascript-all
codeql pack install
```

## 3. Add queries

Create `.ql` files under a `queries/` directory and define a `default.qls` suite.

## 4. Test locally

```bash
codeql query compile queries/my-query.ql
codeql query run queries/my-query.ql --database=../my-js-db
```

## 5. Analyze with the pack

```bash
codeql database analyze ../my-js-db . \
  --format=sarif-latest --output=results.sarif
```

## 6. Publish (optional)

```bash
codeql pack publish
```

## Notes

- Related commands: `pack init`, `pack add`, `pack install`, `pack publish`.
- See also `pack-workflow.md`.
