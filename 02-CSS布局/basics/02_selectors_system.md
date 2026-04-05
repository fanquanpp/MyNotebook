# CSS3 选择器系统 (Selectors System)

> @Author: Anonymous
> @Category: CSS Basics
> @Description: 基础选择器、组合选择器、伪类与伪元素深度解析。 | Basic, combinator, pseudo-class, and pseudo-element selectors.

## 1. 基础选择器 (Basic Selectors)
- **通配符**: `* { ... }` (匹配所有元素)。
- **标签**: `div { ... }`。
- **类**: `.container { ... }`。
- **ID**: `#header { ... }`。
- **属性**: `[type="text"]`, `[href^="https"]` (匹配开头)。

## 2. 组合选择器 (Combinators)
- **后代**: `div p` (所有后代)。
- **子代**: `div > p` (仅直接子元素)。
- **相邻兄弟**: `h1 + p` (紧跟在后的第一个兄弟)。
- **通用兄弟**: `h1 ~ p` (后面所有的兄弟)。

## 3. 伪类选择器 (Pseudo-classes)
用于选择处于特定状态的元素。
- **状态**: `:hover`, `:active`, `:focus`, `:visited`。
- **结构**:
  - `:first-child`, `:last-child`。
  - `:nth-child(n)`: 选择第 n 个子元素 (支持 `2n`, `odd`, `even`)。
  - `:not(.className)`: 排除特定元素。
  - `:root`: 匹配文档根元素 (通常用于定义全局变量)。

## 4. 伪元素选择器 (Pseudo-elements)
用于选择元素的特定部分。
- **`::before` / `::after`**: 在内容前后插入装饰性内容 (必须配合 `content` 属性)。
- **`::first-letter` / `::first-line`**: 首字母/首行。
- **`::selection`**: 用户选中的文本样式。
- **`::placeholder`**: 表单占位符样式。

## 5. 最佳实践 (Best Practices)
- **性能**: 尽量减少层级嵌套 (建议不超过 3 层)。
- **规范**: 推荐使用 **BEM (Block Element Modifier)** 命名规范。
  - 示例: `.button {}`, `.button__icon {}`, `.button--large {}`。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化选择器分类与 BEM 命名规范。
