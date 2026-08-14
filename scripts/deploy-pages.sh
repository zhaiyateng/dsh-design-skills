#!/usr/bin/env bash
# 重新构建并部署 GitHub Pages 画廊（gh-pages 分支）
# 用法：bash scripts/deploy-pages.sh
set -euo pipefail
cd "$(dirname "$0")/.."

BUILD=/tmp/gh-pages-build-$$
SRC=gh-pages-src

echo "▶ 组装构建目录..."
mkdir -p "$BUILD"
cp "$SRC/index.html" "$BUILD/"
cp examples/*-landing.html "$BUILD/"
cp assets/*-landing.png "$BUILD/"
echo "  → $(ls "$BUILD" | wc -l | tr -d ' ') 个文件"

echo "▶ 写入 gh-pages 分支..."
git worktree add /tmp/gh-pages-work-$$ gh-pages 2>/dev/null || git worktree add /tmp/gh-pages-work-$$ -b gh-pages
rm -rf /tmp/gh-pages-work-$$/*
cp -r "$BUILD"/* /tmp/gh-pages-work-$$/

cd /tmp/gh-pages-work-$$
git add -A
git commit -m "deploy: update style gallery ($(date +%Y-%m-%d))" >/dev/null
git push origin gh-pages

cd - >/dev/null
git worktree remove /tmp/gh-pages-work-$$ --force
rm -rf "$BUILD"
echo "✅ 部署完成 → https://zhaiyateng.github.io/dsh-design-skills/"
