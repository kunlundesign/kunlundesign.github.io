# Typography Reference

## Font Stack

### Display (Headings)
```css
font-family: 'Fraunces', ui-serif, Georgia, Cambria, "Times New Roman", Times, serif;
```

**Fraunces** is a variable font with optical sizing. Use `font-variation-settings: 'opsz' 144` for headings.

**Why Fraunces?**
- Distinctive personality (not overused)
- Variable font capabilities
- Excellent readability at large sizes
- Slightly quirky character shapes

**Loading strategy**:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preload" as="style" href="fonts-url">
<link href="fonts-url" rel="stylesheet">
```

### Body Text
```css
font-family: 'Inter', ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial;
```

**Why Inter?**
- Clean, modern, readable
- Excellent hinting and spacing
- Wide language support

**DON'T**: Use Inter for headings. It's too common for display text.

### Monospace (Code)
```css
font-family: 'SF Mono', 'Consolas', 'Monaco', monospace;
```

**DON'T**: Use monospace for aesthetic purposes ("developer vibe"). Only use for actual code.

---

## Type Scale

Fluid sizing with `clamp()` for responsive typography:

```css
/* Hero titles */
--text-hero: clamp(32px, 5vw, 48px);

/* Section headings */
--text-h2: 32px;
--text-h3: 24px;

/* Body */
--text-body: 17px;
--text-small: 14px;
--text-tiny: 12px;
```

**Mobile adjustments**:
- Hero: 32px
- H2: 28px
- H3: 22px
- Body: 16px (slightly smaller for mobile screens)

---

## Font Weights

Use variable weights strategically:

- **400** (Regular): Body text
- **500** (Medium): Slightly emphasized text
- **600** (Semibold): Subheadings, labels
- **700** (Bold): Headings, important info

**DON'T**: Use 300 (Light) for body text—reduces readability.

---

## Line Height

```css
/* Display text */
h1, h2, h3 { line-height: 1.2; }

/* Body text */
p { line-height: 1.75; }

/* Tight UI elements */
.label { line-height: 1.4; }
```

**Rule**: Larger text = tighter line-height. Smaller text = more generous.

---

## Letter Spacing

```css
/* Display headings - slightly tighter */
h1, h2, h3 { letter-spacing: -0.02em; }

/* Hero extra tight */
.hero-title { letter-spacing: -0.03em; }

/* Labels - slightly wider */
.label { letter-spacing: 0.05em; }
```

**DON'T**: Over-track body text. Keep it at default (0).

---

## Hierarchy Examples

### Page Title
```html
<h1 class="post-title">Title Here</h1>
```

- Font: Fraunces 700
- Size: 48px (mobile: 36px)
- Line-height: 1.1
- Letter-spacing: -0.03em
- Optional: gradient fill

### Section Heading
```html
<h2>Section Title</h2>
```

- Font: Fraunces 600
- Size: 32px (mobile: 28px)
- Line-height: 1.2
- Margin-top: 64px (creates visual breathing room)

### Body Text
```html
<p>Body paragraph here.</p>
```

- Font: Inter 400
- Size: 17px (mobile: 16px)
- Line-height: 1.75
- Color: var(--gray-900)

---

## OpenType Features

### Tabular Numerals (for KPIs)
```css
.kpi .value {
  font-variant-numeric: tabular-nums;
  font-feature-settings: 'tnum' 1;
}
```

Keeps numbers aligned in tables/dashboards.

### Ligatures
```css
body {
  font-variant-ligatures: common-ligatures;
}
```

Enabled by default for better readability.

---

## Best Practices

✅ **DO**:
- Use Fraunces for display text (headings, hero titles)
- Use Inter for body text and UI elements
- Vary font weights to create hierarchy
- Use fluid sizing with clamp() for responsive design
- Apply optical sizing to Fraunces headings

❌ **DON'T**:
- Use Inter for headings (too common)
- Use monospace for aesthetic purposes
- Mix too many font families (stick to 2-3 max)
- Use light weights for body text
- Ignore mobile font size adjustments
- Use generic system fonts without fallbacks
- Put large icons above every heading (visual noise)

---

## Accessibility

- Minimum 16px for body text
- Contrast ratio 4.5:1 for normal text, 3:1 for large text
- Use `rem` units for sizing (respects user preferences)
- Support text zoom up to 200%

---

## Performance

- Preload critical fonts
- Use `font-display: swap` to prevent FOIT
- Subset fonts if possible (remove unused glyphs)
- Self-host for better control and privacy
