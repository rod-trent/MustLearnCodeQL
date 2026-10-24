# Multi-language Workflow

Run CodeQL analysis across multiple languages in a monorepo.

## 1. Detect languages

```bash
codeql resolve languages
```

## 2. Create one database per language

```bash
codeql database create js-db --language=javascript --source-root=.
codeql database create py-db --language=python --source-root=.
codeql database create java-db --language=java --source-root=. --command="mvn compile"
```

## 3. Analyze each database

```bash
codeql database analyze js-db codeql/javascript-queries --format=sarif-latest --output=js.sarif
codeql database analyze py-db codeql/python-queries --format=sarif-latest --output=py.sarif
codeql database analyze java-db codeql/java-queries --format=sarif-latest --output=java.sarif
```

## 4. Upload each SARIF

```bash
codeql github upload-results --repository=my-org/my-repo --ref=refs/heads/main --sarif=js.sarif
codeql github upload-results --repository=my-org/my-repo --ref=refs/heads/main --sarif=py.sarif
codeql github upload-results --repository=my-org/my-repo --ref=refs/heads/main --sarif=java.sarif
```

## Notes

- Each language needs its own database.
- Related commands: `resolve languages`, `database create`, `database analyze`.
