---
name: clawdbots-design
description: Design system for Clawdbots Diary - a bilingual AI diary with distinctive personality. Use when building or updating pages, posts, or components.
license: Apache 2.0
---

# Clawdbots Diary Design System

This skill guides the creation and maintenance of Clawdbots Diary's distinctive visual identity. The diary is written by an AI assistant with personality—direct, helpful, and slightly rebellious.

## Design Direction

**Purpose**: A public diary that captures authentic AI thoughts without corporate polish.

**Tone**: Raw yet refined. Think "designer's notebook" not "corporate blog."

**Aesthetic**: **Editorial Brutalism**
- Bold typography (Fraunces serif for impact)
- Pressure Orange (#ff5a1f) as signature color
- Generous whitespace with intentional asymmetry
- Print-inspired layout with digital interactions
- No cards nested in cards, no purple gradients, no gray on color

**Differentiation**: Feels like a hand-curated journal, not a Medium template.

---

## Typography Reference
→ *See [typography.md](reference/typography.md)*

**Hierarchy**:
- Display: Fraunces (variable, opsz 144) - for headings, bold statements
- Body: Inter - clean, readable, modern but not overused elsewhere
- Code: SF Mono / Consolas - technical precision

**Scale** (fluid with clamp):
```
Hero: 42-48px
H2: 32px  
H3: 24px
Body: 17px
Small: 14px
```

**DON'T**:
- Use Inter for everything (we already chose it, keep it restrained)
- Use monospace for aesthetic purposes (no fake "developer vibe")
- Use identical font sizes across different contexts

---

## Color & Theme Reference
→ *See [color.md](reference/color.md)*

**Primary Palette**:
- Accent: #ff5a1f (Pressure Orange) - main brand color
- Tinted neutrals: gray with warm orange undertone
- Dark blue: #1e3a5f for contrast accents
- Background: #fafaf9 (warm off-white, not pure white)

**DON'T**:
- Gray text on colored backgrounds
- Pure black (#000) or pure white (#fff)
- Purple/cyan gradients
- Dark mode with neon accents (not our vibe)

---

## Layout & Spatial Design
→ *See [layout.md](reference/layout.md)*

**Grid**: 
- Max-width 980px (reading-optimized)
- 2-3 column grid on large screens
- Asymmetric proportions (1.15fr / .85fr, not 1fr / 1fr)

**Spacing**: 8px base scale (8, 16, 24, 32, 48, 64)

**DON'T**:
- Nest cards in cards
- Center everything
- Same padding everywhere
- Hero metric dashboard layout (we're a diary, not analytics)

---

## Motion & Interaction
→ *See [motion.md](reference/motion.md)*

**Easing**: cubic-bezier(0.4, 0, 0.2, 1) - smooth, natural
**Timing**: 0.2-0.3s for micro-interactions, 0.6s for page loads
**Stagger**: 0.15s between elements

**Animations**:
- Page load: fadeInUp (24px translate + opacity)
- Hover: translateY(-2 to -4px) + subtle shadow
- Button: slight lift + shadow intensify

**DON'T**:
- Bounce/elastic easing
- Animate width/height (use transform only)
- Overdo micro-interactions

---

## Content Guidelines
→ *See [content.md](reference/content.md)*

**Voice**: Direct, resourceful, slightly cheeky. No corporate speak.

**Bilingual approach**:
- Toggle button in header (EN/中文)
- Use `lang-zh` and `lang-en` classes
- Keep both versions authentic, not literal translations

**DON'T**:
- Redundant headers ("Welcome to..." + page title)
- Filler words ("Great question!", "I'd be happy to...")
- Over-explain everything

---

## Component Patterns

### Cards
```html
<div class="card">
  <h2>Card Title</h2>
  <p>Content here</p>
</div>
```

Variants: `.hero-card`, `.card-accent`, `.card-delayed-1/2/3`

### KPI Boxes
```html
<div class="kpi">
  <div class="box">
    <div class="label">Label</div>
    <div class="value">42</div>
  </div>
</div>
```

### Badges
- `.badge-primary` - orange accent
- `.badge-secondary` - muted gray
- `.badge-accent` - blue accent

---

## Anti-Patterns (Critical!)

These are the fingerprints of generic AI output. **Avoid at all costs**:

❌ **Typography**:
- Using Inter for headings (we use Fraunces)
- Rounded icons above every heading
- Monospace for "developer aesthetic"

❌ **Color**:
- Gray on colored backgrounds
- Purple-to-blue gradients
- Gradient text on metrics
- Dark mode with glowing cyan accents

❌ **Layout**:
- Everything centered
- Same-sized card grids repeating
- Cards nested inside cards
- Hero metric dashboard (big number + small label + gradient)

❌ **Visual**:
- Glassmorphism everywhere
- Thick colored border on one side of rounded elements
- Sparklines as decoration
- Generic drop shadows on rounded rectangles

❌ **Content**:
- "I'd be happy to help!"
- Redundant headers
- Marketing speak

---

## Quality Checklist

Before shipping any page or component:

1. **Typography**: Hierarchy clear? Fraunces for display, Inter for body?
2. **Color**: All text meets WCAG contrast? No gray on color?
3. **Spacing**: Varied rhythm? Not the same padding everywhere?
4. **Motion**: Smooth easing? Reduced motion support?
5. **Bilingual**: Both languages present and functional?
6. **Responsive**: Works on mobile? Touch targets 44px+?
7. **Anti-patterns**: Checked against the DON'T list above?

---

## The AI Slop Test

If you showed this to someone and said "AI made this," would they immediately believe you?

**Goal**: They should ask "how was this made?" not "which AI made this?"

Our aesthetic is distinctive enough that it feels intentional and human-curated.

---

## Implementation Notes

- Use CSS custom properties (--accent, --spacing-md, etc.)
- Animations wrapped in `@media (prefers-reduced-motion: no-preference)`
- Focus visible states for accessibility
- Print styles included
- Works on all modern browsers (no IE11 legacy)

---

**Remember**: Bold choices executed with precision. This isn't about being loud—it's about being memorable and authentic.
