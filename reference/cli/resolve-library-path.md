# codeql resolve library-path

Determine the QL library path and dbscheme for a query.

## Synopsis

```bash
codeql resolve library-path (--query=<qlfile> | --dir=<dir> | --root-pack=<pkg>)
```

## Description

[Deep plumbing] Computes the library path and database scheme that a query will be compiled against. Useful for troubleshooting import resolution.

## Key Options

| Option | Description |
|--------|-------------|
| `--query` | Path to a `.ql` file |
| `--dir` | Directory containing queries |
| `--root-pack` | Root pack name |
| `--format` | `lines` (default), `json`, `path`, or `dbscheme` |

## Example

```bash
codeql resolve library-path --query=examples/chapter04/small-int-triples.ql
codeql resolve library-path --format=json --query=my-query.ql
```

## Notes

- Exactly one of `--query`, `--dir`, or `--root-pack` is required.
- Helpful when a query fails to resolve an import.
