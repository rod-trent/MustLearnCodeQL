# codeql database cleanup

Compact a CodeQL database on disk.

## Synopsis

```bash
codeql database cleanup [--cache-cleanup=<mode>] [--max-disk-cache=<MB>] <database>
```

## Description

Removes temporary data and generally makes a database as small as possible without reducing its usefulness for future queries.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path to the database to clean |
| `--cache-cleanup` | `trim` (default), `clear`, or `fit` |
| `--max-disk-cache` | Maximum size of the intermediate result cache in MB |

## Example

```bash
codeql database cleanup my-js-db
codeql database cleanup --cache-cleanup=clear my-js-db
```

## Notes

- `trim` keeps explicitly cached predicates.
- `clear` removes the entire cache, returning the database closer to a freshly extracted state.
- Useful after large analysis runs or before sharing a database.
