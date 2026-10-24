# CodeQL CLI Commands

Reference for the most commonly used CodeQL CLI commands.

Run `codeql <command> --help` for the full option list of any command.

## Core workflow

| Command | Purpose |
|---------|---------|
| `codeql database create` | Create a database from source |
| `codeql database analyze` | Run queries and produce results (SARIF, etc.) |
| `codeql query run` | Run a single query |
| `codeql database info` | Inspect database metadata |
| `codeql resolve languages` | List supported languages |
| `codeql resolve packs` | List available packs |

## database create

Create a CodeQL database.

```bash
codeql database create <database> \
  --language=<lang> \
  --source-root=<dir> \
  [--command=<build-command>] \
  [--build-mode=none|autobuild|manual] \
  [--db-cluster]
```

**Key options**

- `--language` — required language identifier (`javascript`, `python`, `java`, `cpp`, …)
- `--source-root` — root of the source tree
- `--command` — build command for compiled languages
- `--build-mode` — `none`, `autobuild`, or `manual`
- `--db-cluster` — create one database per language
- `--threads`, `--ram` — resource limits

## database analyze

Run queries against a database and produce interpreted results.

```bash
codeql database analyze <database> \
  <query|suite|pack> \
  --format=sarif-latest \
  --output=results.sarif \
  [--threads=<n>] \
  [--ram=<MB>]
```

## query run

Run a single query and print results.

```bash
codeql query run --database=<database> <query.ql>
```

## Other useful commands

- `codeql database info <db>`
- `codeql database cleanup <db>`
- `codeql database bundle <db>`
- `codeql pack download <pack>`
- `codeql github upload-results` — upload SARIF to GitHub code scanning
- `codeql resolve languages`
- `codeql resolve packs`
- `codeql version`

See individual files in this directory for more detail on selected commands.
