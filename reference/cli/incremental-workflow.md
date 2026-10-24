# Incremental Analysis Workflow

A practical workflow for faster pull-request analysis using overlay and diff-informed features.

## 1. Create a base database (on main)

```bash
codeql database create overlay-base --language=javascript --source-root=.
codeql database analyze overlay-base codeql/javascript-queries \
  --format=sarif-latest --output=base.sarif
```

## 2. On a pull request: create an overlay database

```bash
codeql database create overlay-db --language=javascript --source-root=. \
  --overlay-base=overlay-base
```

## 3. Run analysis on the overlay

```bash
codeql database analyze overlay-db codeql/javascript-queries \
  --format=sarif-latest --output=pr.sarif
```

## Notes

- Overlay analysis reuses cached results from the base database.
- Diff-informed analysis can further limit results to changed lines.
- Related commands: `database create`, `database analyze`.
