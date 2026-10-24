# codeql query compile

Compile or check QL source code.

## Synopsis

```bash
codeql query compile [--check-only] <file.ql|dir>...
```

## Description

Compiles one or more queries or library files. Useful for catching syntax and type errors before running queries.

## Key Options

| Option | Description |
|--------|-------------|
| `<file.ql\|dir>...` | Query files or directories to compile |
| `--check-only` | Exit with an error if any file is not already correctly formatted/compilable (no output written) |

## Example

```bash
codeql query compile examples/chapter04/small-int-triples.ql
codeql query compile --check-only my-queries/
```

## Notes

- Compilation also resolves imports, so missing packs will surface here.
- Related command: `codeql query format` for auto-formatting.
