# codeql resolve languages

List the language extractors available to the CLI.

## Synopsis

```bash
codeql resolve languages [--search-path=<dir>]
```

## Description

Shows every language the current CodeQL installation can create databases for. Useful for verifying a bundle installation and discovering exact language identifiers.

## Example

```bash
codeql resolve languages
```

Typical output includes identifiers such as:

- `cpp`
- `csharp`
- `go`
- `java`
- `javascript`
- `python`
- `ruby`
- `rust`
- `swift`

## Notes

- Use the identifiers exactly as printed with `--language` on `database create`.
- `javascript` covers TypeScript; `java` covers Kotlin.
