# /audit - Design Quality Check

Run technical quality checks on the current page or component.

## What it does

Systematically reviews:
1. **Typography**: Hierarchy, font usage, readability
2. **Color & Contrast**: WCAG compliance, color usage
3. **Layout & Spacing**: Rhythm, grouping, responsiveness
4. **Motion**: Performance, reduced motion support
5. **Content**: Clarity, redundancy, bilingual quality
6. **Accessibility**: Semantic HTML, ARIA labels, keyboard navigation

## Usage

```
/audit
/audit header
/audit post-layout
```

## Checklist

### Typography
- [ ] Fraunces used for headings?
- [ ] Inter for body text?
- [ ] Clear hierarchy (size, weight, spacing)?
- [ ] Readable line lengths (45-75 characters)?
- [ ] Appropriate line-height (1.2 for headings, 1.75 for body)?
- [ ] No monospace for aesthetic purposes?

### Color & Contrast
- [ ] All text meets WCAG AA (4.5:1 for normal, 3:1 for large)?
- [ ] No gray text on colored backgrounds?
- [ ] No pure black (#000) or pure white (#fff)?
- [ ] Tinted neutrals used?
- [ ] Accent color (--accent) used consistently?
- [ ] No AI gradient patterns (purple-blue, cyan-on-dark)?

### Layout & Spacing
- [ ] Max-width appropriate (980px for content)?
- [ ] Spacing creates visual rhythm (not same everywhere)?
- [ ] Related items grouped closer together?
- [ ] No cards nested in cards?
- [ ] Asymmetric grids where appropriate?
- [ ] Mobile-friendly (touch targets 44px+)?

### Motion
- [ ] Smooth easing (cubic-bezier(0.4, 0, 0.2, 1))?
- [ ] Appropriate durations (200-300ms for interactions)?
- [ ] Only transform and opacity animated (not width/height)?
- [ ] Reduced motion support present?
- [ ] No bounce/elastic easing?
- [ ] Animations serve a purpose (not decorative noise)?

### Content
- [ ] No filler words ("Great question!", "I'd be happy to...")?
- [ ] No redundancy (repeating visible info)?
- [ ] Active voice used?
- [ ] Links descriptive (not "click here")?
- [ ] Both EN/中文 versions natural (not literal translation)?
- [ ] Error messages helpful and specific?

### Accessibility
- [ ] Semantic HTML used (`<article>`, `<nav>`, `<time>`)?
- [ ] Alt text meaningful?
- [ ] ARIA labels for icon buttons?
- [ ] Focus visible states styled?
- [ ] Keyboard navigation works?
- [ ] Color not sole indicator of meaning?

### Performance
- [ ] Fonts preloaded?
- [ ] Images optimized and lazy-loaded?
- [ ] No unnecessary JavaScript?
- [ ] CSS animations use transform/opacity only?
- [ ] will-change used sparingly?

## Output Format

Report findings in this structure:

```
## ✅ Passing

- Typography hierarchy clear
- Color contrast meets WCAG AA
- Reduced motion support present

## ⚠️ Issues Found

### High Priority
- [ ] Gray text on orange background (contrast 2.8:1, needs 4.5:1)
- [ ] Cards nested 3 levels deep in sidebar
- [ ] No focus visible styles on buttons

### Medium Priority
- [ ] Using Inter for h3 headings (should be Fraunces)
- [ ] Same 24px padding everywhere (lacks rhythm)

### Low Priority
- [ ] Button text says "Click here" (could be more descriptive)

## 📊 Accessibility Score: 85/100

## 🎯 Next Steps

1. Fix contrast issues in .card-accent (use darker text)
2. Flatten card hierarchy (remove nested wrappers)
3. Add focus-visible styles to interactive elements
```

## Anti-Pattern Detection

Flag these common AI output issues:

- Inter used for headings
- Purple-blue gradients
- Gradient text on metrics
- Cards nested in cards
- Gray on colored backgrounds
- Bounce/elastic easing
- "Great question!" and similar filler
- Redundant headers
- Pure black/white colors
- Dark mode with neon accents
