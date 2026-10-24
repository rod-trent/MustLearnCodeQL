# SARIF Workflow

Produce and inspect SARIF results from CodeQL analysis.

## 1. Analyze to SARIF

```bash
codeql database analyze my-db codeql/javascript-queries \
  --format=sarif-latest \
  --output=results.sarif \
  --sarif-category=javascript
```

## 2. Inspect the SARIF

```bash
# Optional: convert to human-readable form
codeql bqrs decode --format=text results.bqrs
```

## 3. Upload to GitHub

```bash
codeql github upload-results \
  --repository=my-org/my-repo \
  --ref=refs/heads/main \
  --sarif=results.sarif
```

## Notes

- Use a stable `--sarif-category` when uploading multiple languages.
- Related commands: `database analyze`, `github upload-results`, `bqrs decode`.
