# Dark SaaS 完整设计 Token（Linear-inspired）

> **来源标注**：本表是对 [VoltAgent/awesome-design-md · linear.app/DESIGN.md](https://github.com/VoltAgent/awesome-design-md/blob/main/design-md/linear.app/DESIGN.md)（MIT）的事实性 token 提炼，非全文复制。完整许可证见 `THIRD_PARTY_NOTICES.md`。
>
> 本表是 `skills/dark-saas/SKILL.md` 的配套参考，供模型在实现时精确取用。

## 颜色（Colors）

### 画布与表面（Canvas & Surfaces）

| Token | 值 | 用途 |
|---|---|---|
| `canvas` | `#010102` | 页面背景（近黑，带蓝黑，勿用纯黑） |
| `surface-1` | `#0f1011` | 卡片、面板 |
| `surface-2` | `#141516` | 浮层、分组、hover |
| `surface-3` | `#18191a` | 次级 hover |
| `surface-4` | `#191a1b` | 选中态 |
| `hairline` | `#23252a` | 1px 分隔线（默认） |
| `hairline-strong` | `#34343a` | 强调分隔线 |
| `hairline-tertiary` | `#3e3e44` | 弱分隔线 |

### 文字（Ink）

| Token | 值 | 用途 |
|---|---|---|
| `ink` | `#f7f8f8` | 主文字 |
| `ink-muted` | `#d0d6e0` | 次级文字 |
| `ink-subtle` | `#8a8f98` | 弱化文字、说明 |
| `ink-tertiary` | `#62666d` | 占位符、禁用 |

### 强调与语义（Accent & Semantic）

| Token | 值 | 用途 |
|---|---|---|
| `primary` | `#5e6ad2` | 唯一强调色（CTA、焦点环、品牌标记） |
| `primary-hover` | `#828fff` | 强调色 hover |
| `primary-focus` | `#5e69d1` | focus 环 |
| `on-primary` | `#ffffff` | 强调色上的文字 |
| `success` | `#27a644` | 成功态 |
| `danger` | `#e5484d` | 危险/错误态 |
| `brand-secure` | `#7a7fad` | 安全相关弱强调 |

## 排版（Typography）

### 标题（Display / Headline，统一 `font-family: Linear Display / Inter`）

| 名称 | 字号 | 字重 | 行高 | 字距 |
|---|---|---|---|---|
| display-xl | 80px | 600 | 1.05 | -3.0px |
| display-lg | 56px | 600 | 1.10 | -1.8px |
| display-md | 40px | 600 | 1.15 | -1.0px |
| headline | 28px | 600 | 1.20 | -0.6px |
| card-title | 22px | 500 | 1.25 | -0.4px |
| subhead | 20px | 400 | 1.40 | -0.2px |

### 正文（Body，统一 `font-family: Linear Text / Inter`）

| 名称 | 字号 | 字重 | 行高 | 字距 |
|---|---|---|---|---|
| body-lg | 18px | 400 | 1.50 | -0.1px |
| body | 16px | 400 | 1.50 | -0.05px |
| body-sm | 14px | 400 | 1.50 | 0 |
| caption | 12px | 400 | 1.40 | 0 |
| button | 14px | 500 | 1.20 | 0 |
| eyebrow | 13px | 500 | 1.30 | +0.4px（唯一正字距，用于小标签） |
| mono | 13px | 400 | 1.50 | 0（代码/数字/API 端点） |

## 圆角与阴影（Radius & Shadow）

- 卡片圆角：8–12px（克制，避免 > 16px）
- 按钮圆角：8px
- 阴影：**默认无阴影**，仅浮起态用极淡阴影（如 `0 4px 12px rgba(0,0,0,.3)`）
- 焦点环：`2px primary/40%`（`box-shadow: 0 0 0 2px rgba(94,106,210,.4)`）

## 使用纪律

1. 强调色只出现在品牌标记、焦点环、主要 CTA——**永不装饰性使用**。
2. 层级靠表面色（surface-1→4），不靠边框宽度、不靠阴影。
3. 正文密度偏技术文档：紧凑、信息密集。
4. 亮色模式需对称实现 inverse 组（inverse-canvas `#ffffff`、inverse-surface-1 `#f5f6f6`、inverse-ink `#000000`）。

## 参考实现片段

```css
.card {
  background: var(--surface-1);
  border: 1px solid var(--hairline);
  border-radius: 10px;
}
.btn-primary {
  background: var(--primary);
  color: var(--on-primary);
  font-weight: 500;
  border-radius: 8px;
}
.btn-primary:hover { background: var(--primary-hover); }
.input:focus {
  outline: none;
  box-shadow: 0 0 0 2px rgba(94, 106, 210, 0.4);
}
```
