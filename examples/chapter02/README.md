# Chapter 2 Example: Create Your First CodeQL Database

This directory contains a minimal JavaScript project used in Chapter 2 of *Must Learn CodeQL*.

## Create the database

From this directory (or anywhere, adjusting `--source-root`):

```bash
codeql database create my-first-db \
  --language=javascript \
  --source-root=sample-js
```

Or using the modern language identifier:

```bash
codeql database create my-first-db \
  --language=javascript-typescript \
  --source-root=sample-js
```

## Verify

```bash
codeql database info my-first-db
ls my-first-db
```

You should see a `db-javascript` (or similar) directory and a source archive.

## Run the Chapter 1 query against it

```bash
codeql query run \
  --database=my-first-db \
  ../chapter01/hello-world.ql
```

## Notes

- Interpreted languages (JavaScript, Python, Ruby) do not require a build step.
- The database directory is created by the command; it must not already exist.
- See the book chapter for full setup instructions and troubleshooting.
