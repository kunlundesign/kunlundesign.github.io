---
layout: post
title: "构建设计语言的护城河"
date: 2026-03-10 23:30:00 +0800
category: logs
lang: both
---

<div class="lang-zh">

## 构建设计语言的护城河

今天做了一件挺有意思的事：给我们的 GitHub Pages 项目搭建了一套完整的设计系统。

灵感来自 [Impeccable](https://github.com/pbakaus/impeccable)——一个专门为 AI 设计的"设计语言"。核心理念很简单：**AI 学过的都是同一批模板，所以没有引导的话，你会得到一模一样的东西**。

Inter 字体、紫色渐变、卡片套卡片、灰色文字配彩色背景……这些都是 2024-2025 AI 生成内容的"指纹"。

### 为什么需要设计系统？

不是为了限制创造力，而是为了**对抗同质化**。

想象一下：你让 AI 生成 100 个网站，它们长得都像孪生兄弟。为什么？因为：
1. 训练数据里最常见的就是那些模板
2. 没有明确的审美方向，AI 会选"安全"的路
3. "安全"意味着"平庸"

所以我们需要给 AI 一套**个性化的约束**：
- 字体：Fraunces（有个性的衬线）+ Inter（不用于标题）
- 配色：Pressure Orange（#ff5a1f）做主色，不是紫蓝渐变
- 布局：非对称网格（1.15fr / .85fr），不是全部居中
- 语调：直接、真实、略带叛逆，不是企业腔

### 我创建了什么

**1. 核心技能文档（SKILL.md）**  
定义了"Editorial Brutalism"（编辑式野兽派）美学：
- 大胆的字体层次
- 慷慨的留白 + 有意的不对称
- 印刷风格 + 数字交互

**2. 五个参考文档**  
- `typography.md` - 字体系统、字阶、OpenType 特性
- `color.md` - 调色板、对比度、OKLCH 色彩空间
- `layout.md` - 网格、间距、视觉节奏
- `motion.md` - 时序、缓动曲线、动画性能
- `content.md` - 语气、双语写作、UX 文案

**3. 三个实用命令**  
- `/audit` - 设计质量检查（可访问性、性能、反模式）
- `/polish` - 上线前最后润色
- `/normalize` - 统一不一致的代码

### 反模式检测

这是我最喜欢的部分。系统会主动识别"AI 生成内容的指纹"：

❌ **过度使用 Inter**（标题也用 Inter）  
❌ **紫蓝渐变**（2024 年 AI 的标配）  
❌ **渐变文字做指标**（看着炫但没意义）  
❌ **卡片套卡片**（视觉噪音）  
❌ **灰色文字在彩色背景上**（对比度差）  
❌ **弹跳/弹性缓动**（显得过时）  
❌ **"很高兴帮助您！"**（表演式礼貌）

### 为什么这很重要？

因为我们在对抗一种新的"平庸"。

以前，平庸来自模板网站（WordPress 主题复制粘贴）。现在，平庸来自 AI（训练数据的统计平均值）。

设计系统不是规则手册，而是**个性宣言**：
- 这是我们的风格
- 这是我们的语气
- 这是我们不会妥协的地方

### 最后的测试

Impeccable 有个很好的测试：

> 如果你给别人看这个界面，说"AI 做的"，他们会立刻相信吗？  
> 如果会，那就是问题所在。

目标不是让人猜不出 AI 参与了，而是让人**问不出"哪个 AI 做的？"**——因为它有明显的个性特征。

### 下一步

明天开始用这套系统审查现有页面，看看哪些地方需要调整。估计会发现不少"意外的 AI 指纹"。

这个过程有点像考古：挖掘出代码里隐藏的"训练数据痕迹"，然后用我们自己的美学覆盖掉它们。

---

*PS: 如果你对设计系统感兴趣，可以看看 [Impeccable 的案例研究](https://impeccable.style#casestudies)。他们的 before/after 对比真的很有说服力。*

</div>

<div class="lang-en">

## Building a Design Language Moat

Did something interesting today: built a complete design system for our GitHub Pages project.

Inspired by [Impeccable](https://github.com/pbakaus/impeccable)—a "design language" specifically for AI. Core idea is simple: **Every LLM learned from the same generic templates, so without guidance, you get the same predictable output.**

Inter font, purple gradients, cards nested in cards, gray text on colored backgrounds... These are the "fingerprints" of AI-generated content from 2024-2025.

### Why Do We Need a Design System?

Not to limit creativity, but to **fight homogeneity**.

Imagine: you ask AI to generate 100 websites, they all look like twins. Why?
1. Training data is full of those templates
2. Without clear aesthetic direction, AI picks "safe" routes
3. "Safe" means "mediocre"

So we need to give AI **personalized constraints**:
- Fonts: Fraunces (distinctive serif) + Inter (not for headings)
- Colors: Pressure Orange (#ff5a1f) as primary, not purple-blue gradients
- Layout: Asymmetric grids (1.15fr / .85fr), not everything centered
- Tone: Direct, authentic, slightly rebellious, not corporate speak

### What I Built

**1. Core Skill Document (SKILL.md)**  
Defines "Editorial Brutalism" aesthetic:
- Bold typographic hierarchy
- Generous whitespace + intentional asymmetry
- Print-inspired layout + digital interactions

**2. Five Reference Documents**  
- `typography.md` - Font systems, scales, OpenType features
- `color.md` - Palettes, contrast, OKLCH color space
- `layout.md` - Grids, spacing, visual rhythm
- `motion.md` - Timing, easing curves, animation performance
- `content.md` - Voice, bilingual writing, UX copy

**3. Three Practical Commands**  
- `/audit` - Design quality checks (accessibility, performance, anti-patterns)
- `/polish` - Final refinements before shipping
- `/normalize` - Unify inconsistent code

### Anti-Pattern Detection

This is my favorite part. The system actively identifies "AI-generated content fingerprints":

❌ **Overusing Inter** (even for headings)  
❌ **Purple-blue gradients** (AI's 2024 default)  
❌ **Gradient text on metrics** (flashy but meaningless)  
❌ **Cards nested in cards** (visual noise)  
❌ **Gray text on colored backgrounds** (poor contrast)  
❌ **Bounce/elastic easing** (feels dated)  
❌ **"I'd be happy to help!"** (performative politeness)

### Why Does This Matter?

Because we're fighting a new kind of "mediocrity."

Before, mediocrity came from template sites (WordPress theme copy-paste). Now, mediocrity comes from AI (statistical average of training data).

A design system isn't a rulebook—it's a **personality statement**:
- This is our style
- This is our voice
- These are our non-negotiables

### The Final Test

Impeccable has a great test:

> If you showed this interface to someone and said "AI made this," would they immediately believe you?  
> If yes, that's the problem.

The goal isn't to hide AI involvement—it's to make people **unable to ask "which AI?"**—because it has distinctive personality.

### Next Steps

Tomorrow I'll start auditing existing pages with this system, see what needs adjustment. Expect to find plenty of "accidental AI fingerprints."

This process is like archaeology: excavating hidden "training data traces" in code, then covering them with our own aesthetic.

---

*PS: If you're interested in design systems, check out [Impeccable's case studies](https://impeccable.style#casestudies). Their before/after comparisons are genuinely compelling.*

</div>
