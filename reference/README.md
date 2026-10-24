# CodeQL Reference

Offline, searchable reference of CodeQL CLI commands, QL language constructs, and key standard-library classes and predicates.

This directory is designed to be:

- **Downloadable** — clone the repo and you have the full reference.
- **Searchable offline** — plain Markdown + a machine-readable `index.json`.
- **AI-ready** — structured so it can be used as a knowledge source for an MCP tool, Grok Bot, RAG pipeline, or custom CodeQL assistant.

## Layout

```
reference/
├── README.md                 ← this file
├── index.json                ← machine-readable catalog
├── cli/                      ← CodeQL CLI commands
├── ql-language/              ← QL language core
└── libraries/                ← per-language standard library highlights
    ├── javascript/
    ├── python/
    ├── java/
    └── ...
```

## Using this with an AI assistant

1. Point a RAG / embedding pipeline at the `reference/` tree.
2. Or load `index.json` + the Markdown files into an MCP resource or Grok Bot knowledge base.
3. The JSON index contains short descriptions and file paths so an agent can decide which file to retrieve.

## Sources

Content is drawn from the official CodeQL documentation and standard-library guides. Always verify against the latest CodeQL release when precision matters.

- [CodeQL CLI manual](https://docs.github.com/en/code-security/codeql-cli/codeql-cli-manual)
- [QL language reference](https://codeql.github.com/docs/ql-language-reference/)
- [CodeQL standard libraries](https://codeql.github.com/codeql-standard-libraries/)

## Contributing

Add or improve entries as Markdown files under the appropriate folder and update `index.json`. Keep entries concise and example-driven.
