# codeql pack upgrade

Upgrade a pack’s dependencies to the latest available versions.

## Synopsis

```bash
codeql pack upgrade <pack-dir>
```

## Description

Updates the dependencies listed in `qlpack.yml` (and the lock file) to the newest compatible versions.

## Example

```bash
codeql pack upgrade ./my-queries
```

## Notes

- Review the resulting changes before committing.
- Related commands: `pack download`, `pack resolve-dependencies`.
