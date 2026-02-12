# Victor Lyonnet — Academic Website

Project: victorlyonnet.com
Stack: Hugo 0.154.3, HugoBlox Academic CV, Tailwind CSS v4, pnpm
Deploy: Netlify (auto on push to main) | Backup: GitHub Pages
Branch: main

## Core Principles

1. **Plan first** — Enter plan mode for structural changes (layout, config, new sections). Content-only edits (add a paper, fix a typo, update teaching) skip planning.
2. **Verify after** — Run `hugo --minify` after every change. Build must complete with zero errors.
3. **Learn from corrections** — When a mistake is corrected, save a `[LEARN:category]` entry to auto-memory so it is not repeated.
4. **Contractor mode** — After plan approval, work autonomously: implement → verify → review → fix. Only come back for ambiguity or decisions.
5. **Respect branding** — Never alter Michigan colors, layout widths, or typography without explicit approval.

## Folder Structure

```
content/_index.md         # ALL page content (single file, three sections)
config/_default/          # Hugo config: hugo.yaml, params.yaml, menus.yaml, languages.yaml, module.yaml
data/authors/me.yaml      # Author metadata
layouts/                  # Template overrides (404, footer, head-end partials)
static/uploads/           # CV and resume PDFs
static/CNAME              # Custom domain
assets/media/             # Images (processed by Hugo)
.claude/                  # Rules, agents, hooks, skills
templates/                # HTML templates for content blocks
```

## Commands

```bash
pnpm run dev           # Local dev server (hugo server --disableFastRender)
pnpm run build         # Production build (hugo --minify && pagefind)
hugo --gc --minify     # Direct Hugo build with garbage collection
```

## Branding

| Token | Value |
|-------|-------|
| Michigan Blue | `#00274C` |
| Michigan Maize | `#FFCB05` |
| Max content width | `950px` |
| Header/Footer bg | `#00274C` |
| Header/Footer text | `#FFFFFF` |
| Venue highlight | `#B38B00` |

## Content Structure (content/_index.md)

Three HugoBlox markdown blocks with inline HTML/CSS:

- **About** (`id: about`) — Bio photo, name, title, affiliation, description, CV download, email
- **Research** (`id: research`) — Subsections: Publications, Working Papers, Work in Progress
- **Teaching** (`id: teaching`) — Schools with course lists

Key CSS classes: `.bio-container`, `.section-container`, `.section-title`, `.subsection-header`, `.paper-entry` (`.paper-title`, `.paper-authors`, `.paper-venue`, `.paper-links`, `details`), `.teaching-section` (`.teaching-school`, `.teaching-courses`)

## Paper Inventory

- Publications: 5 (RFS x3, AER P&P, JMCB)
- Working Papers: 3 (1 R&R at RFS)
- Work in Progress: 2

## Decision Framework

| Action | Needs planning? |
|--------|----------------|
| Add/remove a paper | No |
| Fix typo, update dates | No |
| Update bio text, teaching | No |
| Replace CV PDF | No |
| Add a new page section | Yes |
| Change layout or styling | Yes |
| Modify Hugo/Netlify config | Yes |
| Change branding colors | Yes |

## Protected Files (warn before editing)

- `config/_default/hugo.yaml` — baseURL, site title
- `static/CNAME` — custom domain
- `netlify.toml` — deploy pipeline
- `layouts/_partials/hooks/head-end/statcounter.html` — analytics
