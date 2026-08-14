---
name: glassmorphism
description: 毛玻璃风格（Glassmorphism）：彩色渐变背景上叠加半透明磨砂玻璃卡片（backdrop-blur + 白色半透明 + 细亮边框 + 柔和阴影），通透、现代、有层次。适合 AI 产品、SaaS 官网、Dashboard、演示 Demo。Use when the user asks for glassmorphism, glass, frosted-glass, translucent, blurred-glass cards, or a colorful modern gradient aesthetic.
whenToUse: 用户想要毛玻璃、磨砂玻璃、半透明渐变卡片、通透现代感，或 AI 产品/SaaS 官网时
---

# 毛玻璃风格（Glassmorphism）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **渐变背景是基础**：页面必须有生动的彩色渐变底（如深蓝→紫→粉、或青→蓝→紫），玻璃效果才成立。渐变要大而柔，避免生硬色块。
2. **玻璃卡片 = 半透明 + 模糊**：卡片核心是
   ```css
   background: rgba(255, 255, 255, 0.12);
   backdrop-filter: blur(20px);
   -webkit-backdrop-filter: blur(20px);
   border: 1px solid rgba(255, 255, 255, 0.25);
   ```
3. **细亮边框**：玻璃边缘用 `rgba(255,255,255,0.2~0.3)` 的 1px 亮边，模拟玻璃折射高光。
4. **柔和阴影**：`0 8px 32px rgba(0, 0, 0, 0.35)` 这类大半径柔阴影，让卡片"浮"在背景上。
5. **白色文字为主**：渐变背景通常深色，文字用白色及半透明白（`rgba(255,255,255,.7)`）。
6. **内部元素透明叠加**：玻璃卡内部再放半透明白色小元素（按钮、标签），形成层次。

## 必用 Token

```css
:root {
  /* 渐变背景 */
  --gradient-bg: linear-gradient(135deg, #0f0c29, #302b63 50%, #24243e);

  /* 玻璃 */
  --glass-bg:        rgba(255, 255, 255, 0.12);
  --glass-border:    1px solid rgba(255, 255, 255, 0.25);
  --glass-blur:      blur(20px);
  --glass-shadow:    0 8px 32px rgba(0, 0, 0, 0.35);

  /* 文字 */
  --text:            #ffffff;
  --text-muted:      rgba(255, 255, 255, 0.72);
  --text-subtle:     rgba(255, 255, 255, 0.5);

  --radius: 20px;
  --font-sans: -apple-system, BlinkMacSystemFont, 'SF Pro Text', 'Segoe UI', Roboto, sans-serif;
  --font-mono: ui-monospace, 'SF Mono', Menlo, Consolas, monospace;
}
```

## 排版规范

- 标题：`font-weight 600-700`，白色，可带很淡的辉光（`text-shadow: 0 0 40px rgba(255,255,255,.15)`）增强玻璃感。
- 正文：`15-16px / 400 / 1.6`，半透明白。
- 小标签：`12px uppercase` 半透明白，可放玻璃胶囊里。
- 避免纯黑文字——背景深色渐变下黑色文字不可读。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 背景 | 固定渐变（`background-attachment: fixed` 或 body 上），可叠加漂浮的半透明光斑（圆/椭圆，低透明度） |
| 玻璃卡片 | `--glass-bg` + `--glass-border` + `blur(20px)` + 柔和阴影，圆角 20px |
| 按钮 | 玻璃胶囊：半透明白底 + blur + 亮边框；hover 时背景不透明度提升到 0.2 |
| 导航 | 顶部横条用玻璃（blur + 半透明白），细亮底边 |
| Hero | 大标题 + 玻璃卡片承载产品 UI 面板 |
| 输入框 | 玻璃凹陷感：半透明白底 + 内亮边 |
| 徽章/标签 | 玻璃胶囊，白字 |
| 特性卡 | 玻璃卡片网格，hover 时亮边和背景不透明度微升 |

## 禁用清单

- ❌ 纯色平铺背景（没有渐变就没有玻璃可言）
- ❌ 硬黑边框、粗野主义元素
- ❌ 深色实心卡片（不透明背景）——必须是半透明
- ❌ 小范围 blur（<10px 会让玻璃感消失）
- ❌ 玻璃元素铺满全屏（40-60% 面积上限，其余留给渐变呼吸感）

## 验收检查

- [ ] 页面有渐变背景（非纯色）
- [ ] 卡片使用 backdrop-filter: blur(≥15px) + 半透明白
- [ ] 卡片有 1px 亮边框 rgba(255,255,255,.2+)
- [ ] 文字为白色系，无纯黑
- [ ] 阴影柔和（大半径 + 透明度）
- [ ] 玻璃元素占比克制（≤60%）
