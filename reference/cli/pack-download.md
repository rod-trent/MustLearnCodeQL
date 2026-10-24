# codeql pack download

Download CodeQL packs from the registry.

## Synopsis

```bash
codeql pack download [--dir=<dir>] [--force] <scope/name[@version]|suite.qls>...
```

## Description

Downloads the packs referenced on the command line (or inside a query suite) into the package cache (or a directory you specify).

Available since CLI v2.6.0.

## Key Options

| Option | Description |
|--------|-------------|
| `<scope/name[@version]\|suite.qls>...` | Packs or suites to download. Omit version for latest. |
| `--dir` | Download directory (default: package cache) |
| `--force` | Overwrite existing packs |
| `--format` | `text` or `json` |

## Examples

```bash
codeql pack download codeql/javascript-queries
codeql pack download codeql/python-queries@1.2.3
codeql pack download my-suite.qls
```

## Notes

- Downloaded packs are stored in an internal cache and are not intended for direct editing.
- Authentication may be required for private packs (`--github-auth-stdin` or `GITHUB_TOKEN`).
