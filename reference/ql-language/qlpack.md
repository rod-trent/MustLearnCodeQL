# qlpack.yml Reference

Every CodeQL pack has a `qlpack.yml` file in its root.

## Common properties

| Property | Required | Description |
|----------|----------|-------------|
| `name` | Yes | `scope/pack-name` |
| `version` | Yes (for publish) | SemVer version |
| `library` | No | `true` for a library pack |
| `dependencies` | No | Map of pack name → version range |
| `defaultSuite` / `defaultSuiteFile` | No | Default queries to run |
| `description` | No | Human-readable description |
| `license` | No | License identifier |

## Example

```yaml
name: my-org/security-queries
version: 1.0.0
description: Custom security queries
dependencies:
  codeql/javascript-all: "*"
defaultSuiteFile: default.qls
```

## Notes

- `library: true` marks a library pack (no queries to run by default).
- Use `codeql pack init` to generate a starter `qlpack.yml`.
- The lock file `codeql-pack.lock.yml` records exact resolved versions.
