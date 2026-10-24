# codeql query format

Auto-format QL source code.

## Synopsis

```bash
codeql query format [--in-place] [--output=<file>] <file.ql>...
```

## Description

Formats `.ql` and `.qll` files according to the standard QL style.

## Key Options

| Option | Description |
|--------|-------------|
| `<file.ql>...` | Files to format |
| `--in-place` / `-i` | Overwrite the input files |
| `--output` | Write to a specific file (single input only) |
| `--check-only` | Exit with status 1 if any file differs from the correct formatting |

## Example

```bash
codeql query format -i my-query.ql
codeql query format --check-only examples/
```
