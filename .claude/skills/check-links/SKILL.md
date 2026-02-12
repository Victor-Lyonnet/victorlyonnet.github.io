---
name: check-links
description: Check all external links in the website for broken URLs
user_invocable: true
---

# /check-links

Validate all external URLs in the website content.

## Instructions

1. **Extract links** — Read `content/_index.md` and extract all URLs from `href="..."` attributes.

2. **Classify each link**:
   - Paper link (journal or SSRN)
   - Internet Appendix
   - Replication Code
   - Other (email, institutional, CV download)

3. **Check each URL** — For each external URL, run:
   ```bash
   curl -sI -o /dev/null -w "%{http_code}" "URL"
   ```

4. **Report results**:
   ```
   LINK CHECK RESULTS

   OK (N links):
     [200] Paper: "Title" → URL

   BROKEN (N links):
     [404] Appendix: "Title" → URL
     [000] Timeout: "Title" → URL

   SKIPPED (N links):
     Email: mailto:...
     Local: /uploads/cv.pdf
   ```

5. **For broken links** — Suggest fixes:
   - If SSRN, check if the paper ID changed
   - If journal, check if the DOI redirect works
   - If appendix/code, note it may need to be updated by the user

## Notes

- Some sites (e.g., Wiley) may return 403 for automated requests — note these as "possibly OK (blocked by server)"
- Skip `mailto:` links and local paths (`/uploads/`)
- Timeout after 10 seconds per URL
