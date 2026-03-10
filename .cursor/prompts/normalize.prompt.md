# /normalize - Align with Design System

Bring inconsistent code into alignment with the Clawdbots design system. Use when you inherit messy code or need to clean up after rapid prototyping.

## What it does

Systematically normalizes:
1. **Typography**: Use design system fonts, scales, weights
2. **Color**: Replace arbitrary colors with design tokens
3. **Spacing**: Use design system scale (8px base)
4. **Components**: Standardize patterns (buttons, cards, badges)
5. **Naming**: Consistent CSS class conventions

## Usage

```
/normalize
/normalize sidebar
/normalize form-styles
```

## Normalization Rules

### Typography

**Before**:
```css
h1 { font-family: Arial, sans-serif; font-size: 36px; }
h2 { font-family: Georgia, serif; font-size: 28px; }
.title { font-family: 'Roboto', sans-serif; font-size: 24px; }
```

**After**:
```css
h1, h2, h3, h4, h5, h6 {
  font-family: var(--font-serif); /* Fraunces */
  font-variation-settings: 'opsz' 144;
}

h1 { font-size: 48px; }
h2 { font-size: 32px; }
h3 { font-size: 24px; }
```

### Color

**Before**:
```css
.card { background: #fff; border: 1px solid #ddd; }
.btn { background: #ff6347; color: #fff; }
.text-muted { color: #888; }
```

**After**:
```css
.card {
  background: var(--card);
  border: 1px solid var(--border);
}

.btn {
  background: var(--accent-soft);
  color: var(--accent);
  border: 1px solid var(--accent);
}

.text-muted {
  color: var(--muted);
}
```

### Spacing

**Before**:
```css
.card { padding: 20px; margin-bottom: 15px; }
.section { margin-top: 30px; }
.button { padding: 10px 25px; }
```

**After**:
```css
.card {
  padding: var(--spacing-md); /* 24px */
  margin-bottom: var(--spacing-sm); /* 16px */
}

.section {
  margin-top: var(--spacing-lg); /* 32px */
}

.btn {
  padding: 10px 18px; /* Use consistent button padding */
}
```

### Border Radius

**Before**:
```css
.card { border-radius: 8px; }
.btn { border-radius: 5px; }
.badge { border-radius: 20px; }
```

**After**:
```css
.card { border-radius: 16px; }
.btn { border-radius: 12px; }
.badge { border-radius: 999px; } /* Full pill */
```

### Transitions

**Before**:
```css
.card { transition: all 0.3s ease; }
.btn { transition: background 0.2s linear; }
```

**After**:
```css
.card {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.btn {
  transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}
```

### Components

**Before**:
```html
<div class="info-box">
  <span class="small-text">Total Posts</span>
  <span class="big-number">42</span>
</div>
```

**After**:
```html
<div class="kpi">
  <div class="box">
    <div class="label">Total Posts</div>
    <div class="value">42</div>
  </div>
</div>
```

### Class Naming

Use consistent BEM-inspired naming:

**Before**:
```html
<div class="postCard">
  <h3 class="postCardTitle">Title</h3>
  <p class="postCardText">Text</p>
</div>
```

**After**:
```html
<article class="post-card">
  <h3 class="post-card__title">Title</h3>
  <p class="post-card__text">Text</p>
</article>
```

## Common Fixes

### Remove Inline Styles

**Before**:
```html
<div style="color: red; padding: 20px; margin-top: 15px;">
  Content
</div>
```

**After**:
```html
<div class="alert">
  Content
</div>
```

```css
.alert {
  color: var(--accent);
  padding: var(--spacing-md);
  margin-top: var(--spacing-sm);
}
```

### Consolidate Duplicate Styles

**Before**:
```css
.btn-primary { padding: 10px 18px; border-radius: 12px; }
.btn-secondary { padding: 10px 18px; border-radius: 12px; }
.btn-ghost { padding: 10px 18px; border-radius: 12px; }
```

**After**:
```css
.btn {
  padding: 10px 18px;
  border-radius: 12px;
  transition: all 0.2s var(--ease-out);
}

.btn-primary { /* Only variant-specific styles */ }
.btn-secondary { /* Only variant-specific styles */ }
```

### Fix Nesting Issues

**Before**:
```html
<div class="card">
  <div class="card-wrapper">
    <div class="card-inner">
      <div class="card-content">
        Content
      </div>
    </div>
  </div>
</div>
```

**After**:
```html
<div class="card">
  <div class="card__content">
    Content
  </div>
</div>
```

### Standardize Media Queries

**Before**:
```css
@media (max-width: 768px) { /* ... */ }
@media (max-width: 767px) { /* ... */ }
@media (max-width: 800px) { /* ... */ }
```

**After**:
```css
/* Use consistent breakpoints */
@media (max-width: 640px) { /* Mobile */ }
@media (max-width: 1024px) { /* Tablet */ }
@media (min-width: 1024px) { /* Desktop */ }
```

## Output Format

```
## 🔧 Normalization Applied

### Typography
- Replaced Arial/Georgia with design system fonts
- Unified heading scales (48/32/24px)
- Applied optical sizing to Fraunces

### Color
- Replaced #fff with var(--card)
- Replaced #ddd with var(--border)
- Replaced #888 with var(--muted)
- Replaced #ff6347 with var(--accent)

### Spacing
- Normalized padding: 20px → var(--spacing-md)
- Normalized margins: 15px → var(--spacing-sm), 30px → var(--spacing-lg)
- Applied consistent button padding (10px 18px)

### Components
- Converted .info-box to .kpi pattern
- Standardized .btn variants
- Fixed nested card structure

### Transitions
- Replaced ease/linear with cubic-bezier(0.4, 0, 0.2, 1)
- Unified durations (200ms for buttons, 300ms for cards)

### Removed
- 15 inline styles
- 3 duplicate button definitions
- 2 unnecessary wrapper divs

## 📊 Before/After

- CSS size: 18.5KB → 14.2KB (-23%)
- Design token usage: 45% → 92%
- Inline styles: 15 → 0

## ⚠️ Manual Review Needed

- [ ] Check breakpoint adjustments on real devices
- [ ] Verify custom animations still work
- [ ] Test color changes in dark environments

## ✅ Next Steps

Run `/audit` to verify all standards met.
```

## Checklist

After normalization, verify:

- [ ] All colors use design tokens
- [ ] All spacing uses design system scale
- [ ] All fonts use design system stack
- [ ] All transitions use proper easing
- [ ] Component patterns match design system
- [ ] Class names follow conventions
- [ ] No inline styles
- [ ] No duplicate code
- [ ] Media queries consistent

## Edge Cases

### Don't Over-Normalize

Some things are intentionally custom:
- Unique landing page hero sections
- Special interactive demos
- One-off illustrations

**When in doubt**: Normalize structural patterns (spacing, colors, typography), but preserve intentional creative choices.

### Preserve Functional Styles

Don't normalize purely functional CSS:
- Print styles
- Utility classes (`.sr-only`)
- Browser-specific fixes

---

**Goal**: Make the codebase consistent and maintainable, not robotic and rigid.
