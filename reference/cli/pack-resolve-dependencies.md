# codeql pack resolve-dependencies

Compute the set of required dependencies for a QL pack.

## Synopsis

```bash
codeql pack resolve-dependencies [--mode=<mode>] [--format=<fmt>] <pack-dir>
```

## Description

[Plumbing] Resolves the dependencies declared in `qlpack.yml` against the configured registries and reports the result. Available since CLI v2.6.0.

## Key Options

| Option | Description |
|--------|-------------|
| `<pack-dir>` | Root directory of the pack |
| `--mode` | `minimal-update` (default), `upgrade`, `verify`, or `no-lock` |
| `--format` | `text` or `json` |

## Examples

```bash
# Default (minimal-update)
codeql pack resolve-dependencies ./my-queries

# Fail if the lock file is stale (good for CI)
codeql pack resolve-dependencies --mode=verify ./my-queries

# Upgrade to latest compatible versions
codeql pack resolve-dependencies --mode=upgrade ./my-queries

# JSON output
codeql pack resolve-dependencies --format=json ./my-queries
```

## Notes

- `verify` is useful in CI to ensure the lock file is still valid.
- Related commands: `pack install`, `pack upgrade`.
