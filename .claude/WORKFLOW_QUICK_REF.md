# Workflow Quick Reference

## Common Tasks

### Add a new paper
1. `/add-paper` — interactive prompts for all paper details
2. Verify build: `pnpm run build`
3. `/commit` — stage, commit, optionally push

### Update CV
1. Replace `static/uploads/cv.pdf` with new file
2. Verify download link works
3. `/commit`

### Update bio or teaching
1. Edit the relevant section in `content/_index.md`
2. Verify build: `hugo --minify`
3. `/commit`

### Check for broken links
1. `/check-links` — checks all external URLs

### Structural change (new section, layout, config)
1. Enter plan mode — design the change
2. Get user approval
3. Implement in contractor mode (implement → verify → review → fix)
4. `/commit`

## Slash Commands

| Command | What it does |
|---------|-------------|
| `/add-paper` | Add a paper to Research section |
| `/build-preview` | Build site, report errors, optionally start dev server |
| `/commit` | Stage, commit, optionally push to deploy |
| `/check-links` | Validate all external URLs |

## Decision Points (ask user)

- Adding or removing a page section
- Changing branding colors or layout
- Modifying Hugo config or Netlify config
- Any change to schema.org structured data
- Ambiguous instructions

## Autonomous (just do it)

- Fixing a typo in content
- Adding a paper to an existing section (after `/add-paper` prompts)
- Updating dates or course names
- Build verification after changes
- Correcting formatting inconsistencies

## Key Commands

```bash
pnpm run dev           # Dev server at localhost:1313
pnpm run build         # Full production build + search index
hugo --gc --minify     # Quick build check
pkill -f "hugo server" # Stop dev server
```
