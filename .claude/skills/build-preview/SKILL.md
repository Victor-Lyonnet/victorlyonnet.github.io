---
name: build-preview
description: Build the site and optionally start a local preview server
user_invocable: true
---

# /build-preview

Build the Hugo site and report results.

## Instructions

1. **Build** — Run `pnpm run build` (which runs `hugo --minify && pagefind`)

2. **Report results**:
   - Build status: success or failure
   - Any warnings from Hugo
   - Number of pages generated
   - Build time

3. **If build fails** — Show the full error output and suggest fixes.

4. **Optional preview** — If the user wants a local preview, start the dev server:
   ```bash
   pnpm run dev
   ```
   Report the local URL (typically http://localhost:1313/).

5. **To stop the server** — Kill the Hugo process:
   ```bash
   pkill -f "hugo server"
   ```
