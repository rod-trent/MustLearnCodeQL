# codeql github upload-results

Upload a SARIF file to GitHub code scanning.

## Synopsis

```bash
codeql github upload-results \
  --sarif=<file> \
  --repository=<owner/repo> \
  --ref=<ref> \
  --commit=<sha> \
  [--github-auth-stdin] \
  [--github-url=<url>] \
  [--checkout-path=<path>]
```

## Description

Uploads SARIF results so they appear as code scanning alerts on a branch or pull request.

The token used for authentication must have the `security_events` scope. Provide it via the `GITHUB_TOKEN` environment variable or with `--github-auth-stdin`.

## Key Options

| Option | Description |
|--------|-------------|
| `--sarif` | Path to the SARIF file (normally produced by `database analyze --format=sarif-latest`) |
| `--repository` | `owner/name` of the target repository |
| `--ref` | Ref that was analyzed (`refs/heads/main`, `refs/pull/123/head`, …) |
| `--commit` | Full SHA of the analyzed commit |
| `--github-auth-stdin` | Read the token from stdin instead of `GITHUB_TOKEN` |
| `--github-url` | GitHub instance URL (defaults to github.com) |
| `--checkout-path` | Path to the checkout (used for autodetection) |

## Example

```bash
codeql github upload-results \
  --repository=my-org/example-repo \
  --ref=refs/heads/main \
  --commit=$(git rev-parse HEAD) \
  --sarif=results.sarif
```

## Notes

- When uploading multiple SARIF files for the same commit, give each a distinct `--sarif-category` at analysis time.
- The command waits for processing by default (configurable with `--wait-for-processing-timeout`).
- Supported on public repositories and on organization repositories with GitHub Code Security enabled.
