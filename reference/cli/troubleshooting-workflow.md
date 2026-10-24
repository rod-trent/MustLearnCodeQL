# Troubleshooting Workflow

Steps to diagnose common CodeQL problems.

## Database creation failed

```bash
# Re-create with higher verbosity
codeql database create my-db --language=java --source-root=. \
  --command="mvn clean compile" \
  --verbosity=progress++

# Export diagnostics
codeql database export-diagnostics --format=text my-db
```

## Query fails to resolve imports

```bash
codeql resolve library-path --query=my-query.ql
codeql resolve packs
```

## Analysis produces unexpected results

```bash
# Confirm which queries will run
codeql resolve queries codeql/javascript-queries

# Run a single query for debugging
codeql query run my-query.ql --database=my-db
```

## Lock file is out of date

```bash
codeql pack resolve-dependencies --mode=verify ./my-pack
codeql pack upgrade ./my-pack
```

## Bundle a database for support

```bash
codeql database bundle --include-diagnostics --include-logs --include-results \
  --output=debug-bundle.zip my-db
```

## Notes

- Higher verbosity and diagnostics are the fastest way to surface extraction problems.
- Related commands: `database create`, `database export-diagnostics`, `resolve library-path`, `pack resolve-dependencies`, `database bundle`.
