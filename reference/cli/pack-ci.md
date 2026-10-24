# codeql pack ci

Install dependencies and verify the lock file is up to date.

## Synopsis

```bash
codeql pack ci [--force] <pack-dir>
```

## Description

Performs a clean install of the dependencies listed in `codeql-pack.lock.yml` and fails if the lock file is missing or out of date relative to `qlpack.yml`. Intended for CI environments.

## Key Options

| Option | Description |
|--------|-------------|
| `<pack-dir>` | Root directory of the pack |
| `--force` | Continue even if some checks would normally fail |

## Examples

```bash
# From the pack root — preferred in CI
codeql pack ci

# Explicit path
codeql pack ci ./my-security-queries

# Continue past some non-fatal issues
codeql pack ci --force ./my-queries
```

Typical CI snippet:

```yaml
- name: Verify pack lockfile
  run: codeql pack ci
```

## Notes

- Prefer this over `pack install` in automated pipelines.
- Related commands: `pack install`, `pack resolve-dependencies --mode=verify`.
