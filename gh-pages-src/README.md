# GitHub Pages 画廊源文件

这个目录是 [zhaiyateng.github.io/dsh-design-skills](https://zhaiyateng.github.io/dsh-design-skills/)
在线预览画廊的**构建源**。

## 结构

```
gh-pages-src/
└── index.html      # 画廊首页（10 风格截图网格，点击进入对应 demo）
```

首页引用的 demo（`examples/*-landing.html`）和截图（`assets/*-landing.png`）
在构建时自动复制进来。

## 重新部署

加了新风格后，重新生成画廊并发布：

```bash
bash scripts/deploy-pages.sh
```

脚本会自动：
1. 组装 `index.html` + 全部 demo + 截图到临时目录
2. 写入 `gh-pages` 分支并推送
3. GitHub 自动重新构建 → 预览地址即时更新

## 手动修改画廊

- 改首页样式/文案：编辑 `gh-pages-src/index.html`
- 新增风格：在 `index.html` 的 `styles` 数组里加一项（name/label/desc/file）
  并在仓库里补齐 `skills/<name>/SKILL.md` + `examples/<name>-landing.html` + `assets/<name>-landing.png`
