# codeql database info

Display metadata about a CodeQL database.

## Synopsis

```bash
codeql database info <database>
```

## Description

Prints language, source root, creation time, extractor options, and other metadata stored in the database.

## Example

```bash
codeql database info my-js-db
```

Useful for confirming that a database was created successfully and for which language.
