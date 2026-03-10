#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")/.."

if [ -z "${1:-}" ]; then
  echo "Usage: plans/afk-codex.sh <iterations>"
  exit 1
fi

mkdir -p plans/artifacts

base_prompt="$(cat plans/prompt.md)"

for ((i = 1; i <= $1; i++)); do
  timestamp="$(date +"%Y%m%d-%H%M%S")"
  artifact="plans/artifacts/codex-iteration-${i}-${timestamp}.txt"
  ralph_commits="$(git log --grep="^RALPH:" -n 10 --format="%H%n%ad%n%B---" --date=short 2>/dev/null || true)"

  prompt="$(cat <<EOF
$base_prompt

Previous RALPH commits:
${ralph_commits:-No RALPH commits found.}
EOF
)"

  echo "---- Codex iteration $i ----"
  result="$(
    codex exec --dangerously-bypass-approvals-and-sandbox "$prompt" | tee "$artifact"
  )"

  if [[ "$result" == *"<promise>ABORT</promise>"* ]]; then
    echo "Codex aborted on iteration $i. See $artifact."
    exit 1
  fi

  if [[ "$result" == *"<promise>COMPLETE</promise>"* ]]; then
    echo "PRD complete after $i iterations."
    exit 0
  fi
done
