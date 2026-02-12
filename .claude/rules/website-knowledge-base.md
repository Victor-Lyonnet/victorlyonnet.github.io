# Website Knowledge Base

Reference for content patterns and conventions used in this site.

## Paper Entry Pattern

Three variants depending on paper status:

### Published paper (full entry)
```html
<div class="paper-entry">
<div class="paper-title"><a href="URL" target="_blank" rel="noopener noreferrer">Title</a></div>
<div class="paper-authors">with Coauthor1 and Coauthor2</div>
<div class="paper-venue"><span class="venue-name">Journal Name</span><span class="venue-year">, YYYY</span></div>
<div class="paper-links">
<a href="URL" target="_blank" rel="noopener noreferrer">Internet Appendix</a>
<a href="URL" target="_blank" rel="noopener noreferrer">Replication Code</a>
</div>
<details>
<summary>Abstract</summary>
<p>Abstract text here.</p>
</details>
</div>
```

### Forthcoming paper
```html
<div class="paper-venue"><span class="venue-name">Journal Name</span> <span class="venue-status">(forthcoming)</span></div>
```

### Working paper (with R&R or date)
```html
<div class="paper-venue"><span class="venue-status">R&R at </span><span class="venue-name">Journal Name</span></div>
<!-- OR -->
<div class="paper-venue"><span class="venue-status">Month YYYY</span></div>
```

### Work in Progress (minimal)
```html
<div class="paper-entry" style="border-bottom: none;">
<div class="paper-title">Title</div>
</div>
```

## Author Convention

- "Lead author" prefix when Victor is lead: `Lead author, with Coauthor`
- Otherwise: `with Coauthor1 and Coauthor2`
- Victor Lyonnet's name is NOT listed (implied as author)

## Teaching Entry Pattern

```html
<div class="teaching-section">
<div class="teaching-school">School Name (YYYY–YYYY)</div>
<ul class="teaching-courses">
<li>Course Name (Level)</li>
</ul>
</div>
```

- Levels: BBA, MBA, PhD, Undergraduate, Graduate, PhD Track
- Schools in reverse chronological order
- Last entry uses `style="margin-bottom: 0;"` to remove trailing space

## Subsection Headers

```html
<div class="subsection-header">Publications</div>
<div class="subsection-header">Working Papers</div>
<div class="subsection-header wip">Work in Progress</div>
```

## Branding Rules

- All headings and links use `#00274C` (Michigan Blue)
- Section title underline uses `#FFCB05` (Michigan Maize)
- Venue text uses `#B38B00` (gold variant)
- Buttons: `#00274C` background, white text
- Content max-width: `950px`
- Abstract border-left: `2px solid #FFCB05`
