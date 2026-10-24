# codeql database unbundle

Extract a CodeQL database archive.

## Synopsis

```bash
codeql database unbundle [--name=<name>] [--target=<dir>] <archive.zip>
```

## Description

Extracts a database archive created by `database bundle`. Performs better than plain `unzip` in some scenarios (especially on Windows) and supports renaming the extracted database.

## Key Options

| Option | Description |
|--------|-------------|
| `<archive.zip>` | Path to the database archive |
| `--name` | Name to give the extracted database |
| `--target` | Directory to extract into (default: current directory) |

## Examples

```bash
# Extract into the current directory
codeql database unbundle my-js-db.zip

# Extract with a new name into a specific folder
codeql database unbundle --name=restored-db --target=./dbs my-js-db.zip

# Then analyze the restored database
codeql database analyze ./dbs/restored-db codeql/javascript-queries \
  --format=sarif-latest --output=results.sarif
```

## Notes

- Pair with `database bundle` for sharing or archiving databases.
- The extracted database is ready for `database analyze` or `query run`.
