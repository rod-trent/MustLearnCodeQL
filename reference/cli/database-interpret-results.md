# codeql database interpret-results

Interpret previously computed query results into SARIF, CSV, or other formats.

## Synopsis

```bash
codeql database interpret-results --format=<format> --output=<output> \
  <database> [<file|dir|suite>...]
```

## Description

[Plumbing] Turns BQRS results stored in a database into human- or tool-readable formats. The results must have been produced earlier by `database run-queries`.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the queried database |
| `--format` | `sarif-latest`, `csv`, `sarifv2.1.0`, `graphtext`, … |
| `--output` | Output path |
| `<file\|dir\|suite>...` | Queries whose results to interpret (optional; CLI will try to infer) |

## Example

```bash
codeql database interpret-results my-js-db \
  --format=sarif-latest \
  --output=results.sarif
```

## Notes

- Prefer `database analyze` unless you specifically need the two-step workflow.
- Format options match those of `database analyze`.
