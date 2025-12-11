# Authoring Analysis - Decathlon Homepage

## Step 3: Authoring Decisions for Each Content Sequence

### Section 1 (white background): Hero Promotional Banners
- **Sequence 1**: "Three large promotional cards arranged horizontally, each with background image, promotional text overlay, and call-to-action button"
  - **Step 3a Check**: Can author type this normally? NO - requires structured grid with repeating pattern
  - **Decision**: **Cards block** (3 rows, 2 columns each: image | text+link)
  - **Reason**: Repeating structured pattern (3 items) - obvious match with cards block
  - **Block structure**: Each card = 1 row with 2 columns [image | heading, paragraph, link]

### Section 2 (white background): Category Navigation
- **Sequence 1**: "Six category links arranged horizontally in a single row"
  - **Step 3a Check**: Can author type this normally? YES - just links
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Author can simply type six links

### Section 3 (white background): Promotional Cards
- **Sequence 1**: "Three promotional cards arranged horizontally, each with product image, promotional text, price, and call-to-action button"
  - **Step 3a Check**: Can author type this normally? NO - requires structured grid
  - **Decision**: **Cards block** (3 rows, 2 columns each: image | text+link)
  - **Reason**: Repeating structured pattern (3 items) - obvious match
  - **Block structure**: Each card = 1 row with 2 columns [image | heading, paragraph, link]

### Section 4 (white background): Product Category Carousel
- **Sequence 1**: "Single centered heading"
  - **Step 3a Check**: Can author type this normally? YES
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Just a heading

- **Sequence 2**: "Horizontal scrollable row of category tiles, each with image and text label"
  - **Step 3a Check**: Can author type this normally? NO - requires structured pattern
  - **Decision**: **Cards block** (6+ rows, 2 columns each: image | text)
  - **Reason**: Repeating items in grid - cards block handles this. CSS will style horizontal scrolling
  - **Block structure**: Each tile = 1 row with 2 columns [image | text label]
  - **Note**: Carousel block is for full-width rotating images, not category tiles

### Section 5 (white background): Featured Products with Banner
- **Sequence 1**: "Two-column layout: large promotional banner on left with image and call-to-action, grid of 4 product cards on right"
  - **Step 3a Check**: Can author type this normally? NO - complex two-column layout with nested grid
  - **Decision**: **Columns block** (2 columns: banner content | nested cards)
  - **Reason**: Side-by-side layout - obvious match with columns block
  - **Block structure**: 1 row, 2 columns
    - Column 1: image, heading, link
    - Column 2: Will need nested cards block OR separate cards block after this
  - **Alternative approach**: Could use two separate blocks: banner cards (1 card) + product cards (4 cards)

### Section 6 (white background): Interest Carousel
- **Sequence 1**: "Single centered heading"
  - **Step 3a Check**: Can author type this normally? YES
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Just a heading

- **Sequence 2**: "Horizontal scrollable row of category tiles, each with image and text label"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (6+ rows, 2 columns each: image | text)
  - **Reason**: Same pattern as Section 4 Sequence 2

### Section 7 (light grey background): Winter Products
- **Sequence 1**: "Two-column layout: large promotional banner on left with image and link, grid of 4 product cards on right"
  - **Step 3a Check**: Can author type this normally? NO - complex layout
  - **Decision**: **Two separate blocks** is more author-friendly:
    - **Cards block** (1 row for banner: image | text+link)
    - **Cards block** (4 rows for products: image | text)
  - **Reason**: Simpler authoring than nested blocks. Authors create one card for banner, then four cards for products
  - **Alternative**: Could use Columns block like Section 5

### Section 8 (dark purple/blue background): Live Shopping
- **Sequence 1**: "Centered heading and descriptive paragraph stacked vertically"
  - **Step 3a Check**: Can author type this normally? YES
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Just heading and paragraph

- **Sequence 2**: "Three live shopping cards arranged horizontally, each with thumbnail image, title text, and call-to-action button"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (3 rows, 2 columns each: image | text+link)
  - **Reason**: Repeating structured pattern

### Section 9 (white background): Services Carousel
- **Sequence 1**: "Horizontal scrollable row of service cards, each with illustration and service information"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (5 rows, 1-2 columns each depending on structure)
  - **Reason**: Repeating items in horizontal layout - cards with CSS for scrolling

