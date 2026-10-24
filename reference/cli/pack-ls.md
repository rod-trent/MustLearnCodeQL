# codeql pack ls

List CodeQL packs rooted at a directory.

## Synopsis

```bash
codeql pack ls [--format=<fmt>] <dir>
```

## Description

[Deep plumbing] Lists the packs found under the given directory. The directory must contain a `qlpack.yml` or a workspace file. Available since CLI v2.7.1.

## Key Options

| Option | Description |
|--------|-------------|
| `<dir>` | Pack or workspace root (default: current directory) |
| `--format` | `text` or `json` |

## Example

```bash
codeql pack ls
codeql pack ls --format=json ./my-workspace
```

## Notes

- Useful for confirming workspace membership and discovering packs.
- Related commands: `resolve packs`, `pack resolve-dependencies`.
