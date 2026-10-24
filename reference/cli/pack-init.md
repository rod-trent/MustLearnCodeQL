# codeql pack init

Initialize a new CodeQL pack.

## Synopsis

```bash
codeql pack init <directory>
```

## Description

Creates a `qlpack.yml` and a minimal directory structure so you can start writing queries or libraries that can be published and shared.

## Example

```bash
codeql pack init ./my-queries
```

After initialization, edit `qlpack.yml` to set the name, version, and dependencies, then add `.ql` files.
