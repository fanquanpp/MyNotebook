---
url: "https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes"
version: "HTML5"
update_date: "2026-04-05"
tags: ["HTML5", "Attributes", "Global"]
---

<a id="title"></a>
# HTML5 全局属性

<a id="1"></a>
## 1 语法 (Syntax)

全局属性是所有 HTML 元素共有的属性。

<a id="1.1"></a>
### 1.1 核心属性

- **`class`**: 元素的类名列表。
- **`id`**: 文档内唯一的标识符。
- **`style`**: 行内 CSS 样式声明。
- **`title`**: 元素的提示文本。

<a id="1.2"></a>
### 1.2 交互属性

- **`contenteditable`**: 使元素内容可编辑。
- **`draggable`**: 指示元素是否可拖动。
- **`hidden`**: 隐藏元素。
- **`tabindex`**: 控制键盘焦点顺序。

<a id="1.3"></a>
### 1.3 自定义数据属性

- **`data-*`**: 允许在 HTML 和 DOM 之间交换私有信息。

<a id="2"></a>
## 2 场景 (Scenario)

- **样式与脚本选择**：通过 `id` 和 `class` 精确定位。
- **无障碍访问**：利用 `role` 和 `aria-*` 增强支持。
- **交互增强**：使用 `contenteditable` 构建编辑器。

<a id="3"></a>
## 3 示例 (Example)

```html
<!-- 1: 自定义数据属性 -->
<!-- 2: 可编辑区域 -->
<div id="user-profile" class="profile-box" data-user-id="12345" contenteditable="true">
    Click me to edit your name!
</div>
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **ID 冲突**：在同一页面中使用重复的 `id`。
2. **过度使用 Style**：行内样式难以维护。
3. **Hidden 误区**：不应用于安全性隐藏。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 Popover API

HTML5 新增了 `popover` 属性，配合 `popovertarget` 实现弹出层。

[MDN Global Attributes](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Global_attributes)<!-- nofollow -->
