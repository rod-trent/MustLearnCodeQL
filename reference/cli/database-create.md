# codeql database create

Create a CodeQL database from a source tree.

## Synopsis

```bash
codeql database create [--language=<lang>[,<lang>...]] \
  [--source-root=<dir>] \
  [--command=<command>] \
  [--build-mode=<mode>] \
  [--db-cluster] \
  [--threads=<num>] \
  [--ram=<MB>] \
  [--overwrite] \
  <database>
```

## Description

Creates a CodeQL database that can be analyzed by the CodeQL products. For compiled languages a successful build is normally required so the extractor can observe compilation.

## Key Options

| Option | Description |
|--------|-------------|
| `<database>` | Path of the database directory to create (must not already exist) |
| `--language` | Language identifier(s). Use `codeql resolve languages` to list them. |
| `--source-root` | Root of the source tree (default: current directory) |
| `--command` | Build command for compiled languages |
| `--build-mode` | `none`, `autobuild`, or `manual` |
| `--db-cluster` | Create a cluster (one database subdirectory per language) |
| `--threads` | Number of threads for the import phase |
| `--ram` | Memory limit in MB for the import phase |
| `--overwrite` | Delete an existing database and recreate it |
| `--extractor-option` | Pass options to the language extractor |

## Examples

Interpreted language:

```bash
codeql database create my-js-db --language=javascript --source-root=.
```

Compiled language with explicit build:

```bash
codeql database create my-java-db --language=java --command="mvn -B package -DskipTests" --source-root=.
```

Multi-language cluster:

```bash
codeql database create my-cluster --db-cluster --language=javascript,python --source-root=.
```

## Notes

- The database directory must not already exist (unless `--overwrite` is used).
- Place the database outside build output directories (e.g. avoid Maven `target/`).
- For the most accurate results on compiled languages prefer an explicit `--command` or `manual` build mode.
