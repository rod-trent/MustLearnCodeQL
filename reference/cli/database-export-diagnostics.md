# codeql database export-diagnostics

Export diagnostic information from a database.

## Synopsis

```bash
codeql database export-diagnostics --format=<format> [--output=<file>] <database>
```

## Description

[Experimental] Exports diagnostic messages collected during extraction or analysis. Useful when a database creation or analysis failed.

Available since CLI v2.12.6.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the database |
| `--format` | `raw`, `sarif-latest`, `sarifv2.1.0`, or `text` |
| `--output` | Output file (stdout if omitted) |
| `--db-cluster` | Treat the path as a directory containing multiple databases |

## Example

```bash
codeql database export-diagnostics --format=text my-js-db
codeql database export-diagnostics --format=sarif-latest --output=diagnostics.sarif my-js-db
```
