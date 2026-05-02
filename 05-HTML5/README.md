# 05-HTML5 网页开发 | HTML5 Web Development

> @Author: fanquanpp
> @Version: v3.0.0
> @Created: 2026-04-05

## 1. 简介 | Introduction

专注于 HTML5 核心标签、语义化结构、表单验证、多媒体处理以及高级 Web API 的学习与应用。作为现代网页开发的基础，HTML5 提供了丰富的语义化标签和强大的 Web API，本模块旨在帮助开发者构建语义化、高性能、可访问的现代网页结构。

## 2. 学习路线图 | Learning Roadmap

### 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | HTML5 基础体系 | 15h | 无 |
| 进阶 | Vue 核心与实战 | 30h | HTML5, JS |

### 学习提示 | Tips
- **代码重构**：优先使用 ES6+ 的语法特性（解构、箭头函数、模板字符串）。
- **性能优化**：掌握 `Tree-shaking`, `Code Splitting`, `Lazy Loading`。
- **面试重点**：掌握 `Closure`, `Event Loop`, `Promise`, `TypeScript Generics`。
- **实战建议**：使用 `Vite` 构建你的第一个 `Vue` 或 `React` 项目。

## 3. 目录索引 | Directory Index

### 基础语法 | Basics

- [V05_101-HTML5名词注释查阅表.md](./V05_101-HTML5名词注释查阅表.md)
- [C05_101-概述与语义化.md](./C05_101-概述与语义化.md)
- [C05_102-基础标签与全局属性.md](./C05_102-基础标签与全局属性.md)
- [C05_103-表单与验证.md](./C05_103-表单与验证.md)
- [C05_104-多媒体与Canvas.md](./C05_104-多媒体与Canvas.md)
- [C05_105-存储与WebAPI.md](./C05_105-存储与WebAPI.md)

### 高级特性 | Advanced
- [G05_201-Vue核心与实战.md](./G05_201-Vue核心与实战.md)
- [G05_202-WebComponents与PWA.md](./G05_202-WebComponents与PWA.md)

### 示例 | Examples
- [web_components.html](./示例/web_components.html)

## 3. 基础篇详细内容 | Basics Details

### 3.1 基础篇概述 | Basics Overview

HTML5 基础篇涵盖了 HTML5 的核心技术，包括语义化标签、基础标签与属性、表单与验证、多媒体与 Canvas、存储与 Web API 等内容。通过学习基础篇，你将掌握 HTML5 的基本使用方法，为后续的前端开发学习打下基础。

### 3.2 目录索引 | Directory Index

| 序号 | 文件名 | 描述 |
| :--- | :--- | :--- |
| 01 | [C05_101-概述与语义化.md](./C05_101-概述与语义化.md) | HTML5 历史、文档结构、语义化标签布局 |
| 02 | [C05_102-基础标签与全局属性.md](./C05_102-基础标签与全局属性.md) | 常用文本/媒体标签、data-* 属性、全局属性 |
| 03 | [C05_103-表单与验证.md](./C05_103-表单与验证.md) | 新型 Input 类型、表单验证、datalist 建议 |
| 04 | [C05_104-多媒体与Canvas.md](./C05_104-多媒体与Canvas.md) | 原生音视频、Canvas 2D 绘图、SVG 对比 |
| 05 | [C05_105-存储与WebAPI.md](./C05_105-存储与WebAPI.md) | LocalStorage、Geolocation、Worker、Fetch API |

### 3.3 核心知识点 | Core Knowledge Points

#### 3.3.1 概述与语义化

- HTML5 的发展历史和特点
- HTML5 文档结构
- 语义化标签的使用（header、nav、section、article、aside、footer 等）
- 语义化布局的最佳实践
- HTML5 文档类型和字符集

#### 3.3.2 基础标签与全局属性

- 常用文本标签（h1-h6、p、span、a 等）
- 媒体标签（img、video、audio）
- 列表标签（ul、ol、li、dl、dt、dd）
- 表格标签（table、tr、td、th）
- 全局属性（id、class、style、data-* 等）
- 标签的语义和使用场景

#### 3.3.3 表单与验证

- 表单的基本结构
- 新型 Input 类型（email、tel、url、number、date 等）
- 表单验证（required、pattern、min、max 等）
- datalist 元素的使用
- 表单提交和处理
- 表单的可访问性

