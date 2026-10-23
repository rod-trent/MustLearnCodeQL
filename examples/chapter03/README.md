# Chapter 3 Examples

This directory contains a helper script used in Chapter 3 of *Must Learn CodeQL*.

## inspect-db.sh

Inspects a CodeQL database (info, directory structure, language folders).

```bash
chmod +x inspect-db.sh
./inspect-db.sh my-first-db
```

Create a sample database first with the Chapter 2 sample if needed:

```bash
codeql database create my-first-db \
  --language=javascript \
  --source-root=../chapter02/sample-js
```

See the book chapter for full details on database contents and creation.
