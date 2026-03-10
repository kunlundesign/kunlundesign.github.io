# Color & Contrast Reference

## Primary Palette

### Brand Color
```css
--accent: #ff5a1f; /* Pressure Orange */
--accent-soft: rgba(255,90,31,.08);
--accent-hover: rgba(255,90,31,.15);
```

**Why Pressure Orange?**
- Distinctive and energetic
- Not overused in design (not the AI gradient blues/purples)
- Strong personality that matches the diary's tone
- Readable against both light and dark backgrounds

### Tinted Neutrals

**DON'T use pure grays**. Always tint toward the brand color:

```css
--gray-50: #f9fafb;   /* Subtle warm tint */
--gray-100: #f3f4f6;
--gray-200: #e5e7eb;
--gray-400: #9ca3af;
--gray-600: #4b5563;
--gray-900: #111827;
```

These have a subtle warm undertone that creates subconscious cohesion.

### Accent Colors

```css
--blue-dark: #1e3a5f;     /* Deep professional blue */
--blue-soft: rgba(30,58,95,.06);
--yellow-highlight: #fef3c7;  /* For highlights/callouts */
```

Use sparingly for contrast and visual interest.

---

## Color Usage Rules

### Text on Backgrounds

✅ **DO**:
```css
/* Dark text on light bg */
color: var(--gray-900);
background: var(--bg);

/* Colored text on neutral */
color: var(--accent);
background: white;
```

❌ **DON'T**:
```css
/* Gray text on colored background - washed out */
color: #888;
background: var(--accent);

/* Pure black on pure white - too harsh */
color: #000;
background: #fff;
```

**Better alternative for colored backgrounds**:
```css
/* Use a darker shade of the background color */
color: oklch(from var(--accent) calc(l - 0.3) c h);
background: var(--accent);
```

### Pure Black & White

❌ **NEVER use pure black (#000) or pure white (#fff)**

Pure values never appear in nature and feel artificial.

✅ **Use instead**:
```css
--near-black: #111827;    /* Gray-900 */
--near-white: #fafaf9;    /* Warm off-white */
```

---

## Modern CSS Color Functions

### OKLCH (Perceptual Color Space)

Use for better color manipulation:

```css
/* Darken/lighten while maintaining hue */
--accent-dark: oklch(from var(--accent) calc(l - 0.2) c h);
--accent-light: oklch(from var(--accent) calc(l + 0.2) c h);
```

### color-mix()

```css
/* Blend colors */
background: color-mix(in oklch, var(--accent) 10%, white);
```

### light-dark() for Theme Support

```css
color: light-dark(var(--gray-900), var(--gray-100));
```

---

## Semantic Tokens

Define semantic meaning, not literal colors:

```css
--border: rgba(0,0,0,.08);
--border-strong: rgba(0,0,0,.15);
--muted: rgba(0,0,0,.60);
--bg: #fafaf9;
--card: #ffffff;
```

**Why?** Easy to adapt for themes or rebrand.

---

## Contrast & Accessibility

### WCAG Standards

- **Normal text (< 18px)**: 4.5:1 minimum
- **Large text (≥ 18px)**: 3:1 minimum
- **UI components**: 3:1 minimum

### Testing

Use browser DevTools or online checkers:
- [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)
- Chrome DevTools > Accessibility > Contrast

### Color Blind Friendly

- Don't rely on color alone to convey information
- Use icons, labels, or patterns alongside color
- Test with color blindness simulators

---

## Anti-Patterns to Avoid

❌ **The AI Color Palette**:
- Cyan-on-dark
- Purple-to-blue gradients
- Neon accents on dark backgrounds
- Gradient text for "impact" (especially on metrics)

❌ **Dark Mode Defaults**:
We're not defaulting to dark mode with glowing accents. Our aesthetic is light and editorial.

❌ **Gray on Colored Backgrounds**:
```css
/* ❌ Bad */
.card {
  background: var(--accent);
  color: #888; /* Washed out */
}

/* ✅ Good */
.card {
  background: var(--accent);
  color: rgba(255,255,255,.95); /* High contrast */
}
```

---

## Color Application Examples

### Primary Action (Button)
```css
.btn {
  background: var(--accent-soft);
  color: var(--accent);
  border: 1px solid var(--accent);
}

.btn:hover {
  background: var(--accent);
  color: white;
}
```

### Card with Accent
```css
.card-accent {
  border-left: 4px solid var(--accent);
  background: linear-gradient(90deg, var(--accent-soft) 0%, transparent 100%);
}
```

### Badge
```css
.badge-primary {
  background: var(--accent-soft);
  color: var(--accent);
  border: 1px solid var(--accent);
}
```

### Links
```css
a {
  color: var(--accent);
  border-bottom: 2px solid var(--accent-soft);
}

a:hover {
  border-bottom-color: var(--accent);
  background: var(--accent-soft);
}
```

---

## Gradient Usage

**Sparingly and intentionally.**

✅ **DO** (subtle decorative elements):
```css
/* Gradient accent bar */
background: linear-gradient(90deg, var(--accent) 0%, var(--blue-dark) 100%);

/* Subtle background pattern */
background: radial-gradient(circle, var(--accent-soft) 0%, transparent 70%);
```

❌ **DON'T** (gradient text on metrics, purple-blue gradients):
```css
/* ❌ Overused AI aesthetic */
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
-webkit-background-clip: text;
```

---

## Best Practices

✅ **DO**:
- Use tinted neutrals (not pure grays)
- Maintain consistent accent color usage
- Test contrast ratios
- Use modern CSS color functions (oklch, color-mix)
- Limit palette to 3-4 colors max

❌ **DON'T**:
- Use pure black (#000) or pure white (#fff)
- Use gray text on colored backgrounds
- Default to dark mode with neon accents
- Use gradient text for impact
- Mix too many colors without purpose

---

## Tools

- **Color contrast**: WebAIM, Chrome DevTools
- **Color palettes**: Coolors, Adobe Color
- **OKLCH converter**: oklch.com
- **Accessibility**: axe DevTools, WAVE
