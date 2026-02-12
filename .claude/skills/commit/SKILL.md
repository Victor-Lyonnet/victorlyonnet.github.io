---
name: commit
description: Stage, commit, and optionally push changes
user_invocable: true
---

# /commit

Stage and commit changes, optionally pushing to trigger Netlify deploy.

## Instructions

1. **Check status** — Run `git status` and `git diff` to see what changed.

2. **Verify build** — Run `hugo --minify` to confirm the site builds cleanly before committing.

3. **Stage files** — Add specific changed files (not `git add -A`). Never stage:
   - `.env` or credential files
   - `public/` directory (generated output)
   - `node_modules/`
   - `resources/` (Hugo cache, regenerated on build)

4. **Write commit message** — Concise, descriptive message. Examples:
   - "Add working paper: Machine Learning About VC Choices"
   - "Update bio: add Hallman fellowship"
   - "Fix broken SSRN link for stereotypes paper"

5. **Commit** — Create the commit.

6. **Ask about push** — Ask the user if they want to push to main (which triggers Netlify deploy). If yes, run `git push origin main`.

7. **Report** — Show the commit hash and, if pushed, note that Netlify deployment will start automatically.
