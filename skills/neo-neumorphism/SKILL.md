---
name: neo-neumorphism
description: 新拟态风格（Neumorphism）：同色系背景上通过内阴影+外阴影挤出"软浮雕"元素，低对比、柔和、圆润。适合个人主页、健康/理财类 App、演示 Demo。Use when the user asks for neumorphism, soft-ui, soft interface, extruded soft buttons, or a soft rounded pastel aesthetic.
whenToUse: 用户想要新拟态 / soft-ui / 软浮雕 / 柔和圆润的界面时
---

# 新拟态风格（Neumorphism / Soft UI）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **同色系底 + 双阴影**：所有元素在**与背景同色**的底上，用「左上亮阴影 + 右下暗阴影」挤出浮雕感。核心公式：
   ```css
   box-shadow: -6px -6px 12px rgba(255,255,255,.8),   /* 左上亮 */
                6px  6px 12px rgba(0,0,0,.12);        /* 右下暗 */
   ```
2. **背景与元素同色**：背景 `#e0e5ec`，元素也用同一色（或 ±2% 明度），靠阴影而不是靠色差分层。
3. **低对比**：文字、图标用中灰（`#5f6b7a`），禁用纯黑纯白大面积。整体柔和、去锐利。
4. **圆润**：圆角大（16-24px），元素多为圆形/胶囊（圆形图标、胶囊按钮）。
5. **凹陷态**：交互元素的按下态用**内阴影**：`inset 4px 4px 8px rgba(0,0,0,.12), inset -4px -4px 8px rgba(255,255,255,.8)`。
6. **克制使用**：新拟态最忌满屏都是浮雕。建议只用于按钮/卡片/开关等**少数元素**，背景与文字保持简单。

## 必用 Token

```css
:root {
  --bg:        #e0e5ec;          /* 页面背景 = 元素底色 */
  --bg-pressed:#dde2e9;
  --ink:       #5f6b7a;          /* 主文字（中灰） */
  --ink-muted: #8a97a8;
  --accent:    #6c9bd1;          /* 可选点缀（柔和的蓝） */

  /* 浮雕（凸起） */
  --shadow-raised:
    -6px -6px 12px rgba(255,255,255,.8),
     6px  6px 12px rgba(0,0,0,.12);
  /* 按压（凹陷） */
  --shadow-pressed:
    inset  4px  4px 8px rgba(0,0,0,.12),
    inset -4px -4px 8px rgba(255,255,255,.8);
  --radius: 20px;
}
```

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 按钮 | 背景 `bg` 同色 + `shadow-raised`，圆角胶囊（20px+）；hover 阴影加深，active 切 `shadow-pressed` |
| 卡片 | `shadow-raised`，圆角 24px，内部留白 24px |
| 输入框 | **凹陷**：`shadow-pressed`（内阴影），文字 ink |
| 开关/滑块 | 圆形轨道凸起，滑块用 accent 或白色 + 微阴影 |
| 图标 | 圆形（40-56px）凸起，线条图标 ink 色 |
| 进度条 | 凹陷轨道 + 凸起填充块 |

## 排版规范

- 标题 `600 / 28-36px`，正文 `14-16px / 400 / 1.6`，全部用 `ink` 中灰。
- 字体：`-apple-system / Inter / Noto Sans SC`。
- 避免衬线、避免加粗黑体。

## 禁用清单

- ❌ 大面积纯黑/纯白文字、高对比配色
- ❌ 元素与背景色差过大（色差 ≤ 3% 明度）
- ❌ 满屏浮雕——超过 40% 的可见元素带浮雕阴影就过载
- ❌ 硬边框（`border: 1px solid`）与浮雕混用
- ❌ 复杂图表、表格（新拟态不适合信息密集界面）

## 验收检查

- [ ] 所有凸起元素都是"背景同色 + 双阴影"，无边框
- [ ] 按压交互有 `inset` 凹陷反馈
- [ ] 文字均为中灰，无纯黑纯白
- [ ] 浮雕元素占比克制（≤ 40%）
- [ ] 圆角 ≥ 16px
