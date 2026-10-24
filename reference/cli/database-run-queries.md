# codeql database run-queries

Run queries and store raw results in the database.

## Synopsis

```bash
codeql database run-queries [--threads=<num>] [--ram=<MB>] \
  <database> <query|dir|suite|pack>...
```

## Description

[Plumbing] Evaluates queries and stores the raw BQRS results inside the database directory. Results can later be interpreted with `database interpret-results`.

For most workflows prefer `database analyze`, which combines running and interpreting in one step.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the database |
| `<query\|dir\|suite\|pack>...` | What to run |
| `--threads` | Evaluation threads |
| `--ram` | Memory limit in MB |

## Example

```bash
codeql database run-queries my-js-db codeql/javascript-queries
```

## Notes

- Use this when you want to separate evaluation from interpretation or when working with raw BQRS.
- Follow with `database interpret-results` to produce SARIF/CSV.
