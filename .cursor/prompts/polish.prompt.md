# /polish - Final Pass Before Shipping

Run a final polish pass on the current page or component. This is the last step before going live.

## What it does

Applies final refinements:
1. **Typography perfection**: Optical sizing, spacing micro-adjustments
2. **Visual depth**: Subtle shadows, hover states, focus indicators
3. **Motion details**: Entrance animations, stagger timing
4. **Accessibility**: Double-check all a11y requirements
5. **Bilingual**: Ensure both languages feel equally polished
6. **Performance**: Remove unused code, optimize assets

## Usage

```
/polish
/polish hero-section
/polish checkout-form
```

## Polish Checklist

### Typography Fine-Tuning
- [ ] Fraunces optical sizing set (`font-variation-settings: 'opsz' 144`)?
- [ ] Letter-spacing adjusted for display text (-0.02em to -0.03em)?
- [ ] Hanging punctuation for quotes?
- [ ] Tabular numerals for KPIs (`font-variant-numeric: tabular-nums`)?
- [ ] Ligatures enabled?
- [ ] Text rendering optimized (`text-rendering: optimizeLegibility`)?

### Visual Depth
- [ ] Cards have subtle shadow on hover?
- [ ] Interactive elements have visible hover states?
- [ ] Focus indicators meet 3:1 contrast ratio?
- [ ] Decorative elements subtle and purposeful?
- [ ] Border colors harmonious with background?

### Motion Polish
- [ ] Page entrance animations staggered?
- [ ] Hover effects smooth (200-300ms)?
- [ ] Transitions use proper easing curve?
- [ ] Loading states animated (skeleton screens)?
- [ ] Button press feedback (active state)?

### Content Refinement
- [ ] All copy concise (no filler)?
- [ ] Headings scannable?
- [ ] Links descriptive?
- [ ] Error messages specific and helpful?
- [ ] Empty states teach the interface?

### Accessibility Review
- [ ] All interactive elements keyboard-accessible?
- [ ] Focus order logical?
- [ ] Skip links present for navigation?
- [ ] ARIA labels accurate?
- [ ] Images have alt text?
- [ ] Forms have proper labels?

### Bilingual Polish
- [ ] Both languages use natural phrasing?
- [ ] Toggle button visible and accessible?
- [ ] Line lengths comfortable in both languages?
- [ ] No overflow issues with longer translations?

### Performance
- [ ] Fonts preloaded and subset?
- [ ] Images lazy-loaded (except above-fold)?
- [ ] Unused CSS removed?
- [ ] JavaScript minified?
- [ ] Critical CSS inlined?

### Cross-Browser Testing
- [ ] Safari (WebKit)
- [ ] Chrome (Blink)
- [ ] Firefox (Gecko)
- [ ] Mobile Safari
- [ ] Mobile Chrome

## Polish Techniques

### 1. Micro-Animations

Add subtle delight:

```css
/* Button shimmer on hover */
.btn::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(
    90deg,
    transparent 0%,
    rgba(255,255,255,.3) 50%,
    transparent 100%
  );
  transition: left 0.5s ease;
}

.btn:hover::before {
  left: 100%;
}
```

### 2. Enhanced Shadows

Layer shadows for depth:

```css
.card:hover {
  box-shadow:
    0 2px 4px rgba(0,0,0,.04),
    0 8px 16px rgba(0,0,0,.08),
    0 16px 32px rgba(0,0,0,.04);
}
```

### 3. Decorative Accents

Subtle brand reinforcement:

```css
/* Accent bar at top */
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(90deg, var(--accent) 0%, var(--blue-dark) 100%);
  z-index: 9999;
}
```

### 4. Selection Color

```css
::selection {
  background: var(--accent);
  color: white;
}
```

### 5. Smooth Scrollbar

```css
::-webkit-scrollbar {
  width: 10px;
}

::-webkit-scrollbar-thumb {
  background: var(--accent);
  border-radius: 5px;
}
```

## Output Format

```
## 🎨 Polish Applied

### Typography
- Added optical sizing to Fraunces headings
- Adjusted letter-spacing on hero title (-0.03em)
- Enabled tabular numerals for KPIs

### Visual Depth
- Enhanced card hover shadows (3-layer)
- Added button shimmer effect
- Refined focus indicator (3px outline, 2px offset)

### Motion
- Staggered card entrance (0.15s delays)
- Smoothed button transitions (200ms)
- Added skeleton loading state

### Accessibility
- Added ARIA labels to icon buttons
- Improved focus order
- Enhanced color contrast in .badge-secondary (now 4.7:1)

### Bilingual
- Adjusted line-height for Chinese text (1.8 vs 1.75)
- Verified no overflow at 320px width

### Performance
- Preloaded Fraunces font
- Lazy-loaded below-fold images
- Removed unused CSS (15KB → 12KB)

## ✅ Ready to Ship

All quality checks passed. Page meets Clawdbots design standards.

## 📊 Final Score: 96/100

Minor improvements possible but not blocking.
```

## Final Check

Before marking as "ready to ship":

1. **View on real devices** (not just DevTools emulation)
2. **Test with slow network** (throttle in DevTools)
3. **Check with screen reader** (VoiceOver, NVDA)
4. **Verify print styles** (File > Print preview)
5. **Test keyboard navigation** (Tab, Enter, Escape)

## Common Last-Minute Fixes

- Adjust z-index conflicts
- Fix text overflow on narrow screens
- Add missing hover states
- Improve loading indicators
- Refine empty state copy
- Add missing alt text
- Fix focus trap in modals
- Adjust touch target sizes

---

**Remember**: Shipping at 96/100 is better than endlessly polishing to 100/100. Ship it!
