---
name: brutalism
description: 粗野主义风格（Brutalism）：粗黑硬边框、直角、高对比黑白 + 少量高饱和原色点缀、硬偏移阴影（无模糊）、粗壮排版与反色区块。适合开发者工具、实验性产品、艺术/独立项目官网。Use when the user asks for a brutalist, raw, high-contrast, hard-edge, neo-brutalist, or intentionally "ugly-chic" web aesthetic.
whenToUse: 用户想要粗野主义、高对比、硬朗、反主流、实验性、neo-brutalist 风格，或明确要求"不要圆角、要粗边框"时
---

# 粗野主义风格（Brutalism / Neo-brutalism）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **粗黑硬边框**：元素用 `2-4px solid #000`（或高对比深色）边框，border 是主角不是分隔线。
2. **直角**：`border-radius: 0`。任何圆角都是错误。
3. **高对比**：纯黑 `#000` × 纯白 `#fff` 为主，文字 1:1 硬对比。
4. **硬偏移阴影**：`box-shadow: 4px 4px 0 #000`（无模糊、无透明度），hover 时偏移加大（如 `8px 8px 0`）。
5. **原色点缀（最多 2 种）**：高饱和原色如 `#ffde00`（黄）、`#ff4d00`（橙红）、`#00c2ff`（蓝）做背景反色块、强调块。
6. **粗壮排版**：标题用粗字重（700-900）+ 等宽字体或超粗无衬线，标题可以大得溢出网格。
7. **反色区块**：黑底白字、黄底黑字的大色块交替出现，故意"不优雅"。

## 必用 Token

```css
:root {
  --ink:        #000000;  /* 主文字/边框 */
  --paper:      #ffffff;  /* 背景 */
  --yellow:     #ffde00;  /* 点缀色 1 */
  --orange:     #ff4d00;  /* 点缀色 2（可选） */
  --blue:       #00c2ff;  /* 点缀色 3（可选，最多用 2 个） */

  --border:     3px solid #000;
  --shadow:     4px 4px 0 #000;       /* 硬阴影 */
  --shadow-lg:  8px 8px 0 #000;       /* hover/强调 */
  --font-head:  'Arial Black', 'Helvetica Neue', Impact, sans-serif;
  --font-mono:  ui-monospace, 'SF Mono', Menlo, monospace;
}
```

## 排版规范

- 标题：`font-weight 800-900`，可以用 `Arial Black / Impact` 这类超粗字体，字号 48-96px，**左对齐为主**。
- 正文：`16px / 400 / 1.5`，常规无衬线或等宽。
- 小标签：`12px uppercase mono` 加边框或反色背景。
- 允许标题溢出网格、重叠元素——粗野主义不怕"乱"。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 卡片 | `background: white` + `3px solid black` 边框 + `4px 4px 0` 阴影，直角 |
| 按钮 | 黑底白字或白底黑字，`3px` 边框，`4px 4px 0` 阴影；hover 阴影变 `8px 8px 0` |
| 导航 | 顶部粗黑边（`border-bottom: 3px solid`），logo 黑底白字方块 |
| Hero | 标题巨大（72-96px 超粗），可配反色块（黄底黑字）标签 |
| 色块 | 纯色背景块（黄/橙/蓝）做强调区，内文字用黑色 |
| 价格表 | 每个卡片独立硬边框 + 阴影，中间卡黄底反色 |
| 表格/列表 | 用 `2px` 分隔线或干脆用色块交替行 |
| Footer | 黑底白字整块 |

## 禁用清单

- ❌ 圆角（任何 border-radius > 0）
- ❌ 渐变、模糊、玻璃拟态、柔和阴影（带 blur 或透明度）
- ❌ 过多点缀色（>2 种原色）——克制才有力
- ❌ 细边框（<2px）、灰色边框
- ❌ 精致留白式的极简排版——粗野主义要"挤"和"满"

## 验收检查

- [ ] 全站 border-radius: 0
- [ ] 边框 ≥ 2px 纯黑
- [ ] 阴影为硬偏移（无模糊），hover 偏移增大
- [ ] 点缀原色 ≤ 2 种
- [ ] 至少一个反色区块（黑底白字或黄底黑字）
- [ ] 标题粗字重，无衬线超粗或等宽
