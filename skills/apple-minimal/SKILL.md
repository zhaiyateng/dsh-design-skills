---
name: apple-minimal
description: 苹果极简白风格：大量留白、大号细字重无衬线标题、黑白高对比 + 极少量点缀色、克制圆角、产品大图 + 单行导航。适合产品官网、落地页、作品集。Use when the user asks for an Apple-style, minimal-white, premium product-marketing aesthetic, or a clean landing page with lots of whitespace.
whenToUse: 用户想要极简、高级感、产品官网/落地页/作品集，或明确提到 Apple 风格 / 极简白时
---

# 极简白风格（Apple-style minimal white）

> 风格来源：对公开界面的事实性风格观察，详见 `THIRD_PARTY_NOTICES.md`。
> 不包含任何 Apple 商标资产；"Apple 风"指通用的极简产品营销美学。

## 设计总原则

1. **留白即设计**：宁可空，不可挤。区块间距 ≥ 96px，元素间 ≥ 24px。
2. **大号细字重标题**：标题用 `600-700` 是错的，这里用 **`font-weight 500-600` + 超大字号（48-96px）+ 紧行高**，靠"大 + 细"营造高级感。
3. **黑白高对比，点缀色极少**：文字用近黑 `#1d1d1f`，背景纯白 `#ffffff` 或极浅灰 `#f5f5f7`；强调色（如链接蓝 `#0066cc`）只用于可点击元素。
4. **单行导航**：导航永远只有一行：logo 居中或靠左，链接 12-14px 细字重，右侧 CTA 按钮。
5. **产品图是主角**：用真实产品截图/大图承载视觉，UI 元素退后；图片底用 `#f5f5f7` 浅灰面板。
6. **圆角与阴影克制**：卡片圆角 12-18px，阴影只在浮起状态出现且极淡（`0 4px 24px rgba(0,0,0,.08)`）。

## 必用 Token

```css
:root {
  --canvas:        #ffffff;  /* 页面背景 */
  --canvas-alt:    #f5f5f7;  /* 大图/区块分隔背景 */
  --ink:           #1d1d1f;  /* 主文字（近黑） */
  --ink-muted:     #6e6e73;  /* 次级文字 */
  --ink-subtle:    #86868b;  /* 弱化 / 说明 */
  --hairline:      #d2d2d7;  /* 1px 分隔线 */

  --accent:        #0066cc;  /* 唯一链接/交互色 */
  --accent-hover:  #0071e3;

  --card-shadow:   0 4px 24px rgba(0, 0, 0, 0.08);
  --radius:        12px;
}
```

## 排版规范

- **标题字阶**（全部 `500-600` 字重、`letter-spacing -0.02em` 起）：96px（hero）→ 64px（章节）→ 40px（卡片标题）→ 28px（副标题）。
- 正文：`17-21px / 400 / 1.5`（比常规大一号，Apple 官网正文就是 17px 起）。
- 所有文字渲染要"轻"：避免 `font-weight 700`、避免文字阴影。
- 字体：`-apple-system / SF Pro` 优先，非苹果平台用 `Inter`。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| Hero | 标题 96px 细字重居中，副标题 21px muted，下方产品大图（alt 面板底） |
| 导航 | 单行：logo 居中，左右各一组 12-14px 链接，右侧胶囊 CTA（`ink` 底白字） |
| 特性卡片 | 白底 + 淡阴影，图标 28px 线条风，标题 28px 细字重 |
| 大图区块 | 背景 `canvas-alt`（`#f5f5f7`），图占 80% 宽度居中，上下各 96px 留白 |
| 按钮 | 主 CTA：近黑胶囊（`ink` 底白字，圆角 980px）；次 CTA：透明 + accent 文字 |
| 价格表 | 三列，中间列 `canvas-alt` 底高亮，价格 48px 细字重 |
| Footer | 极简 3-4 列，文字 12px muted，顶部 hairline |

## 禁用清单

- ❌ 深色主题（本风格专指亮色极简；用户要深色请路由到 dark-saas）
- ❌ 渐变、玻璃拟态、重阴影、花哨动画
- ❌ 多列复杂导航、汉堡菜单（除非视口很小）
- ❌ 全宽压满的卡片墙，保持区块呼吸感
- ❌ `font-weight 700` 的大标题

## 验收检查

- [ ] 标题细字重、字号 ≥ 48px、紧行高
- [ ] 区块间距 ≥ 96px
- [ ] 全站点缀色 ≤ 1 个
- [ ] 导航单行
- [ ] 图片底 `#f5f5f7` 或图本身为主角
- [ ] 无渐变、无玻璃拟态、无粗阴影
