# Database Creation and Analysis Workflow

A complete workflow for creating a CodeQL database and running analysis.

## 1. Create the database

```bash
# JavaScript / TypeScript
codeql database create my-js-db --language=javascript --source-root=.

# Python (with build)
codeql database create my-py-db --language=python --source-root=.

# Java (with build command)
codeql database create my-java-db --language=java --source-root=. \
  --command="mvn clean compile -DskipTests"
```

## 2. Inspect the database

```bash
codeql database info my-js-db
```

## 3. Run analysis

```bash
# Standard queries, SARIF output
codeql database analyze my-js-db codeql/javascript-queries \
  --format=sarif-latest \
  --output=results.sarif

# Custom queries
codeql database analyze my-js-db ./my-queries \
  --format=sarif-latest \
  --output=custom.sarif
```

## 4. (Optional) Clean up

```bash
codeql database cleanup my-js-db
```

## 5. (Optional) Bundle for sharing

```bash
codeql database bundle --output=my-js-db.zip my-js-db
```

## Notes

- Prefer a successful build for compiled languages.
- Use `--threads` and `--ram` to control resource usage.
- Related commands: `database create`, `database analyze`, `database cleanup`, `database bundle`.
