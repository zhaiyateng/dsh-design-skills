# dsh-design-skills

**DeepSeek Harness 设计美学技能包 —— 让 vibe coding 出来的网站摆脱「AI 味」。**

[English](README.md) | **中文**

> 模型不缺"怎么建站"，缺"怎么建得好看"。本技能包把经过验证的设计风格提炼成
> 可执行的规范（token + 组件规则 + 禁用清单 + 验收清单），模型匹配后自动遵循。

[![MIT License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![dsh](https://img.shields.io/badge/DeepSeek%20Harness-dsh--plugin-4176E6)](https://github.com/deepseek-ai/deepseek-harness)
[![awesome · DSH plugin](https://awesome-dsh-plugin.com/badge.svg)](https://awesome-dsh-plugin.com)
[![在线预览](https://img.shields.io/badge/🔗_在线预览-GitHub_Pages-5e6ad2)](https://zhaiyateng.github.io/dsh-design-skills/)

> 🖼️ **在线体验全部 10 种风格** → [**zhaiyateng.github.io/dsh-design-skills**](https://zhaiyateng.github.io/dsh-design-skills/)

## 效果预览

同一产品（虚构的 Agent 编排平台 "Relay"）的十种风格效果——这就是本技能包对
vibe coding 产物的实际影响：

| `dark-saas`（深色） | `apple-minimal`（极简白） | `neo-neumorphism`（新拟态） | `brutalism`（粗野主义） | `glassmorphism`（毛玻璃） |
|---|---|---|---|---|
| ![dark-saas 落地页演示](assets/dark-saas-landing.png) | ![apple-minimal 落地页演示](assets/apple-minimal-landing.png) | ![neo-neumorphism 落地页演示](assets/neo-neumorphism-landing.png) | ![brutalism 落地页演示](assets/brutalism-landing.png) | ![glassmorphism 落地页演示](assets/glassmorphism-landing.png) |

| `japanese-minimal`（日式极简） | `bento-grid`（便当盒） | `cyberpunk`（赛博朋克） | `vaporwave`（蒸汽波） | `art-deco`（装饰艺术） |
|---|---|---|---|---|
| ![japanese-minimal 落地页演示](assets/japanese-minimal-landing.png) | ![bento-grid 落地页演示](assets/bento-grid-landing.png) | ![cyberpunk 落地页演示](assets/cyberpunk-landing.png) | ![vaporwave 落地页演示](assets/vaporwave-landing.png) | ![art-deco 落地页演示](assets/art-deco-landing.png) |

Demo 源码：[`examples/dark-saas-landing.html`](examples/dark-saas-landing.html) · [`examples/apple-minimal-landing.html`](examples/apple-minimal-landing.html) · [`examples/neo-neumorphism-landing.html`](examples/neo-neumorphism-landing.html) · [`examples/brutalism-landing.html`](examples/brutalism-landing.html) · [`examples/glassmorphism-landing.html`](examples/glassmorphism-landing.html) · [`examples/japanese-minimal-landing.html`](examples/japanese-minimal-landing.html) · [`examples/bento-grid-landing.html`](examples/bento-grid-landing.html) · [`examples/cyberpunk-landing.html`](examples/cyberpunk-landing.html) · [`examples/vaporwave-landing.html`](examples/vaporwave-landing.html) · [`examples/art-deco-landing.html`](examples/art-deco-landing.html)

## 包含的技能

| 技能 | 风格 | 适用场景 |
|---|---|---|
| [`dark-saas`](skills/dark-saas/SKILL.md) | 深色 SaaS（Linear 式） | 开发者工具、数据看板、AI 产品、SaaS 后台 |
| [`apple-minimal`](skills/apple-minimal/SKILL.md) | 极简白（Apple 式） | 产品官网、落地页、作品集 |
| [`neo-neumorphism`](skills/neo-neumorphism/SKILL.md) | 新拟态 / Soft UI | 个人主页、健康/理财 App、演示 Demo |
| [`brutalism`](skills/brutalism/SKILL.md) | 粗野主义 / Brutalism | 实验性产品、艺术/独立项目、开发者工具 |
| [`glassmorphism`](skills/glassmorphism/SKILL.md) | 毛玻璃 / Glassmorphism | AI 产品、SaaS 官网、Dashboard、演示 Demo |
| [`japanese-minimal`](skills/japanese-minimal/SKILL.md) | 日式极简 / Japanese Minimal | 文化/美学类产品、博客、艺术展、和风品牌 |
| [`bento-grid`](skills/bento-grid/SKILL.md) | 便当盒 / Bento Grid | 产品官网、功能展示、SaaS 首页、个人主页 |
| [`cyberpunk`](skills/cyberpunk/SKILL.md) | 赛博朋克 / Cyberpunk | 科技产品、AI 工具、游戏、极客向落地页 |
| [`vaporwave`](skills/vaporwave/SKILL.md) | 蒸汽波 / Vaporwave | 艺术项目、音乐/文化向站点、实验性落地页 |
| [`art-deco`](skills/art-deco/SKILL.md) | 装饰艺术 / Art Deco | 高端品牌、奢华酒店、艺术/时尚类站点 |

## 安装

```bash
dsh plugin --profile web add dsh-design-skills
```

或本地安装：把本仓库放进 `$DSH_HOME/profiles/node_modules/`（符号链接），
在 profile 的 `cordis.patch.yml` 中插入 `dsh-design-skills`。

## 使用

在会话中直接说：

- 「用深色 SaaS 风给我做一个 AI 产品落地页」→ 自动匹配 `dark-saas`
- 「帮我做一个 Linear 风格的数据看板」→ 自动匹配 `dark-saas`
- 「做一个苹果官网那种极简的落地页」→ 自动匹配 `apple-minimal`
- 「Soft UI 风格的个人主页」→ 自动匹配 `neo-neumorphism`
- 「粗野主义风格的开发者工具官网」→ 自动匹配 `brutalism`
- 「毛玻璃效果的 AI 产品首页」→ 自动匹配 `glassmorphism`
- 「日式极简、禅意风格的品牌站」→ 自动匹配 `japanese-minimal`
- 「便当盒布局的产品功能页」→ 自动匹配 `bento-grid`
- 「赛博朋克霓虹风格的 AI 工具」→ 自动匹配 `cyberpunk`
- 「蒸汽波风格的实验站点」→ 自动匹配 `vaporwave`
- 「装饰艺术奢华风格的品牌官网」→ 自动匹配 `art-deco`

技能通过渐进式披露工作：会话开始时模型只看到技能名与描述，
当任务匹配时才加载完整 SKILL.md（token、组件规则、禁用清单）。

## 原理

- 每个技能是标准的 `skills/<name>/SKILL.md`（YAML frontmatter：`name` + `description` 必填）。
- `index.js` 以 `ctx.skills` provider 形式注册本包全部技能（rank 600，与官方内置同级）。
- 声明 `dsh.bundle` manifest，可通过 `dsh plugin add` 一键安装。

## 路线图

- [x] 十种风格：深色 SaaS、极简白、新拟态、粗野主义、毛玻璃、日式极简、便当盒、赛博朋克、蒸汽波、装饰艺术
- [x] 每种风格的完整落地页 demo 代码（可一键复制）+ 宣传截图
- [ ] 场景化工作流 skill：落地页 / 作品集 / 文档站 / SaaS 后台
- [ ] 设计 token 的 Tailwind / CSS variables 双格式输出

## 合规说明

本仓库的设计规范参考了 MIT 许可的开源项目（[awesome-design-md](https://github.com/VoltAgent/awesome-design-md)、[shadcn/ui](https://github.com/shadcn-ui/ui)）。
所有来源、许可证全文与商标声明见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。
本仓库与所列品牌无任何隶属或背书关系。

## License

[MIT](LICENSE)
