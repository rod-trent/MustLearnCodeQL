# codeql resolve packs

List available CodeQL packs and their locations.

## Synopsis

```bash
codeql resolve packs [--search-path=<dir>]
```

## Description

Displays the packs found on the search path (or in the default package cache). Helpful for confirming that standard query and library packs from the bundle are visible.

## Example

```bash
codeql resolve packs
```

## Notes

- If packs are missing after a fresh install, you likely downloaded the standalone CLI instead of the CodeQL bundle.
- Search path order determines which pack wins when the same name appears in multiple locations.
