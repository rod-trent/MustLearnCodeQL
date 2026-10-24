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

## Examples

```bash
# All .ql files under a directory
codeql resolve files --include=*.ql ./examples

# Exclude test files
codeql resolve files --include=*.ql --exclude=*test* ./my-queries

# Prune an entire subdirectory
codeql resolve files --prune=experimental ./my-queries
```

## Notes

- Globs support the usual wildcard characters.
- Helpful when you need to see exactly which files a filter will select.