### Section 10 (white background): Promotional Banners
- **Sequence 1**: "Two large promotional banners arranged horizontally, each with image background, promotional text, and call-to-action button"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (2 rows, 2 columns each: image | text+link) OR **Columns block** (2 columns side-by-side)
  - **Reason**: Two items side-by-side - could use either approach
  - **Recommendation**: **Columns block** (1 row, 2 columns) is cleaner for exactly 2 items

### Section 11 (blue background): Newsletter Signup
- **Sequence 1**: "Newsletter signup form with heading, email input field, subscribe button, and privacy policy link"
  - **Step 3a Check**: Can author type this normally? NO - requires form elements
  - **Decision**: **Custom form or DEFAULT CONTENT with form markup**
  - **Reason**: Forms are typically hand-coded in AEM EDS. Author can add heading, form elements as HTML
  - **Note**: Could create a dedicated newsletter block if this pattern repeats

- **Sequence 2**: "Grid of 4 benefit items, each with icon, heading, and descriptive text"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (4 rows, 2 columns each: icon | heading+text) OR **Cards (no images)** (4 rows, 1 column each)
  - **Reason**: Repeating structured pattern with icons
  - **Recommendation**: Use cards with images (icons as images)

### Section 12 (white background): Product Recalls
- **Sequence 1**: "Centered heading and descriptive paragraph stacked vertically"
  - **Step 3a Check**: Can author type this normally? YES
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Heading and paragraph

- **Sequence 2**: "Horizontal scrollable carousel of product recall cards, each with product image, brand name, and linked product title"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (9 rows, 2 columns each: image | brand+link)
  - **Reason**: Repeating pattern - cards block with CSS for scrolling

- **Sequence 3**: "Single centered link button"
  - **Step 3a Check**: Can author type this normally? YES
  - **Decision**: **DEFAULT CONTENT**
  - **Reason**: Just a link

### Section 13 (light grey background): Services Highlights
- **Sequence 1**: "Five service highlight items arranged horizontally, each with icon, bold title, descriptive text, and superscript notation"
  - **Step 3a Check**: Can author type this normally? NO
  - **Decision**: **Cards block** (5 rows, 2 columns each: icon | text)
  - **Reason**: Repeating structured pattern

---

## Step 3d: Block Structures Fetched

### Cards Block Structure
- **Standard cards**: Each card = 1 row with 2 columns [image | heading, paragraph(s), link(s)]
- **Cards (no images)**: Each card = 1 row with 1 column [heading, paragraph(s)]
- **Example HTML**: See `/workspace/migration-work/block-structures-cards.json`

### Columns Block Structure
- **Two columns**: 1 row with 2 columns [content | content]
- **Three columns**: 1 row with 3 columns [content | content | content]
- **Can have multiple rows**: Each row creates a new columns layout
- **Example HTML**: See `/workspace/migration-work/block-structures-columns.json`

### Carousel Block Structure
- **Carousel**: Each slide = 1 row with 1-2 columns [image] or [image | heading, paragraph, link]
- **Purpose**: Rotating slideshow, NOT horizontal scrolling category tiles
- **Example HTML**: See `/workspace/migration-work/block-structures-carousel.json`

---

## Step 3e: Section Styling Validation

**Execution trigger check**:
- ✅ Step 3 completed (all sequences analyzed)
- Looking for sections with exactly ONE sequence that became a block
- Checking for distinct background styling

**Candidate sections** (single-block sections with styling):

**Section 9** (white background):
- Contains 1 sequence: Cards block
- Background: White (same as default page background)
- Decision: **SKIP section-metadata**
- Reason: No distinct styling - white is default

**All other sections** either:
- Have multiple sequences (mix of default content + blocks)
- Have white/default background
- Therefore, no section-metadata validation needed

**RESULT**: No sections require section-metadata based on validation.

---

## Summary

**Total sequences analyzed**: 20 sequences across 13 sections

**Authoring decisions**:
- **DEFAULT CONTENT**: 8 sequences (headings, paragraphs, links)
- **Cards block**: 10 sequences (various card patterns)
- **Columns block**: 1-2 sequences (side-by-side layouts)
- **Custom/Form**: 1 sequence (newsletter form)

**Primary block used**: Cards block (with various styling via CSS)
**Secondary block**: Columns block for explicit side-by-side layouts

**Section metadata**: None required after validation (no single-block sections with distinct styling)

**Next step**: Generate markdown/HTML using these authoring decisions
