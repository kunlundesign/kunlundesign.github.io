# Refinement Plan: kunlundesign.github.io with MAI Design System

## Current State Analysis

### ✅ Good
- Clean, simple structure
- Responsive layout
- Good typography hierarchy
- Bilingual support

### ❌ Issues (MAI violations)
1. **Hard-coded colors** - Using hex values instead of semantic tokens
2. **No design token system** - Missing MAI token CSS
3. **Font mixing** - Using serif for headers but no proper MAI font setup
4. **Inconsistent spacing** - Not using 4px base unit
5. **No squircle corners** - Missing corner-shape support
6. **No elevation system** - Simple box-shadow instead of key+ambient
7. **Custom color system** - oklch() instead of MAI tokens

## Refactoring Strategy

### 1. Copy MAI Design Tokens
```bash
cp design-tokens/default.light.css → assets/tokens/
cp design-tokens/default.dark.css → assets/tokens/
cp design-tokens/static.css → assets/tokens/
```

### 2. Font Setup
- Choose **Ginto Copilot** (personality-driven, warm)
- Copy font files
- Set up @font-face declarations

### 3. Rebuild CSS with MAI tokens
- Replace all hard-coded colors with semantic tokens
- Use MAI spacing ramp (4px base)
- Apply squircle corners
- Implement proper elevation
- Follow MAI card patterns

### 4. Keep Features
- Bilingual toggle ✅
- Three-column grid ✅
- Responsive design ✅
- Accessibility ✅

## Next Steps

1. Copy design token files
2. Rebuild `lang.css` with MAI tokens
3. Test dark mode
4. Commit changes

Ready to proceed?
