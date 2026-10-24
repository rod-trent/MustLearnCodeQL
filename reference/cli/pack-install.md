# codeql pack install

Install the dependencies of the current pack.

## Synopsis

```bash
codeql pack install
```

## Description

Downloads and installs all dependencies listed in `qlpack.yml` into the package cache. Updates or creates `codeql-pack.lock.yml`.

## Example

```bash
cd my-queries
codeql pack install
```

## Notes

- Commit the lock file to version control for reproducible builds.
- Related commands: `pack add`, `pack upgrade`, `pack download`.
