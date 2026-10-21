#!/usr/bin/env bash
# Simple verification script for Chapter 2
# Run after installing the CodeQL CLI

set -e

echo "=== CodeQL CLI version ==="
codeql version || { echo "codeql not found in PATH"; exit 1; }

echo ""
echo "=== Available languages ==="
codeql resolve languages

echo ""
echo "=== Sample packs (truncated) ==="
codeql resolve packs 2>/dev/null | head -30 || true

echo ""
echo "CLI looks ready. Proceed to create a database with the sample in sample-js/"
