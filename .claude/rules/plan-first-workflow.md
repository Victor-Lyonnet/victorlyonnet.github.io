# Plan-First Workflow

## When to plan

Enter plan mode before starting any **structural change**:
- Adding or removing a page section
- Changing layout, styling, or CSS architecture
- Modifying Hugo configuration or Netlify config
- Changing branding (colors, fonts, widths)
- Restructuring content organization

## When to skip planning

Proceed directly for **content-only edits**:
- Adding, updating, or removing a paper entry
- Fixing typos or updating dates
- Updating bio text or teaching information
- Replacing the CV PDF
- Fixing broken links

## Plan procedure

1. Announce intent to plan and enter plan mode
2. Read the relevant files to understand current state
3. Draft a plan: what changes, which files, verification steps
4. Save plan to the plan file
5. Get user approval before implementing
6. After approval, switch to contractor mode (see orchestrator-protocol)

## Plan format

Plans should include:
- **Context**: why the change is needed
- **Files affected**: list with brief description of changes
- **Approach**: step-by-step implementation
- **Verification**: how to confirm the change works (always includes `hugo --minify`)
