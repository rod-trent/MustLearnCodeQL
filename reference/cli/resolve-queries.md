# codeql resolve queries

Expand query directories, suites, and packs into a list of individual `.ql` files.

## Synopsis

```bash
codeql resolve queries <query|dir|suite|pack>...
```

## Description

[Deep plumbing] Resolves the same query specifiers accepted by `database analyze` into the concrete list of query files that will be executed.

## Key Options

| Option | Description |
|--------|-------------|
| `<query\|dir\|suite\|pack>...` | Specifiers of the form `scope/name@range:path` |

## Examples

```bash
# Default suite of a published pack
codeql resolve queries codeql/javascript-queries

# A local directory of queries
codeql resolve queries ./examples/chapter05

# A specific suite
codeql resolve queries codeql/javascript-queries:security-extended

# Multiple specifiers
codeql resolve queries ./my-queries codeql/python-queries
```

## Notes

- Running with no arguments prints known suite names and returns an empty list.
- Useful for debugging which queries a pack or suite will actually run.
