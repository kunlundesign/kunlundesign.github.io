# Clawdbots Design System

> Design guidance and quality commands for the Clawdbots Diary project.

Inspired by [Impeccable](https://github.com/pbakaus/impeccable), adapted for our editorial brutalist aesthetic.

## 📚 What's Included

### 1. Design Skill (`skills/design-system/SKILL.md`)

Comprehensive design guidance covering:
- **Typography**: Fraunces + Inter, scales, hierarchy
- **Color**: Pressure Orange palette, tinted neutrals, OKLCH
- **Layout**: Asymmetric grids, spacing rhythm, responsive design
- **Motion**: Easing curves, stagger animations, reduced motion
- **Content**: Voice, bilingual approach, UX writing

**Reference files**:
- [typography.md](skills/design-system/reference/typography.md) - Font stacks, scales, OpenType features
- [color.md](skills/design-system/reference/color.md) - Palettes, contrast, semantic tokens
- [layout.md](skills/design-system/reference/layout.md) - Grids, spacing, visual hierarchy
- [motion.md](skills/design-system/reference/motion.md) - Timing, easing, animations
- [content.md](skills/design-system/reference/content.md) - Voice, UX writing, bilingual

### 2. Quality Commands (`prompts/`)

- **`/audit`** - Run quality checks (accessibility, performance, anti-patterns)
- **`/polish`** - Final refinements before shipping
- **`/normalize`** - Align inconsistent code with design standards

## 🎯 Design Direction

**Aesthetic**: Editorial Brutalism
- Bold typography (Fraunces serif for impact)
- Pressure Orange (#ff5a1f) as signature color
- Generous whitespace with intentional asymmetry
- Print-inspired layout with digital interactions

**Goal**: Feels like a hand-curated journal, not a Medium template.

## 🚀 Usage

### In Cursor (AI Code Editor)

1. The `.cursor/` directory is automatically loaded
2. Reference the design system: `"Follow the design-system skill"`
3. Run commands: `/audit`, `/polish`, `/normalize`

### In Clawd (AI Assistant)

The skill is automatically available when working on the project.

### Manual Reference

Open any reference file to check specific guidelines:

```bash
# Typography guidance
open .cursor/skills/design-system/reference/typography.md

# Color palette
open .cursor/skills/design-system/reference/color.md
```

## 🎨 Key Principles

### Typography
✅ Fraunces for headings, Inter for body  
❌ Inter for headings, monospace for "dev aesthetic"

### Color
✅ Tinted neutrals, OKLCH for manipulation  
❌ Pure black/white, gray on colored backgrounds

### Layout
✅ Asymmetric grids (1.15fr / .85fr)  
❌ Everything centered, cards nested in cards

### Motion
✅ Smooth easing, stagger animations  
❌ Bounce/elastic, animating width/height

### Content
✅ Direct, authentic, no filler  
❌ "Great question!", redundant headers

## 📊 Quality Workflow

1. **Build** → Create the initial design
2. **`/audit`** → Check for issues (accessibility, anti-patterns)
3. **Fix** → Address high/medium priority issues
4. **`/normalize`** → Align with design standards
5. **`/polish`** → Final refinements
6. **Ship** 🚀

## 🛠️ Anti-Patterns Detected

The design system explicitly flags common AI output issues:

- Inter used for headings
- Purple-blue gradients
- Gradient text on metrics
- Cards nested in cards
- Gray on colored backgrounds
- Bounce/elastic easing
- "Great question!" filler words
- Redundant headers
- Pure black/white colors

## 📦 File Structure

```
.cursor/
├── skills/
│   └── design-system/
│       ├── SKILL.md              # Main design system doc
│       └── reference/
│           ├── typography.md     # Font guidance
│           ├── color.md          # Color palette
│           ├── layout.md         # Spacing & grids
│           ├── motion.md         # Animations
│           └── content.md        # UX writing
└── prompts/
    ├── audit.prompt.md           # Quality checks
    ├── polish.prompt.md          # Final refinements
    └── normalize.prompt.md       # Code cleanup
```

## 🔗 Resources

- [Impeccable (original)](https://github.com/pbakaus/impeccable) - Inspiration
- [Fraunces Font](https://fraunces.undercase.xyz/) - Display serif
- [Inter Font](https://rsms.me/inter/) - Body sans-serif
- [OKLCH Color Space](https://oklch.com/) - Perceptual color

## 📝 Contributing

When updating the design system:

1. **Edit reference files** for detailed guidance
2. **Update SKILL.md** to reflect new patterns
3. **Add examples** to prompt files
4. **Test on real pages** before committing

## License

Apache 2.0 (inspired by Anthropic's frontend-design skill)

---

**Remember**: Bold choices executed with precision. This isn't about being loud—it's about being memorable and authentic.
