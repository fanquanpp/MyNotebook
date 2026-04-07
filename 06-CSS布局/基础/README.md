# CSS3 布局基础体系 | CSS3 Layout Basics

<!--
作者：fanquanpp
创建日期：2026-04-06
版本：v1.0.0
-->

## 1. 基础篇概述 | Basics Overview

CSS3 基础篇涵盖了 CSS3 的核心语法、盒模型、现代布局及传统布局技术，包括概述与基本语法、选择器系统、盒模型详解、Flexbox 弹性布局、Grid 网格布局、传统布局与定位、Canvas 绘图等内容。通过学习基础篇，你将掌握 CSS3 的基本使用方法，为后续的前端开发学习打下基础。

## 2. 目录索引 | Directory Index

| 序号 | 文件名 | 描述 |
| :--- | :--- | :--- |
| 01 | [01-概述与语法.md](./01-概述与语法.md) | CSS3 核心特性、引入方式、优先级权重、单位 |
| 02 | [02-选择器系统.md](./02-选择器系统.md) | 基础选择器、组合选择器、伪类与伪元素、BEM 规范 |
| 03 | [03-盒模型.md](./03-盒模型.md) | Content Box、Border Box、外边距塌陷、BFC 原理 |
| 04 | [04-Flex布局.md](./04-Flex布局.md) | Flexbox 容器属性、项目属性、垂直居中实战 |
| 05 | [05-Grid布局.md](./05-Grid布局.md) | Grid 二维网格、区域命名、fr 单位、响应式网格 |
| 06 | [06-传统布局与定位.md](./06-传统布局与定位.md) | 浮动清除、Relative/Absolute/Fixed/Sticky 定位 |
| 07 | [07-Canvas绘图.md](./07-Canvas绘图.md) | Canvas 基础绘图、动画效果、实战示例 |

## 3. 学习路线 | Learning Path

```
概述与语法 → 选择器系统 → 盒模型 → Flex布局 → Grid布局 → 传统布局与定位 → Canvas绘图
```

## 4. 核心知识点 | Core Knowledge Points

### 4.1 概述与语法

- CSS3 的核心特性和优势
- CSS 的引入方式（内联、内部、外部）
- CSS 选择器的优先级和权重
- CSS 单位（px、em、rem、%、vh、vw 等）
- CSS 语法结构和规则
- CSS 注释的使用

### 4.2 选择器系统

- 基础选择器（元素、类、ID、通配符）
- 组合选择器（后代、子元素、相邻兄弟、通用兄弟）
- 伪类选择器（:hover、:active、:focus、:nth-child 等）
- 伪元素选择器（::before、::after、::first-line、::first-letter）
- BEM 命名规范
- 选择器的优先级和 specificity

### 4.3 盒模型

- 盒模型的组成（内容、内边距、边框、外边距）
- Content Box 和 Border Box 的区别
- box-sizing 属性的使用
- 外边距塌陷问题
- BFC（块格式化上下文）的原理和应用
- 盒模型的计算和布局

### 4.4 Flex 布局

- Flexbox 布局的概念和优势
- Flex 容器的属性（display、flex-direction、flex-wrap、justify-content、align-items、align-content）
- Flex 项目的属性（order、flex-grow、flex-shrink、flex-basis、align-self）
- Flex 布局的实战应用（垂直居中、导航栏、响应式布局）
- Flex 布局的浏览器兼容性

### 4.5 Grid 布局

- Grid 布局的概念和优势
- Grid 容器的属性（display、grid-template-columns、grid-template-rows、grid-template-areas、grid-gap 等）
- Grid 项目的属性（grid-column、grid-row、grid-area）
- Grid 布局的实战应用（二维布局、响应式网格）
- Grid 布局的浏览器兼容性

### 4.6 传统布局与定位

- 浮动布局的原理和应用
- 浮动清除的方法
- 定位属性（static、relative、absolute、fixed、sticky）
- 定位的实战应用
- 传统布局技术的优缺点

### 4.7 Canvas 绘图

- Canvas 元素的基本用法
- Canvas 2D 上下文的使用
- 基本绘图操作（绘制线条、矩形、圆形、文本等）
- Canvas 动画效果的实现
- Canvas 绘图的实战示例

## 5. 学习建议 | Learning Suggestions

1. **循序渐进**：按照学习路线的顺序学习，从概述与语法开始，逐步掌握 CSS3 的各种特性
2. **实践为主**：多编写代码，通过实际项目练习加深对 CSS3 概念的理解
3. **重点关注**：特别关注 Flexbox 和 Grid 布局，这是现代 CSS 布局的核心技术
4. **查阅文档**：遇到问题时，参考 MDN 文档和相关资源
5. **代码规范**：遵循 CSS 代码规范，提高代码的可读性和可维护性
6. **浏览器兼容性**：了解 CSS3 特性的浏览器兼容性，使用适当的降级方案
7. **结合 HTML**：CSS 与 HTML 结合使用，构建完整的网页结构
8. **调试工具**：学习使用浏览器的开发者工具，提高调试能力

## 6. 延伸阅读 | Further Reading

- [MDN CSS 文档](https://developer.mozilla.org/en-US/docs/Web/CSS) <!-- nofollow -->
- [CSS 参考](https://www.w3schools.com/css/) <!-- nofollow -->
- [CSS 布局指南](https://css-tricks.com/) <!-- nofollow -->
- 本仓库：[HTML5 网页开发](../05-HTML5网页开发/README.md)、[JavaScript 脚本](../08-Javascript脚本/README.md)

## 7. 小结 | Summary

CSS3 基础篇提供了 CSS3 的核心技术和基本使用方法，是学习前端开发的重要组成部分。通过学习基础篇，你已经了解了 CSS3 的语法、选择器系统、盒模型、现代布局技术（Flexbox 和 Grid）、传统布局与定位、Canvas 绘图等内容，为后续的前端开发学习打下了基础。

在学习过程中，要注重实践，通过实际项目来巩固所学知识，同时要关注 CSS3 的最佳实践，以编写高质量的 CSS 代码。CSS3 是现代前端开发的重要工具，它提供了丰富的布局技术和样式效果，为构建现代化、响应式的网页应用提供了有力支持。
