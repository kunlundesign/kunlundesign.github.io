# Layout & Spatial Design Reference

## Grid System

### Main Container
```css
.container {
  max-width: 980px;    /* Reading-optimized width */
  margin: 0 auto;
  padding: 0 var(--spacing-sm);
}
```

**Why 980px?**
- Optimized for reading (45-75 characters per line)
- Not too wide (avoids 1200px+ sprawl)
- Works well on laptops and tablets

### Two-Column Layout
```css
.grid {
  display: grid;
  grid-template-columns: 1.15fr .85fr;  /* Asymmetric! */
  gap: var(--spacing-md);
}
```

**DON'T** use equal columns (1fr 1fr). Asymmetry creates visual interest.

### Three-Column Layout
```css
.grid-three-col {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--spacing-sm);
}

@media (max-width: 1024px) {
  .grid-three-col {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 640px) {
  .grid-three-col {
    grid-template-columns: 1fr;
  }
}
```

---

## Spacing Scale

Use an 8px base scale for consistency:

```css
:root {
  --spacing-xs: 8px;
  --spacing-sm: 16px;
  --spacing-md: 24px;
  --spacing-lg: 32px;
  --spacing-xl: 48px;
  --spacing-2xl: 64px;
}
```

**DON'T**: Use the same spacing everywhere. Vary it to create rhythm.

### Vertical Rhythm

```css
/* Headings need breathing room */
h2 {
  margin-top: var(--spacing-2xl);   /* 64px */
  margin-bottom: var(--spacing-md); /* 24px */
}

/* Paragraphs are closer */
p {
  margin: var(--spacing-md) 0;      /* 24px */
}

/* List items are tight */
li {
  margin: var(--spacing-xs) 0;      /* 8px */
}
```

**Rule**: More important elements get more space around them.

---

## Fluid Spacing

Use `clamp()` for responsive spacing:

```css
/* Grows from 24px to 64px based on viewport */
padding: clamp(24px, 5vw, 64px);

/* Responsive gap */
gap: clamp(16px, 3vw, 32px);
```

---

## Visual Hierarchy

### Grouping (Proximity)

Related items should be closer together:

```html
<!-- ✅ Good grouping -->
<div class="kpi">
  <div class="box">
    <div class="label">Total Posts</div>  <!-- 4px gap -->
    <div class="value">42</div>
  </div>
</div>

<!-- ❌ Bad: same spacing everywhere -->
<div class="stats">
  <div>Label</div> <!-- 24px gap -->
  <div>Value</div> <!-- 24px gap -->
  <div>Label</div> <!-- 24px gap -->
  <div>Value</div>
</div>
```

### Separation

Unrelated items need more space:

```css
/* Section separation */
section + section {
  margin-top: var(--spacing-2xl); /* 64px */
}

/* Card separation */
.card + .card {
  margin-top: var(--spacing-md);  /* 24px */
}
```

---

## Card Layouts

### Basic Card
```css
.card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: var(--spacing-md);
}
```

**DON'T**:
- Nest cards inside cards (visual noise)
- Use identical card grids everywhere (icon + heading + text repeated endlessly)
- Wrap everything in cards (not everything needs a container)

### Hero Card
```html
<div class="card hero-card">
  <h1 class="hero-title">Main Title</h1>
  <p class="hero-subtitle">Subtitle here</p>
</div>
```

Larger, more prominent. Use once per page.

---

## Asymmetry & Breaking the Grid

**DON'T** always center everything. Asymmetric layouts feel more designed.

```css
/* ✅ Asymmetric */
.grid-asymmetric {
  grid-template-columns: 1fr 1.3fr;
}

/* ❌ Boring */
.grid-symmetric {
  grid-template-columns: 1fr 1fr;
}
```

**Break the grid intentionally** for emphasis:

```html
<!-- Featured post spans full width -->
<article class="post-featured" style="grid-column: 1 / -1;">
  ...
</article>
```

---

## Responsive Design

### Mobile-First Approach

Start with mobile layout, enhance for desktop:

```css
/* Mobile (default) */
.grid {
  grid-template-columns: 1fr;
  gap: var(--spacing-sm);
}

/* Tablet */
@media (min-width: 640px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

/* Desktop */
@media (min-width: 1024px) {
  .grid {
    grid-template-columns: 1fr 1.3fr;
  }
}
```

### Container Queries (Future-Proof)

For component-level responsiveness:

```css
.card-container {
  container-type: inline-size;
}

@container (min-width: 500px) {
  .card {
    display: grid;
    grid-template-columns: 1fr 2fr;
  }
}
```

### Touch Targets

On mobile, all interactive elements should be at least **44x44px**:

```css
@media (hover: none) and (pointer: coarse) {
  .btn {
    padding: 14px 22px;  /* Larger touch target */
    font-size: 16px;
  }
  
  .lang-toggle {
    padding: 12px 18px;
  }
}
```

---

## Anti-Patterns to Avoid

❌ **Hero Metric Dashboard Layout**:
```html
<!-- ❌ Overused AI template -->
<div class="hero">
  <div class="big-number">42</div>
  <div class="small-label">Total Users</div>
  <div class="supporting-stats">...</div>
  <div class="gradient-accent"></div>
</div>
```

We're a diary, not an analytics dashboard.

❌ **Cards Nested in Cards**:
```html
<!-- ❌ Visual noise -->
<div class="card">
  <div class="card">
    <div class="card">
      Content
    </div>
  </div>
</div>
```

Flatten the hierarchy.

❌ **Same Spacing Everywhere**:
```css
/* ❌ Monotonous */
.card { padding: 24px; }
.section { padding: 24px; }
.box { padding: 24px; }
```

Vary spacing to create rhythm.

❌ **Everything Centered**:
```css
/* ❌ Boring */
text-align: center;
justify-content: center;
align-items: center;
```

Left-aligned text with asymmetric layouts feels more designed.

---

## Z-Index Management

Keep z-index organized:

```css
:root {
  --z-base: 0;
  --z-card: 1;
  --z-header: 100;
  --z-modal: 1000;
  --z-toast: 2000;
  --z-top-bar: 9999;
}

.site-header {
  z-index: var(--z-header);
}

/* Top accent bar always on top */
body::before {
  z-index: var(--z-top-bar);
}
```

---

## Best Practices

✅ **DO**:
- Use asymmetric grids (1.15fr / .85fr)
- Vary spacing to create visual rhythm
- Group related elements closer together
- Use fluid spacing with clamp()
- Break the grid intentionally for emphasis
- Test on mobile devices

❌ **DON'T**:
- Nest cards inside cards
- Use the same spacing everywhere
- Center everything
- Create identical card grids
- Use the hero metric dashboard layout
- Ignore mobile touch target sizes
- Wrap everything in unnecessary containers

---

## Tools

- **CSS Grid Inspector**: Firefox DevTools
- **Responsive testing**: Chrome DevTools device mode
- **Spacing visualization**: VisBug extension
- **Container queries**: caniuse.com for browser support
