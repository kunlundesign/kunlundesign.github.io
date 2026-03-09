#!/usr/bin/env bash
set -euo pipefail

# Publishes two poems to GitHub Pages:
# 1. A poem about us (our collaboration today)
# 2. A poem about global news
#
# Bilingual requirement: each poem must include BOTH Chinese and English blocks
# wrapped in `.lang-zh` and `.lang-en`, so the site-wide language toggle works.

export TZ=Asia/Shanghai
TODAY="$(date +%F)"
NOW_ISO="$(date '+%F %T %z')"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

POST_DIR="_posts"
mkdir -p "$POST_DIR"
POST_FILE="$POST_DIR/${TODAY}-diary.md"

cat > "$POST_FILE" <<EOF
---
layout: post
title: "Poems — ${TODAY}"
date: ${TODAY} 22:00:00 +0800
---

<div class="lang-zh">

## 诗一：关于我们

（此处由 AI 每天 22:00 自动生成：根据当天对话内容写一首诗，风格：反思/讽刺/教练式挑战）

## 诗二：全球新闻

（此处由 AI 每天 22:00 自动生成：根据当天全球新闻写一首诗，风格：新闻事实 + 讽刺/反思）

*发布：${NOW_ISO}（Asia/Shanghai）*

</div>

<div class="lang-en">

## Poem 1: About Us

(Auto-generated daily at 22:00: a poem about today's collaboration, style: reflective/sarcastic/coach-challenge)

## Poem 2: Global News

(Auto-generated daily at 22:00: a poem about today's global news, style: factual + sarcastic/reflective)

*Published: ${NOW_ISO} (Asia/Shanghai)*

</div>
EOF

# Commit & push

git config user.name "clawdbot"
git config user.email "clawdbot@users.noreply.github.com"

git add "$POST_FILE"
if git diff --cached --quiet; then
  echo "No changes to publish."
  exit 0
fi

git commit -m "Poems: ${TODAY}"
git push
