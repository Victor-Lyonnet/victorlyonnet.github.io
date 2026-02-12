# Verification Checklist

Run after every change. All items are binary pass/fail.

## Required (every change)

- [ ] `hugo --minify` completes with zero errors
- [ ] No Hugo warnings about missing files or broken shortcodes
- [ ] Michigan branding colors (#00274C, #FFCB05) not altered unless explicitly requested

## Content changes (papers, bio, teaching)

- [ ] HTML structure follows established `.paper-entry` / `.teaching-section` patterns
- [ ] All new external links return HTTP 200 (quick curl check)
- [ ] Date formats consistent with existing entries
- [ ] No unclosed HTML tags

## Structural changes (layout, config, CSS)

- [ ] Site still renders all three sections (About, Research, Teaching)
- [ ] Responsive layout not broken (check mobile CSS media queries preserved)
- [ ] Schema.org JSON-LD consistent with any content changes
- [ ] Redirects in `static/_redirects` still valid

## How to verify

```bash
# Build check
hugo --gc --minify

# Link check (for new URLs)
curl -sI "URL" | head -1

# Full build + search index
pnpm run build
```
