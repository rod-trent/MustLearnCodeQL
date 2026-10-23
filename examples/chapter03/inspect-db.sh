#!/usr/bin/env bash
# Inspect a CodeQL database
# Usage: ./inspect-db.sh [database-path]
# Default database path: my-first-db

set -e
DB="${1:-my-first-db}"

if [ ! -d "$DB" ]; then
  echo "Database directory not found: $DB"
  echo "Create one first with: codeql database create $DB --language=javascript --source-root=."
  exit 1
fi

echo "=== Database info ==="
codeql database info "$DB"

echo ""
echo "=== Top-level contents ==="
ls -la "$DB"

echo ""
echo "=== Language directories ==="
find "$DB" -maxdepth 2 -type d -name "db-*" || true

echo ""
echo "=== codeql-database.yml (if present) ==="
if [ -f "$DB/codeql-database.yml" ]; then
  cat "$DB/codeql-database.yml"
else
  echo "(not found)"
fi
