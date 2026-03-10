# Motion & Interaction Reference

## Timing & Easing

### Easing Curves

Use **exponential easing** for natural motion:

```css
/* Primary easing (smooth deceleration) */
--ease-out: cubic-bezier(0.4, 0, 0.2, 1);

/* Quick interactions */
--ease-out-quick: cubic-bezier(0.4, 0, 1, 1);

/* Emphasized motion */
--ease-out-emphasized: cubic-bezier(0.05, 0.7, 0.1, 1);
```

**DON'T** use bounce or elastic easing—they feel dated and tacky.

❌ **Avoid**:
```css
/* ❌ Dated */
transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55); /* Bounce */

/* ❌ Overused */
transition: all 0.3s ease-in-out; /* Too linear */
```

### Duration

```css
:root {
  --duration-instant: 100ms;   /* State changes (hover, focus) */
  --duration-quick: 200ms;     /* Micro-interactions */
  --duration-normal: 300ms;    /* Standard transitions */
  --duration-slow: 600ms;      /* Page loads, reveals */
}
```

**Rule**: Smaller elements = faster animations. Larger elements = slower.

---

## Animation Patterns

### Page Load (Entrance)

Staggered fade-in with upward motion:

```css
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(24px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.card {
  animation: fadeInUp 0.6s cubic-bezier(0.4, 0, 0.2, 1) both;
}

/* Stagger delays */
.card-delayed-1 {
  animation-delay: 0.15s;
}

.card-delayed-2 {
  animation-delay: 0.3s;
}

.card-delayed-3 {
  animation-delay: 0.45s;
}
```

**Why upward motion?** Feels like content is "rising" into view (more natural than sliding from sides).

### Hover Effects

Lift + shadow intensify:

```css
.card {
  transition: all 0.3s var(--ease-out);
}

.card:hover {
  transform: translateY(-4px) scale(1.01);
  box-shadow: 0 12px 32px rgba(0,0,0,.1);
}
```

**DON'T** animate layout properties (width, height, padding, margin). Use `transform` and `opacity` only for performance.

### Button Interactions

```css
.btn {
  transition: all 0.2s var(--ease-out);
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(255,90,31,.3);
  background: var(--accent);
  color: white;
}

.btn:active {
  transform: translateY(0);
}
```

### Link Hover (Animated Underline)

```css
.post-content a {
  background-image: linear-gradient(
    transparent calc(100% - 2px),
    var(--accent) 2px
  );
  background-size: 0 100%;
  background-repeat: no-repeat;
  transition: background-size 0.3s ease;
}

.post-content a:hover {
  background-size: 100% 100%;
}
```

---

## Scroll-Based Animations

### Smooth Scrolling

```css
html {
  scroll-behavior: smooth;
}
```

Disable for users who prefer reduced motion:

```css
@media (prefers-reduced-motion: reduce) {
  html {
    scroll-behavior: auto;
  }
}
```

### Parallax Effects

Use sparingly and subtly:

```css
.hero-card::after {
  /* Decorative element */
  transform: translateY(calc(var(--scroll) * 0.5));
}
```

**DON'T** overdo parallax—it can cause motion sickness.

---

## Loading States

### Skeleton Screens

Better than spinners for content loading:

```css
.skeleton {
  background: linear-gradient(
    90deg,
    var(--gray-200) 0%,
    var(--gray-100) 50%,
    var(--gray-200) 100%
  );
  background-size: 200% 100%;
  animation: shimmer 1.5s infinite;
}

@keyframes shimmer {
  0% { background-position: 200% 0; }
  100% { background-position: -200% 0; }
}
```

### Progress Indicators

```css
.progress-bar {
  height: 4px;
  background: var(--accent);
  transform-origin: left;
  animation: progress 1s cubic-bezier(0.4, 0, 0.2, 1);
}

@keyframes progress {
  from { transform: scaleX(0); }
  to { transform: scaleX(1); }
}
```

---

## Reduced Motion Support

**Critical for accessibility!**

Disable animations for users who prefer reduced motion:

```css
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
  
  html {
    scroll-behavior: auto;
  }
}
```

---

## Performance Optimization

### Will-Change

Use for elements that will animate frequently:

```css
.card:hover {
  will-change: transform, box-shadow;
}
```

**DON'T** apply to everything—it's expensive:

```css
/* ❌ Bad */
* {
  will-change: transform;
}
```

### Hardware Acceleration

Trigger GPU acceleration for smooth animations:

```css
.animated {
  transform: translateZ(0); /* Force GPU layer */
  backface-visibility: hidden;
}
```

### Debounce Scroll Events

For scroll-based animations, throttle events:

```js
let ticking = false;

window.addEventListener('scroll', () => {
  if (!ticking) {
    requestAnimationFrame(() => {
      // Update animations here
      ticking = false;
    });
    ticking = true;
  }
});
```

---

## Anti-Patterns to Avoid

❌ **Bounce/Elastic Easing**:
```css
/* ❌ Feels dated */
transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
```

❌ **Animating Layout Properties**:
```css
/* ❌ Causes reflow (slow) */
.card:hover {
  width: 110%;
  padding: 30px;
}

/* ✅ Use transform instead */
.card:hover {
  transform: scale(1.1);
}
```

❌ **Too Many Animations**:
Don't animate everything. Focus on high-impact moments.

❌ **No Reduced Motion Support**:
Always respect user preferences.

---

## Focus on High-Impact Moments

One well-orchestrated page load with staggered reveals creates more delight than scattered micro-interactions everywhere.

**Good animation strategy**:
1. Page entrance (staggered fade-in)
2. Hover states (lift + shadow)
3. Button interactions (lift on hover, press on active)
4. That's it.

**DON'T** add animations just because you can.

---

## Best Practices

✅ **DO**:
- Use exponential easing (ease-out)
- Keep durations short (200-300ms for most interactions)
- Stagger entrance animations
- Use transform and opacity for performance
- Support prefers-reduced-motion
- Animate state changes, not decorations

❌ **DON'T**:
- Use bounce or elastic easing
- Animate width, height, padding, margin
- Overdo micro-interactions
- Ignore accessibility (reduced motion)
- Apply will-change to everything
- Animate decorative elements constantly

---

## Height Animations

Instead of animating `height` (causes reflow), use `grid-template-rows`:

```css
.expandable {
  display: grid;
  grid-template-rows: 0fr;
  transition: grid-template-rows 0.3s var(--ease-out);
}

.expandable.open {
  grid-template-rows: 1fr;
}

.expandable > div {
  overflow: hidden;
}
```

---

## Tools

- **DevTools Performance**: Chrome/Firefox for animation profiling
- **Cubic-bezier.com**: Easing curve visualizer
- **GSAP**: For complex animations (overkill for most cases)
- **Lottie**: For micro-animations from After Effects
