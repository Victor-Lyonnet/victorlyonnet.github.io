---
name: add-paper
description: Add a new paper entry to the website
user_invocable: true
---

# /add-paper

Add a new research paper to Victor Lyonnet's website.

## Instructions

1. **Gather information** — Ask the user for:
   - Paper title
   - Coauthors (if any)
   - Category: Publication, Working Paper, or Work in Progress
   - For publications: journal name, year, and status (published year or "forthcoming")
   - For working papers: status (e.g., "R&R at Journal", "Month Year")
   - Paper URL (journal page or SSRN)
   - Internet Appendix URL (optional)
   - Replication Code URL (optional)
   - Abstract text (optional for WIP)

2. **Generate the HTML block** — Use the template from `.claude/rules/website-knowledge-base.md` matching the paper's category. Follow the exact HTML pattern used by existing entries in `content/_index.md`.

3. **Insert into the correct subsection** of `content/_index.md`:
   - Publications: after the `<div class="subsection-header">Publications</div>` line
   - Working Papers: after the `<div class="subsection-header">Working Papers</div>` line
   - Work in Progress: after the `<div class="subsection-header wip">Work in Progress</div>` line

   Place the new entry in the appropriate position (typically at the top of its subsection for new work, or chronologically for publications).

4. **Verify** — Run `hugo --minify` to confirm the build succeeds.

5. **Review** — Show the user the generated HTML block and its placement before committing.

## Example Usage

User: `/add-paper`
Claude: "What's the paper title, coauthors, and where should it go (Publication, Working Paper, or WIP)?"
