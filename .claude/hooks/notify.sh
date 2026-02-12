#!/usr/bin/env bash
# macOS desktop notification when Claude needs user attention.
# Requires: brew install terminal-notifier (falls back to osascript if not found)

MESSAGE="${1:-Claude Code needs your attention}"

if command -v terminal-notifier &>/dev/null; then
  terminal-notifier \
    -title "Claude Code" \
    -subtitle "Website Project" \
    -message "$MESSAGE" \
    -sound default \
    -group "claude-code" \
    &>/dev/null
else
  osascript -e "display notification \"$MESSAGE\" with title \"Claude Code\" subtitle \"Website Project\" sound name \"default\"" \
    &>/dev/null
fi
