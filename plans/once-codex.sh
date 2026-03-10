#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")/.."

base_prompt="$(cat plans/prompt.md)"
ralph_commits="$(git log --grep="^RALPH:" -n 10 --format="%H%n%ad%n%B---" --date=short 2>/dev/null || true)"

prompt="$(cat <<EOF
$base_prompt

Previous RALPH commits:
${ralph_commits:-No RALPH commits found.}
EOF
)"

codex -s danger-full-access "$prompt"
