# codeql database analyze

Analyze a CodeQL database with queries and produce interpreted results.

## Synopsis

```bash
codeql database analyze --format=<format> --output=<output> \
  [--threads=<num>] \
  [--ram=<MB>] \
  [--sarif-category=<category>] \
  <database> <query|dir|suite|pack>...
```

## Description

Runs one or more queries, query suites, or packs against a database and writes results in the requested format (most commonly SARIF).

This command combines the effect of `database run-queries` and `database interpret-results`.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the CodeQL database |
| `<query\|dir\|suite\|pack>...` | Queries, directories, suites, or packs to run |
| `--format` | Output format (`sarif-latest`, `csv`, `dot`, …) |
| `--output` | Path for the results file (or directory for graph formats) |
| `--sarif-category` | Category tag used when uploading multiple SARIF files for the same commit |
| `--threads` | Number of threads for evaluation |
| `--ram` | Memory limit in MB |
| `--rerun` | Re-evaluate queries even if cached results exist |

## Examples

```bash
codeql database analyze my-js-db \
  codeql/javascript-queries \
  --format=sarif-latest \
  --output=results.sarif
```

With an explicit category (required when uploading multiple languages for the same commit):

```bash
codeql database analyze my-java-db \
  codeql/java-queries \
  --format=sarif-latest \
  --sarif-category=java \
  --output=java.sarif
```

## Notes

- Prefer `sarif-latest` when the results will be uploaded to GitHub code scanning.
- If you omit the query/pack argument the default suite for the language is used.
- Use `--sarif-category` whenever you produce more than one SARIF file for the same commit.
