# codeql database bundle

Create a relocatable archive of a CodeQL database.

## Synopsis

```bash
codeql database bundle --output=<output.zip> \
  [--include-diagnostics] \
  [--include-results] \
  [--include-logs] \
  <database>
```

## Description

Zips the useful parts of a database for sharing or troubleshooting. By default only mandatory components are included.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the database to bundle |
| `--output` | Output `.zip` file |
| `--include-diagnostics` | Include diagnostics |
| `--include-results` | Include precomputed query results |
| `--include-logs` | Include the logs directory |
| `--include-temp` | Include the temp directory |

## Example

```bash
codeql database bundle my-js-db --output=my-js-db.zip
codeql database bundle --include-diagnostics --include-logs --include-results \
  --output=debug-bundle.zip my-js-db
```

## Notes

- Bundles contain source code; share them only with people authorized to see that code.
- Useful for sending a database to teammates or GitHub Support.
