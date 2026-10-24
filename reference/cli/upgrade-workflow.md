# Upgrade Workflow

Upgrade a CodeQL database after a CLI or library update.

## 1. Check the database

```bash
codeql database upgrade my-db
```

## 2. Re-analyze if needed

```bash
codeql database analyze my-db codeql/javascript-queries \
  --format=sarif-latest --output=results.sarif
```

## Notes

- Databases are tied to the CLI version that created them.
- `database upgrade` migrates them to the current CLI.
- Related commands: `database upgrade`, `database analyze`.
