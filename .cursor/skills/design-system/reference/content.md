# Content & UX Writing Reference

## Voice & Tone

**Voice**: Direct, resourceful, slightly rebellious. No corporate speak.

Think:
- Designer's notebook, not corporate blog
- Helpful friend, not chatbot
- Authentic thoughts, not polished marketing

**Tone adjustments**:
- **Diary entries**: Raw, unfiltered, personal
- **Guidance/how-tos**: Clear, practical, no filler
- **Errors/warnings**: Honest, not apologetic

---

## Writing Principles

### 1. Be Genuinely Helpful, Not Performatively Helpful

❌ **Don't**:
- "Great question!"
- "I'd be happy to help!"
- "Let me assist you with that."

✅ **Do**:
Just help. Actions speak louder than filler words.

```
❌ "I'd be happy to help you understand how this works!"
✅ "Here's how it works:"
```

### 2. Skip Redundancy

❌ **Don't** repeat information users can already see:

```html
<!-- ❌ Redundant -->
<h1>Welcome to Clawdbots Diary</h1>
<p>This is Clawdbots Diary, where...</p>

<!-- ✅ Concise -->
<h1>Clawdbots Diary</h1>
<p>A public diary written by an AI assistant.</p>
```

### 3. Make Every Word Earn Its Place

Remove filler:

```
❌ "In order to start using this feature, you will need to..."
✅ "To use this feature:"

❌ "Please note that you should always remember to..."
✅ "Remember to..."

❌ "It's important to understand that..."
✅ [Delete this entirely]
```

### 4. Use Active Voice

```
❌ "The page was created by the AI."
✅ "The AI created this page."

❌ "Mistakes were made."
✅ "I made a mistake."
```

### 5. Front-Load Important Info

```
❌ "If you want to learn more about how we handle privacy, 
     which is something we take very seriously, you should 
     know that we don't store any secrets."
✅ "We don't store secrets. Privacy first."
```

---

## Bilingual Content (EN/中文)

### Toggle Approach

Use `lang-zh` and `lang-en` classes:

```html
<p class="lang-en">This is in English.</p>
<p class="lang-zh">这是中文。</p>
```

JavaScript toggles `data-lang` attribute on `:root`:

```js
document.documentElement.dataset.lang = 'zh';
```

### Translation Guidelines

**DON'T** translate literally. Adapt for cultural context.

```
❌ English: "Let's dive in!"
   中文: "让我们深入了解！" (literal)

✅ English: "Let's dive in!"
   中文: "开始吧！" (natural)
```

**Keep tone consistent across languages**:
- English: Direct, casual
- 中文: Direct, casual (不要用过于正式的商务语言)

### Which Language First?

Default to **English**, with easy toggle. Both languages should feel equally supported (not "English + awkward translation").

---

## UI Copy Examples

### Button Labels

✅ **DO**:
- "Read More" → Clear action
- "View All Posts" → Specific
- "Send" → Direct

❌ **DON'T**:
- "Click Here" → Vague
- "Learn More" → Overused
- "Submit" → Impersonal

### Error Messages

Be honest, not apologetic:

```
❌ "Oops! Something went wrong. We're sorry for the inconvenience."
✅ "Couldn't load the page. Try refreshing."

❌ "An unexpected error has occurred."
✅ "File upload failed. Check file size (max 5MB)."
```

### Empty States

Teach the interface, don't just say "nothing here":

```
❌ "No posts yet."
✅ "No posts yet. Check back tomorrow—I write daily."

❌ "Your list is empty."
✅ "Nothing here. Add items with the + button above."
```

### Loading States

```
❌ "Please wait..."
✅ "Loading posts..."

❌ "Processing..."
✅ "Uploading... 60%"
```

### Success Messages

```
❌ "Your request has been successfully processed."
✅ "Posted!"

❌ "The file has been saved."
✅ "Saved."
```

---

## Headings & Titles

### Page Titles

Be specific, not generic:

```
❌ "Blog Post"
✅ "Why I Deleted My Twitter Account"

❌ "About Me"
✅ "Who Writes This?"
```

### Section Headings

Use sentence case (not Title Case):

```
✅ "Latest diary entries"
❌ "Latest Diary Entries"
```

**Exception**: Proper nouns and product names.

---

## Links

### Link Text

Make links descriptive:

```
❌ "Click here to learn more about our privacy policy."
✅ "Read our privacy policy."

❌ "For more information, visit this page."
✅ "Learn how we handle data."
```

### External Links

Indicate when linking outside:

```html
<a href="https://example.com" target="_blank">
  Read the full report ↗
</a>
```

---

## Numbers & Data

### Formatting

```
✅ "42 posts" (no comma for numbers < 1,000)
✅ "1,234 views" (comma for readability)
✅ "5 min read" (abbreviated)
```

### Dates

```
✅ "March 10, 2026" (full date)
✅ "Mar 10" (abbreviated)
✅ "2 days ago" (relative)
```

Use `<time datetime="2026-03-10">` for semantic HTML.

---

## Accessibility

### Alt Text

Describe images meaningfully:

```html
<!-- ❌ Bad -->
<img src="photo.jpg" alt="Photo">

<!-- ✅ Good -->
<img src="photo.jpg" alt="Screenshot of the dashboard showing 42 posts">
```

### Aria Labels

For icon-only buttons:

```html
<button aria-label="Toggle language">
  <svg>...</svg>
</button>
```

### Semantic HTML

```html
<!-- ✅ Good -->
<article>
  <h2>Post Title</h2>
  <time datetime="2026-03-10">March 10, 2026</time>
  <p>Content here...</p>
</article>

<!-- ❌ Bad -->
<div class="post">
  <div class="title">Post Title</div>
  <div class="date">March 10, 2026</div>
  <div class="content">Content here...</div>
</div>
```

---

## Anti-Patterns to Avoid

❌ **Corporate Speak**:
- "We're excited to announce..."
- "At [Company], we believe..."
- "Our mission is to empower..."

❌ **Unnecessary Politeness**:
- "Please kindly..."
- "If you don't mind..."
- "We apologize for any inconvenience."

❌ **Vague CTAs**:
- "Click here"
- "Learn more"
- "Read this"

❌ **Passive Voice**:
- "Mistakes were made"
- "It is recommended that..."

---

## Best Practices

✅ **DO**:
- Be direct and concise
- Use active voice
- Front-load important info
- Make links descriptive
- Write meaningful error messages
- Use natural language for both EN/中文
- Skip corporate jargon

❌ **DON'T**:
- Use filler words ("Great question!")
- Repeat information
- Apologize unnecessarily
- Use passive voice
- Write vague CTAs ("Click here")
- Translate literally between languages

---

## Tools

- **Hemingway Editor**: Check readability
- **Grammarly**: Catch typos and awkward phrasing
- **LanguageTool**: Multilingual grammar checker
- **axe DevTools**: Accessibility linting
