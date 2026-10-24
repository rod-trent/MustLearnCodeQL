# codeql query run

Run a single QL query against a database and print the results.

## Synopsis

```bash
codeql query run --database=<database> [--output=<file>] <query.ql>
```

## Description

Evaluates one query and displays the raw results. Useful while developing and debugging queries.

## Key Options

| Option | Description |
|--------|-------------|
| `--database` | Path to the CodeQL database |
| `<query.ql>` | The query file to run |
| `--output` | Write results to a file instead of stdout |

## Example

```bash
codeql query run --database=my-js-db examples/chapter01/hello-world.ql
```

## Notes

- For production or CI use prefer `database analyze` which produces SARIF and respects query metadata.
- The query must be valid QL and any imported libraries must be resolvable.
