# codeql bqrs decode

Convert BQRS result data into other formats.

## Synopsis

```bash
codeql bqrs decode --format=<format> [--output=<file>] <bqrs-file>
```

## Description

Decodes a raw BQRS file (produced by `query run` or `database run-queries`) into CSV, JSON, or text.

## Key Options

| Option | Description |
|--------|-------------|
| `<bqrs-file>` | Path to the `.bqrs` file |
| `--format` | Output format (`csv`, `json`, `text`, …) |
| `--output` | Write to a file instead of stdout |

## Example

```bash
codeql bqrs decode --format=csv results.bqrs
```

## Notes

- Useful for debugging individual query results without full SARIF interpretation.
- Related commands: `bqrs info`, `bqrs interpret`.
