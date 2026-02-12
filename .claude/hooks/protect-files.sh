#!/usr/bin/env bash
# Warn before editing protected configuration files.
# Called as a PreToolUse hook: protect-files.sh "$TOOL_NAME" "$TOOL_INPUT"
# Exits 0 to allow, exits 2 to warn (Claude Code shows warning to user).

TOOL_NAME="$1"
TOOL_INPUT="$2"

# Only check Edit and Write tools
if [[ "$TOOL_NAME" != "Edit" && "$TOOL_NAME" != "Write" ]]; then
  exit 0
fi

# Protected files (warn before editing)
PROTECTED_FILES=(
  "config/_default/hugo.yaml"
  "static/CNAME"
  "netlify.toml"
  "layouts/_partials/hooks/head-end/statcounter.html"
)

for PROTECTED in "${PROTECTED_FILES[@]}"; do
  if echo "$TOOL_INPUT" | grep -q "$PROTECTED"; then
    echo "WARNING: You are about to edit a protected file: $PROTECTED"
    echo "This file controls critical site infrastructure (domain, deploy, analytics, or base config)."
    echo "Please confirm this edit is intentional."
    exit 2
  fi
done

exit 0
