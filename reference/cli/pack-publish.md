# codeql pack publish

Publish a QL pack to a package registry.

## Synopsis

```bash
codeql pack publish [--github-auth-stdin] <pack-dir>
```

## Description

Publishes a query pack or library pack so others can download and use it. The pack directory must contain a valid `qlpack.yml`.

## Key Options

| Option | Description |
|--------|-------------|
| `<pack-dir>` | Directory containing the pack (with `qlpack.yml`) |
| `--github-auth-stdin` | Read a GitHub token from stdin for authentication |

## Example

```bash
codeql pack publish ./my-security-queries
```

## Notes

- Published query packs include pre-compiled `.qlx` files for faster execution.
- Re-publish periodically so consumers on newer CodeQL versions can still use pre-compiled queries.
- Authentication is required; use a token with appropriate package write permissions.
- Related commands: `pack create`, `pack download`, `pack init`.
