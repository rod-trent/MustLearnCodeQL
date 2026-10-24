# codeql pack create

Build the contents of a QL package from source.

## Synopsis

```bash
codeql pack create [--output=<dir>] [--threads=<num>] [--ram=<MB>] <pack-dir>
```

## Description

[Plumbing] Builds a complete package including source, dependencies, compiled queries, and metadata. Available since CLI v2.6.0.

## Key Options

| Option | Description |
|--------|-------------|
| `<pack-dir>` | Root directory of the pack |
| `--output` | Output directory (default: `./.codeql/pack`) |
| `--threads` | Compilation threads |
| `--ram` | Memory limit in MB |

## Example

```bash
codeql pack create ./my-queries
```

## Notes

- Usually called internally by `pack publish`.
- Related commands: `pack init`, `pack publish`.
