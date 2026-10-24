# End-to-End Pack Workflow

A complete workflow for creating, developing, and publishing a CodeQL pack.

## 1. Initialize

```bash
codeql pack init my-org/security-queries
cd security-queries
```

## 2. Add dependencies

```bash
codeql pack add codeql/javascript-all
```

## 3. Write queries

Create `.ql` files and a `default.qls` suite.

## 4. Install / lock dependencies

```bash
codeql pack install
```

Commit both `qlpack.yml` and `codeql-pack.lock.yml`.

## 5. Verify (CI)

```bash
codeql pack ci
```

## 6. Publish

```bash
# Using a token from the environment
export GITHUB_TOKEN=ghp_...
codeql pack publish

# Or via stdin
echo "$GITHUB_TOKEN" | codeql pack publish --github-auth-stdin
```

## 7. Use the published pack

```bash
codeql database analyze my-db my-org/security-queries \
  --format=sarif-latest --output=results.sarif
```

## Related commands

- `pack init`, `pack add`, `pack install`, `pack ci`
- `pack publish`, `pack download`
- `database analyze`
