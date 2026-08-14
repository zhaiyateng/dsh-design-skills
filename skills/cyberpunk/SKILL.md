---
name: cyberpunk
description: 赛博朋克风格（Cyberpunk）：暗黑底 + 霓虹青/品红/黄等高饱和霓虹描边、发光效果（glow）、故障/扫描线装饰、未来感黑体。适合科技产品、AI 工具、游戏、极客向落地页。Use when the user asks for cyberpunk, neon, synthwave-dark, futuristic glow, or a neon-edged dark tech aesthetic.
whenToUse: 用户想要赛博朋克、霓虹、未来感、发光描边、暗黑科技风时
---

# 赛博朋克风格（Cyberpunk / Neon）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **暗黑底 + 霓虹描边**：背景深色（近黑蓝 `#0a0a12` / `#0d0d1a`），元素用霓虹色（青 `#00f0ff`、品红 `#ff00e5`、黄 `#ffe600`）做边框或文字，形成"霓虹灯管"效果。
2. **发光是核心手法**：文字/边框/按钮用 `text-shadow` / `box-shadow` 多层叠加出 glow：
   ```css
   text-shadow: 0 0 8px rgba(0, 240, 255, 0.8), 0 0 24px rgba(0, 240, 255, 0.4);
   box-shadow: 0 0 8px rgba(255, 0, 229, 0.6), inset 0 0 8px rgba(255, 0, 229, 0.3);
   ```
3. **霓虹配色纪律**：主霓虹色 1 个（青或品红），辅助 1 个，点缀黄；文字主体白/浅灰。
4. **故障/科技装饰**：可选扫描线（repeating-linear-gradient 横线）、故障文字（clip-path 错位）、网格线背景、角落 HUD 角标。
5. **字体**：标题用粗黑体/未来感无衬线（`Arial Black`、`Orbitron` 类），正文常规无衬线；等宽字体做科技标签。
6. **边缘发光角标**：卡片/面板用 1px 霓虹边框 + 角落小角标（HUD 感）。

## 必用 Token

```css
:root {
  --bg:        #0a0a12;
  --bg-2:      #12121f;
  --text:      #e8e8f0;
  --text-dim:  #8a8aa0;

  --neon-cyan:  #00f0ff;
  --neon-magenta: #ff00e5;
  --neon-yellow:  #ffe600;

  --border-neon: 1px solid rgba(0, 240, 255, 0.6);
  --glow-cyan: 0 0 8px rgba(0, 240, 255, 0.8), 0 0 24px rgba(0, 240, 255, 0.4);
  --glow-magenta: 0 0 8px rgba(255, 0, 229, 0.6), 0 0 24px rgba(255, 0, 229, 0.3);

  --font-tech: 'Arial Black', 'Helvetica Neue', Impact, sans-serif;
  --font-mono: ui-monospace, 'SF Mono', Menlo, monospace;
}
```

## 排版规范

- 标题：粗黑体（`font-weight 900`）或未来感字体，白/青/品红，带 glow。
- 科技标签：等宽字体，`10-12px uppercase`，青或黄，字距 `0.2em`。
- 正文：`14-15px`，`text` 或 `text-dim`。
- 数字/指标：等宽 + 青 glow。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 背景 | 深色 + 可选极淡网格线（`linear-gradient` 1px 线）或扫描线叠加层 |
| 导航 | 底部 1px 霓虹边（青色），logo 文字带 glow |
| 按钮（主） | 霓虹色背景（青或品红）+ 黑字 + 外层 glow；hover glow 增强 |
| 按钮（次） | 透明底 + 1px 霓虹边框 + 霓虹文字 + 内 glow |
| 卡片 | `bg-2` 底 + 1px 霓虹边框 + 角落 HUD 角标（`:before`/`:after` 小线段） |
| 输入框 | 深底 + 霓虹边框，focus 时 glow 增强 |
| 终端面板 | 黑底 + 青边框，等宽绿/青文字，行首 `>` 提示符 |
| 徽章 | 霓虹边框胶囊 + 霓虹文字 |
| 指标 | 大号等宽数字 + 青 glow + 等宽标签 |

## 禁用清单

- ❌ 柔和/低对比配色（赛博朋克要锐利）
- ❌ 圆角过大（卡片 ≤ 8px，硬朗感；按钮可胶囊）
- ❌ 超过 2 个霓虹色并存（青+品红即可，黄只做点缀）
- ❌ 纯白背景、浅色页面
- ❌ 玻璃拟态、极简白那种大面积留白
- ❌ 细字体（标题必须粗）

## 验收检查

- [ ] 背景为深色（亮度 < 30）
- [ ] 霓虹色 ≤ 3 个，主色 1 个
- [ ] 标题/按钮带 glow（text-shadow / box-shadow）
- [ ] 卡片有 1px 霓虹边框
- [ ] 正文可读（白色/浅灰 + 暗底）
- [ ] 至少一处科技装饰（扫描线/网格/HUD 角标）
