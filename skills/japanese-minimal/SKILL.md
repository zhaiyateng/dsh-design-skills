---
name: japanese-minimal
description: 日式极简排版风格（Japanese Minimal）：宋体/明朝体衬线、大量留白（「間」ma）、黑白为主 + 少量朱红点缀、细线分隔、克制静谧。适合文化/美学类产品、博客、艺术展、和风品牌、禅意落地页。Use when the user asks for a Japanese minimal, wabi-sabi, zen, editorial-serif, or traditional-Japanese-aesthetic website.
whenToUse: 用户想要日式极简、侘寂、禅意、和风、古籍排版感、衬线编辑风时
---

# 日式极简排版风格（Japanese Minimal / 和式極簡）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **留白即「間」（ma）**：页面以"空"为主，元素之间留出大量呼吸空间（区块间距 ≥ 96px，行距 ≥ 1.8）。宁可空，不可满。
2. **衬线字体是灵魂**：标题正文用宋体/明朝体（`Hiragino Mincho ProN`、`Yu Mincho`、`Noto Serif SC/JP`、`Songti SC`），不用黑体无衬线。字重 400-500，避免粗体。
3. **黑白为主 + 一点朱红**：背景 `#fafaf7`（米白）或纯白，文字近黑 `#1a1a18`；点缀色只用日式朱红 `#c3272b`（或传统丹色），用于印章/重点/链接——**一处即可，绝不滥用**。
4. **细线分隔**：分隔线用极细线（1px、`#d8d5cd` 暖灰），或干脆只用留白分隔。
5. **克制与秩序**：对称或网格对齐、竖向节奏稳定、无装饰性动画、无渐变、无阴影（或极淡）。
6. **竖排是可选的高级手法**：标题或落款可用 `writing-mode: vertical-rl` 竖排，从右到左，营造和风气质。

## 必用 Token

```css
:root {
  --paper:       #fafaf7;   /* 米白背景 */
  --ink:         #1a1a18;   /* 近黑文字 */
  --ink-muted:   #6b675e;   /* 次级文字（暖灰） */
  --ink-subtle:  #a09a8d;   /* 弱化 */
  --line:        #d8d5cd;   /* 细分隔线 */
  --vermilion:   #c3272b;   /* 朱红：唯一点缀色 */

  --font-serif:  'Hiragino Mincho ProN', 'Yu Mincho', 'Noto Serif SC', 'Songti SC', 'SimSun', Georgia, serif;
  --font-sans:   'Hiragino Kaku Gothic ProN', 'Yu Gothic', 'PingFang SC', 'Microsoft YaHei', sans-serif;

  --space: 96px;  /* 区块间距基准 */
}
```

## 排版规范

- **标题**：衬线 400-500 字重，字号 40-64px，行高 1.4-1.6，字距 `0.05em`（日文标题可加字距）。
- **正文**：衬线 15-16px / 400 / 1.8-2.0，字距 `0.02em`。
- **小标签**：黑体（sans）11-12px，字距 `0.2em`，大写或日文假名。
- **数字/日期**：可用衬线或等宽，保持克制。
- 竖排标题示例：`writing-mode: vertical-rl; height: 100%;` 用于 hero 侧边或落款。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 导航 | 顶部 1px 细线分隔，字距宽松的小号黑体链接；logo 用衬线或汉字 |
| Hero | 大留白（上下 ≥ 120px），衬线大标题居中或左侧，下方一行小字说明 |
| 印章 | 朱红方形印章（`background: var(--vermilion); color: #fff`，2-4 个汉字，可旋转 -2°）做点睛 |
| 特性/文章卡片 | 无边框无阴影，仅靠留白分组；或 1px 细线 + 大留白 |
| 图片 | 大图 + 四周留白，灰度或自然色，底部一行衬线说明 |
| 分隔 | 1px `--line` 细线，或纯留白 |
| 页脚 | 顶部 1px 细线，小号字，可加竖排落款 |

## 禁用清单

- ❌ 黑体（sans-serif）做大标题——必须是衬线
- ❌ 粗体（>500）、斜体
- ❌ 渐变、阴影、玻璃拟态、粗边框、圆角卡片风
- ❌ 超过一种点缀色（朱红只能有一个，且只出现 1-2 处）
- ❌ 元素堆满页面——日式排版最忌"满"
- ❌ 动画、动效、hover 大变化（保持静谧）

## 验收检查

- [ ] 标题为衬线字体、字重 ≤ 500
- [ ] 区块间距 ≥ 96px，正文行高 ≥ 1.8
- [ ] 背景为米白 `#fafaf7` 或纯白，无纯黑背景
- [ ] 点缀色仅朱红且 ≤ 2 处
- [ ] 分隔用 1px 细线或纯留白，无粗边框
- [ ] 无渐变、无阴影、无玻璃拟态
