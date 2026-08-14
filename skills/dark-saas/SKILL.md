---
name: dark-saas
description: 深色 SaaS 产品界面风格（Linear 式）：近黑画布、浅灰文字、单一高饱和强调色、炭黑面板 + hairline 描边、自定义无衬线字体与负字距标题。适合开发者工具、数据看板、AI 产品官网与后台。Use when the user asks for a dark, premium SaaS / developer-tool aesthetic, "Linear style", "Linear-like", or a dark dashboard/product landing page.
whenToUse: 用户想要深色科技感、开发者工具、SaaS 后台、数据密集型产品界面，或明确提到 Linear / 深色 SaaS 风格时
---

# 深色 SaaS 风格（Dark SaaS / Linear-inspired）

> 风格参考来源见仓库根 `THIRD_PARTY_NOTICES.md`（VoltAgent/awesome-design-md, MIT）。
> 完整设计 token 见 `references/dark-saas-tokens.md`。

## 设计总原则

1. **近黑画布，不是纯黑**：画布用 `#010102` 这类带一点蓝黑的近黑色，纯黑 `#000000` 会让界面发闷。
2. **一个强调色**：全站只允许一个高饱和强调色（如 `#5e6ad2` 薰衣草蓝），只出现在品牌标记、焦点环、主要 CTA——**绝不做装饰性点缀**。
3. **层级靠表面色，不靠边框阴影**：用逐级提亮的炭黑面板（surface-1 → surface-4）区分层级，hairline（`1px` 细线）做分隔，**避免大面积投影**。
4. **文字是主角**：浅灰文字分级（ink / ink-muted / ink-subtle），正文至少 400 字重、13-14px；标题 500-600 字重 + 负字距。
5. **排版密度偏技术文档**：紧凑、信息密集，像"软件工程的说明书"，而不是营销页的松散留白。

## 必用 Token（摘录，完整表见 references/dark-saas-tokens.md）

```css
:root {
  --canvas:        #010102;  /* 页面背景 */
  --surface-1:     #0f1011;  /* 卡片 */
  --surface-2:     #141516;  /* 浮层 / 分组 */
  --surface-3:     #18191a;  /* 悬停 */
  --surface-4:     #191a1b;  /* 选中 */
  --hairline:      #23252a;  /* 1px 分隔线 */
  --hairline-strong:#34343a;

  --ink:           #f7f8f8;  /* 主文字 */
  --ink-muted:     #d0d6e0;  /* 次级 */
  --ink-subtle:    #8a8f98;  /* 弱化 / 说明 */
  --ink-tertiary:  #62666d;  /* 占位符 */

  --primary:       #5e6ad2;  /* 唯一强调色 */
  --primary-hover: #828fff;
  --on-primary:    #ffffff;

  --success:       #27a644;
  --danger:        #e5484d;
}
```

## 排版规范

- 标题：`font-weight 500-600`，**负字距**（标题越大字距越负：80px 用 -3px，40px 用 -1px，28px 用 -0.6px）。
- 正文：`13-14px / 400 / 1.5`，字距 `0` 或微负。
- 等宽字体（`mono`，13px）用于代码、数字、API 端点。
- 避免系统默认字体堆栈的"AI 感"：优先 `Inter / Manrope`，配合 `-apple-system` 回退。

## 组件落地清单

| 组件 | 规则 |
|---|---|
| 卡片 | `background: surface-1` + `border: 1px solid hairline`，圆角 8-12px，**无阴影或极淡阴影** |
| 按钮（主） | `background: primary`，hover 用 `primary-hover`，圆角 8px，`font-weight 500` |
| 按钮（次） | 透明底 + 1px hairline 描边 + ink 文字，hover 时 surface-2 |
| 输入框 | surface-1 底 + hairline 描边，focus 时 `ring: 2px primary/40%` |
| 导航 | 顶部 1px hairline 分隔，logo + 产品名在左，功能链接 13px |
| 表格/列表 | 行分隔用 hairline，hover 行 surface-2，数字列用 mono |
| 徽章/状态 | 语义色（success/danger）做 8% 透明底 + 语义色文字，不用实心色块 |
| 图表 | 线条与填充用 surface 系 + primary 强调，网格线 hairline，坐标文字 ink-subtle |

## 禁用清单

- ❌ 大面积渐变背景（尤其紫色/蓝色渐变，AI 味重灾区）
- ❌ 彩虹色、多强调色并存
- ❌ 粗投影、玻璃拟态（除非用户明确要求）
- ❌ 默认 Tailwind `gray-*` 冷灰代替上述自定义表面色
- ❌ 圆角超过 16px 的大圆角卡片

## 验收检查（实现完成后逐条核对）

- [ ] 页面背景不是纯黑，是近黑 `#010102`
- [ ] 全站只出现一个强调色
- [ ] 层级靠表面色，卡片无粗阴影
- [ ] 标题负字距、500-600 字重
- [ ] 分隔全用 1px hairline，不用重边框
- [ ] 亮色模式也按此规范对称实现（inverse 组 token）