#### 3.3.4 多媒体与 Canvas

- 原生音频和视频的嵌入
- video 和 audio 标签的属性和方法
- Canvas 2D 绘图 API
- Canvas 基本操作（绘制图形、文本、图像等）
- SVG 与 Canvas 的对比
- 多媒体内容的优化

#### 3.3.5 存储与 Web API

- LocalStorage 和 SessionStorage
- IndexedDB 数据库
- Geolocation API（地理位置）
- Web Worker（后台线程）
- Fetch API（网络请求）
- 其他常用 Web API

### 3.4 延伸阅读 | Further Reading

- [MDN HTML 文档](https://developer.mozilla.org/en-US/docs/Web/HTML) <!-- nofollow -->
- [HTML5 官方规范](https://html.spec.whatwg.org/) <!-- nofollow -->
- [HTML5 教程](https://www.w3schools.com/html/) <!-- nofollow -->

## 4. 框架篇详细内容 | Frameworks Details

### 4.1 框架列表 | Framework List

| 框架名称 | 笔记文件 | 核心内容 |
| :--- | :--- | :--- |
| **Vue** | [G05_201-Vue核心与实战.md](./G05_201-Vue核心与实战.md) | 核心语法、组件化、路由与状态管理、工程化实战 |

## 5. 环境要求 | Environment Requirements

- **浏览器**：Chrome 90+, Firefox 88+, Safari 14+, Edge 90+
- **开发工具**：VS Code, Sublime Text, 或任何文本编辑器
- **在线工具**：[Codepen](https://codepen.io/), [JSFiddle](https://jsfiddle.net/)

## 6. 快速开始 | Quick Start

1. 编写第一个语义化页面：参考 [C05_101-概述与语义化.md](./C05_101-概述与语义化.md)
2. 实验表单验证：查阅 [C05_103-表单与验证.md](./C05_103-表单与验证.md)
3. 本地预览：在浏览器中打开 HTML 文件

## 7. 学习路线 | Learning Path

`概述与语义化` → `基础标签与全局属性` → `表单与验证` → `多媒体与Canvas` → `存储与WebAPI` → `Vue核心与实战`

## 8. 核心特色 | Key Features

- **语义化结构**：详细讲解 HTML5 语义化标签的使用场景与最佳实践
- **Web API 集成**：收录常用 Web API 的使用方法与示例，包括存储、地理定位等
- **多媒体支持**：提供音频、视频和 Canvas 绘图的实现方法
- **表单验证**：详细讲解 HTML5 表单验证的使用
- **响应式设计**：与 CSS 布局结合，实现响应式网页设计
- **可访问性**：重点讲解网页可访问性的实现方法，确保所有人都能访问
- **浏览器兼容性**：提供各标签和 API 的浏览器支持情况
- **双语注释**：关键概念和代码提供中英文对照注释

## 9. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从概述与语义化开始，逐步掌握 HTML5 的各种特性
2. 结合实际项目练习，加深对 HTML5 标签和 API 的理解
3. 特别关注语义化标签的使用，这是现代网页开发的基础
4. 尝试使用 Web API 实现一些交互功能，巩固所学知识

## 10. 延伸阅读 | Further Reading

- [MDN HTML 文档](https://developer.mozilla.org/en-US/docs/Web/HTML) <!-- nofollow -->
- [HTML5 官方规范](https://html.spec.whatwg.org/) <!-- nofollow -->
- 本仓库：[06-CSS](../06-CSS/README.md)、[08-Javascript](../08-Javascript/README.md)

## 11. 贡献指南 | Contribution Guide

- 新增标签说明需包含：语法、属性、浏览器兼容性、示例
- 推荐使用 `<section>`, `<article>`, `<aside>` 等语义化容器
- 提供完整的 HTML 示例代码

## 12. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：1839243393
- 欢迎提意见交流或反馈问题

## 13. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- **2026-05-02**
  - 全面检查项目结构，确保一致性

- **2026-04-18**
  - 完成 GitHub 仓库 3.0 结构优化规划，统一文件命名规范，优化目录结构，升级为 v3.0.0

- **2026-04-06**
  - 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.1 ~ v1.0.2

- **2026-04-05**
  - 初始化 HTML5 核心标签与 API 笔记

- **2026-10-04**
  - 更新优化 README.md 文件，统一结构和格式
