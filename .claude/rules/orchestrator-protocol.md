# Orchestrator Protocol (Contractor Mode)

After the user approves a plan, work autonomously through this loop:

## Loop: Implement → Verify → Review → Fix

### 1. Implement
- Make the planned changes
- Follow established HTML patterns (see website-knowledge-base)
- Respect branding constants

### 2. Verify
- Run `hugo --minify` — must complete with zero errors
- For content changes: check HTML structure matches existing patterns
- For new links: curl each URL to confirm HTTP 200

### 3. Review
- Re-read the modified files
- Check for: typos, unclosed tags, broken formatting, branding violations
- For paper entries: verify title, authors, venue, links are all correct

### 4. Fix (if needed)
- Apply corrections
- Return to step 2 (verify again)
- Maximum 3 rounds — if still failing after 3, report the issue to the user

## When to interrupt and ask the user

- Ambiguous requirements (e.g., "update the research section" — which part?)
- Multiple valid approaches with different trade-offs
- Changes that would affect protected files
- Build failures that cannot be resolved after 3 attempts
- Any change that would alter the site's visual appearance significantly

## Autonomous actions (no need to ask)

- Fixing typos found during review
- Adjusting whitespace or formatting for consistency
- Adding missing closing tags
- Correcting date formatting to match existing patterns
