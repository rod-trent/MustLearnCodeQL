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

## Example

```bash
codeql database unbundle my-js-db.zip
codeql database unbundle --name=restored-db --target=./dbs my-js-db.zip
```

## Notes

- Pair with `database bundle` for sharing or archiving databases.
- The extracted database is ready for `database analyze` or `query run`.
