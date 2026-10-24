# codeql pack bundle

Bundle a QL library pack.

## Synopsis

```bash
codeql pack bundle [--output=<file.tgz>] [--threads=<num>] [--ram=<MB>] <pack-dir>
```

## Description

[Plumbing] Creates a bundle of a library pack from the contents of the given directory. Available since CLI v2.6.3.

## Key Options

| Option | Description |
|--------|-------------|
| `<pack-dir>` | Root directory of the pack |
| `--output` | Output `.tgz` file |
| `--threads` | Compilation threads |
| `--ram` | Memory limit in MB |

## Examples

```bash
# Bundle a library pack
codeql pack bundle --output=my-lib.tgz ./my-library

# Allocate more resources while bundling
codeql pack bundle --threads=4 --ram=4096 --output=my-lib.tgz ./my-library
```

## Notes

- Primarily used for library packs.
- Related commands: `pack create`, `pack publish`.
