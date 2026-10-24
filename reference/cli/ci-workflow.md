# CI Workflow

A practical end-to-end workflow for running CodeQL in continuous integration.

## 1. Create the database

```bash
codeql database create my-db --language=javascript --source-root=.
```

## 2. Analyze with the default suite

```bash
codeql database analyze my-db codeql/javascript-queries \
  --format=sarif-latest \
  --output=results.sarif \
  --sarif-category=javascript
```

## 3. Upload results (GitHub)

```bash
codeql github upload-results \
  --repository=my-org/my-repo \
  --ref=refs/heads/main \
  --sarif=results.sarif
```

## Optional: custom pack

```bash
codeql pack download my-org/custom-queries
codeql database analyze my-db my-org/custom-queries \
  --format=sarif-latest --output=custom.sarif
```

## Notes

- Use `--threads=0` and a suitable `--ram` for larger codebases.
- Related commands: `database create`, `database analyze`, `github upload-results`.
