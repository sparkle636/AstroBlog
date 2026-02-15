---
title: Markdown 扩展功能
published: 2024-05-01
updated: 2024-11-29
description: '了解更多关于Fuwari中的Markdown功能。'
image: ''
tags: [Fuwari]
category: '示例'
draft: false 
---

## GitHub 仓库卡片
你可以添加动态卡片来链接到 GitHub 仓库，页面加载时，仓库信息会从 GitHub API 中拉取。

::github{repo="Fabrizz/MMM-OnSpotify"}

使用代码 `::github{repo="<所有者>/<仓库名>"}` 即可创建 GitHub 仓库卡片。

```markdown
::github{repo="saicaca/fuwari"}
```

## 提示框（Admonitions）

支持以下类型的提示框：`note`（备注）、`tip`（技巧）、`important`（重要）、`warning`（警告）、`caution`（注意）

:::note
突出显示即使用户快速浏览也应注意的信息。
:::

:::tip
帮助用户更好地完成操作的补充信息。
:::

:::important
用户成功操作所必需的关键信息。
:::

:::warning
因存在潜在风险而需要用户立即关注的关键内容。
:::

:::caution
某一操作可能带来的负面后果。
:::

### 基础语法

```markdown
:::note
突出显示即使用户快速浏览也应注意的信息。
:::

:::tip
帮助用户更好地完成操作的补充信息。
:::
```

### 自定义标题

提示框的标题可以自定义。

:::note[我的自定义标题]
这是一个带有自定义标题的备注提示框。
:::

```markdown
:::note[我的自定义标题]
这是一个带有自定义标题的备注提示框。
:::
```

### GitHub 语法

> [!TIP]
> [GitHub 语法](https://github.com/orgs/community/discussions/16925) 同样受支持。

```
> [!NOTE]
> GitHub 语法同样受支持。

> [!TIP]
> GitHub 语法同样受支持。
```

### 折叠内容（Spoiler）

你可以为文本添加折叠内容。这些文本也支持 **Markdown** 语法。

内容 :spoiler[被隐藏了 **啊啊啊**]！

```markdown
内容 :spoiler[被隐藏了 **啊啊啊**]!
```

## 插入视频

复制对应嵌入代码然后粘贴至markdown文件中。

<iframe width="100%" height="468" src="//player.bilibili.com/player.html?bvid=BV1fK4y1s7Qf&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

### 总结
1. 翻译完整保留了原文的 Markdown 结构（包括 Frontmatter、代码块、提示框语法、折叠内容语法等），确保在 Fuwari 中可直接使用；
2. 专业术语（如 Admonitions、Spoiler）补充了中文释义，同时保留原英文标识，兼顾可读性和功能兼容性；
3. 所有代码块内的语法（如 `::github`、`:::note`、`:spoiler`）均未修改，仅翻译注释和说明文本，保证功能不受影响。