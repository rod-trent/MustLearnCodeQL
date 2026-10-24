# codeql pack add

Add library pack dependencies to the current pack and install them.

## Synopsis

```bash
codeql pack add <scope/name[@version]>...
```

## Description

Adds one or more packs as dependencies of the pack in the current directory, then installs them. Updates `qlpack.yml` and the lock file.

## Example

```bash
codeql pack add codeql/javascript-all
codeql pack add codeql/python-all@1.2.3
```

## Notes

- Run from the root of a pack that contains `qlpack.yml`.
- Related commands: `pack install`, `pack upgrade`.
