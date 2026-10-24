# codeql resolve files

Expand inclusion/exclusion globs into a concrete file list.

## Synopsis

```bash
codeql resolve files [--include=<glob>] [--exclude=<glob>] <dir>
```

## Description

[Deep plumbing] Expands the file filters used by other commands. By default every file under the directory is included.

## Key Options

| Option | Description |
|--------|-------------|
| `<dir>` | Root directory to search |
| `--include` | Glob of files/directories to include |
| `--exclude` | Glob of files/directories to exclude |
| `--prune` | Glob of directories to prune |

## Example

```bash
codeql resolve files --include=*.ql ./examples
```

## Notes

- Globs support the usual wildcard characters.
- Helpful when you need to see exactly which files a filter will select.
