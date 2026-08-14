---
name: vaporwave
description: 蒸汽波风格（Vaporwave）：粉紫渐变天空、希腊雕像/罗马柱剪影、网格地平线、复古霓虹、80 年代复古未来感。适合艺术项目、音乐/文化向站点、实验性落地页。Use when the user asks for vaporwave, synthwave, retro-futurism, 80s aesthetic, or a pink-purple retro sun-and-grid look.
whenToUse: 用户想要蒸汽波、复古未来、80 年代风格、粉紫霓虹、合成器浪潮感时
---

# 蒸汽波风格（Vaporwave / Synthwave）

> 本风格为本仓库原创规范，无第三方来源引用。

## 设计总原则

1. **粉紫渐变天空**：页面顶部是招牌式的粉→紫渐变（`linear-gradient(#ff71ce, #b967ff)` 一类），配一轮"复古太阳"（横条纹太阳，`repeating-linear-gradient` 或色块叠加）。
2. **网格地平线**：底部有透视网格地面（CSS 3D 或简化为水平网格线），形成"地平线"构图。
3. **经典剪影元素**：希腊雕像/罗马柱/棕榈树剪影（可用 emoji/SVG 或纯色 silhouette），放在太阳前。
4. **复古霓虹点缀**：品红/青/黄霓虹边框与文字（glow），呼应 80 年代霓虹。
5. **中文/日文假名点缀**：日文片假名或汉字作为装饰元素（vaporwave 文化特征）。
6. **复古字体**：标题可用粗黑体 + 倾斜，或 retro 衬线；正文常规无衬线。

## 必用 Token

```css
:root {
  --sky-1:   #ff71ce;   /* 粉 */
  --sky-2:   #b967ff;   /* 紫 */
  --sky-3:   #5c3d99;   /* 深紫（地平线以下） */
  --ink:     #ffffff;
  --ink-dim: rgba(255, 255, 255, 0.8);

  --neon-cyan:  #00f0ff;
  --neon-magenta: #ff00e5;
  --neon-yellow:  #ffe600;

  --glow: 0 0 8px rgba(255, 0, 229, 0.7), 0 0 24px rgba(255, 0, 229, 0.4);
  --font-head: 'Arial Black', 'Helvetica Neue', Impact, sans-serif;
  --font-jp: 'Hiragino Kaku Gothic ProN', 'Yu Gothic', sans-serif;
}
```

## 排版规范

- 标题：粗黑体，白色或霓虹色，可轻微倾斜（`transform: skewX(-3deg)` 可选），带 glow。
- 装饰文字：日文假名/汉字（如「永遠」「夢」）用 `font-jp`，放在角落或太阳下方。
- 正文：白色/半透明白，`15-16px`。
- 小标签：等宽或黑体 `12px uppercase`，霓虹色。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 天空 | 顶部 `sky-1 → sky-2` 渐变，占首屏上半部 |
| 复古太阳 | 半圆 + 横条纹（`repeating-linear-gradient` 水平条纹），粉紫或橙色 |
| 剪影层 | 太阳前的深紫色 silhouette（罗马柱/雕像/棕榈树，`background: rgba(30,20,60,.9)`），可用 emoji（🏛️🌴🗿）或 CSS 形状 |
| 网格地面 | 底部 `sky-3` 底 + 白色/紫色水平与垂直线网格（`linear-gradient` 交叉线），透明渐变淡出 |
| 卡片 | 半透明深紫底（`rgba(30,20,60,.55)`）+ 1px 霓虹边框 + blur 可选 |
| 按钮 | 霓虹品红/青边框 + glow，hover 增强 |
| 导航 | 顶部透明，logo 白字带 glow |
| 指标/代码 | 等宽 + 青/品红霓虹 |

## 禁用清单

- ❌ 没有渐变天空（蒸汽波必须粉紫渐变）
- ❌ 白色背景、浅色页面
- ❌ 写实照片感（要复古、失真、VHS 感）
- ❌ 现代极简的灰白配色
- ❌ 圆角过大（保持 80 年代硬朗 + 霓虹）

## 验收检查

- [ ] 顶部有粉→紫渐变天空
- [ ] 有复古太阳或剪影元素（雕像/棕榈/罗马柱）
- [ ] 有网格地面/地平线元素
- [ ] 霓虹 glow 至少出现在标题或按钮
- [ ] 页面整体为粉紫+深紫+霓虹调
- [ ] 可选：日文/假名装饰文字
