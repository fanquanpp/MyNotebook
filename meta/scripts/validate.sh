#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

STRICT=0
REPORT_PATH=""

for arg in "$@"; do
  case "$arg" in
    --strict)
      STRICT=1
      ;;
    --report=*)
      REPORT_PATH="${arg#--report=}"
      ;;
  esac
done

failures=0

run_check() {
  local name="$1"
  shift
  if ! "$@"; then
    echo "FAILED: $name" >&2
    failures=$((failures + 1))
  fi
}

run_check "markdownlint" markdownlint "**/*.md" -c .markdownlint.json --ignore node_modules --ignore .git
run_check "markdown-link-check: README.md" markdown-link-check README.md -c .markdown-link-check.json
run_check "markdown-link-check: SUMMARY.md" markdown-link-check SUMMARY.md -c .markdown-link-check.json

if [[ -n "$REPORT_PATH" ]]; then
  cat > "$REPORT_PATH" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<testsuite name="notebook-validation" tests="3" failures="${failures}">
  <testcase name="markdownlint"></testcase>
  <testcase name="markdown-link-check: README.md"></testcase>
  <testcase name="markdown-link-check: SUMMARY.md"></testcase>
</testsuite>
EOF
fi

if [[ "$STRICT" -eq 1 && "$failures" -ne 0 ]]; then
  exit 1
fi
