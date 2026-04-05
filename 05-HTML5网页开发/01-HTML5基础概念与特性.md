<a id="title"></a>
# HTML5 基础概念与特性

> fanquanpp 的个人学习笔记

最新更新时间：2026-04-05

<a id="1"></a>
## 1 目录

- [1. HTML5 概述](#1-html5-概述)
- [2. HTML5 核心特点](#2-html5-核心特点)
- [3. HTML5 基本结构](#3-html5-基本结构)
    - [3.1 文档类型声明](#31-文档类型声明)
    - [3.2 基本骨架](#32-基本骨架)
    - [3.3 元数据设置](#33-元数据设置)
- [4. HTML5 语义化标签](#4-html5-语义化标签)
- [5. HTML5 表单增强](#5-html5-表单增强)
- [6. HTML5 多媒体支持](#6-html5-多媒体支持)
- [7. HTML5 高级特性](#7-html5-高级特性)
- [8. 总结](#8-总结)

<a id="2"></a>
## 2 . HTML5 概述

HTML5 是万维网的核心标记语言，用于构建网页结构。它是 HTML 的最新版本，于 2014 年 10 月发布，引入了一系列新特性和改进，使网页开发更加现代化和功能丰富。

HTML5 的主要目标是：
- 提供更加语义化的标签
- 增强表单功能
- 原生支持多媒体
- 提供更多的 API 支持
- 改善用户体验

<a id="3"></a>
## 3 . HTML5 核心特点

| 特点 | 描述 |
|------|------|
| **语义化标签** | 提供了更具语义的标签，如 `<header>`、`<nav>`、`<main>` 等，使网页结构更加清晰 |
| **多媒体支持** | 原生支持音频和视频播放，无需插件 |
| **表单增强** | 新增了多种表单控件和验证功能，如 `email`、`url`、`date` 等 |
| **Canvas 绘图** | 提供了 2D 绘图 API，可用于绘制图形、动画等 |
| **SVG 支持** | 原生支持可缩放矢量图形，适合绘制图标、图表等 |
| **地理定位** | 支持获取用户地理位置，可用于位置相关的应用 |
| **本地存储** | 提供了 `localStorage` 和 `sessionStorage`，可在浏览器中存储数据 |
| **Web Workers** | 支持后台脚本运行，避免阻塞主线程 |
| **WebSocket** | 支持实时通信，适合聊天、游戏等应用 |
| **响应式设计** | 支持响应式布局，适应不同设备尺寸 |

<a id="4"></a>
## 4 . HTML5 基本结构

<a id="4.1"></a>
### 4.1 文档类型声明

```html
<!DOCTYPE html>
```

这是 HTML5 的文档类型声明，告诉浏览器这是一个 HTML5 文档。与之前的 HTML 版本相比，HTML5 的文档类型声明更加简洁。

<a id="4.2"></a>
### 4.2 基本骨架

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>页面标题</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- 页面内容 -->
    <script src="script.js"></script>
</body>
</html>
```

**说明**：
- `<html>`：根元素，包含整个 HTML 文档
- `<head>`：头部，包含文档的元数据
- `<meta charset="UTF-8">`：设置字符编码为 UTF-8
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`：设置视口，用于响应式设计
- `<title>`：设置页面标题
- `<body>`：主体，包含页面的主要内容

<a id="4.3"></a>
### 4.3 元数据设置

```html
<!-- 字符编码 -->
<meta charset="UTF-8">

<!-- 视口设置 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 页面描述 -->
<meta name="description" content="这是一个示例网站，介绍 HTML5 的基本特性">

<!-- 关键词 -->
<meta name="keywords" content="HTML5, CSS3, JavaScript, 前端开发">

<!-- 作者 -->
<meta name="author" content="fanquanpp">

<!--  robots -->
<meta name="robots" content="index, follow">

<!-- 刷新 -->
<meta http-equiv="refresh" content="5; url=https://www.example.com">
```

<a id="5"></a>
## 5 . HTML5 语义化标签

HTML5 引入了一系列语义化标签，使网页结构更加清晰，有利于搜索引擎优化和无障碍访问。

| 标签 | 描述 |
| :--- | :--- |
| `<header>` | 页面或区块的头部 |
| `<nav>` | 导航链接区域 |
| `<main>` | 页面的主要内容 |
| `<section>` | 文档中的区块 |
| `<article>` | 独立的内容区块 |
| `<aside>` | 侧边栏或附加内容 |
| `<footer>` | 页面或区块的底部 |
| `<figure>` | 图表、图片等媒体内容 |
| `<figcaption>` | 媒体内容的标题 |
| `<time>` | 日期或时间 |
| `<mark>` | 标记的文本 |
| `<progress>` | 进度条 |
| `<meter>` | 度量衡 |

<a id="6"></a>
## 6 . HTML5 表单增强

HTML5 对表单进行了增强，添加了新的输入类型、属性和验证功能。

<a id="6.1"></a>
### 6.1 新的表单输入类型

| 输入类型 | 描述 |
| :--- | :--- |
| `email` | 电子邮件地址输入 |
| `url` | URL 输入 |
| `number` | 数字输入 |
| `range` | 滑块输入 |
| `date` | 日期输入 |
| `time` | 时间输入 |
| `datetime-local` | 本地日期时间输入 |
| `month` | 月份输入 |
| `week` | 周输入 |
| `color` | 颜色选择器 |
| `tel` | 电话输入 |
| `search` | 搜索输入 |

<a id="6.2"></a>
### 6.2 新的表单属性

| 属性 | 描述 |
| :--- | :--- |
| `placeholder` | 输入框的占位文本 |
| `required` | 必填字段 |
| `pattern` | 正则表达式验证 |
| `min` | 最小值 |
| `max` | 最大值 |
| `step` | 步长 |
| `autocomplete` | 自动完成 |
| `autofocus` | 自动聚焦 |
| `multiple` | 允许多个值 |
| `form` | 关联的表单 |

<a id="7"></a>
## 7 . HTML5 多媒体支持

HTML5 原生支持音频和视频播放，无需插件。

<a id="7.1"></a>
### 7.1 音频

```html
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    <source src="audio.ogg" type="audio/ogg">
    您的浏览器不支持音频标签。
</audio>
```

<a id="7.2"></a>
### 7.2 视频

```html
<video controls width="640" height="360">
    <source src="video.mp4" type="video/mp4">
    <source src="video.webm" type="video/webm">
    您的浏览器不支持视频标签。
</video>
```

<a id="8"></a>
## 8 . HTML5 高级特性

<a id="8.1"></a>
### 8.1 Canvas 绘图

Canvas 是 HTML5 中用于绘制图形的元素，通过 JavaScript API 可以绘制各种图形。

<a id="8.2"></a>
### 8.2 SVG 支持

SVG（Scalable Vector Graphics）是一种用于描述二维矢量图形的 XML 语言，HTML5 原生支持 SVG。

<a id="8.3"></a>
### 8.3 本地存储

- **localStorage**：用于在浏览器中存储持久化数据，数据不会过期
- **sessionStorage**：用于在浏览器中存储会话数据，当会话结束时数据会被清除

<a id="8.4"></a>
### 8.4 地理定位

HTML5 提供了地理定位 API，可以获取用户的地理位置。

<a id="8.5"></a>
### 8.5 Web Workers

Web Workers 允许在后台线程中运行 JavaScript 代码，避免阻塞主线程。

<a id="8.6"></a>
### 8.6 WebSocket

WebSocket 提供了一种在单个 TCP 连接上进行全双工通信的协议。

<a id="9"></a>
## 9 . 总结

HTML5 是现代网页开发的基础，它提供了丰富的功能和 API，使网页开发更加现代化和功能丰富。通过掌握 HTML5 的基础概念和核心特性，你可以创建出更加语义化、交互性强、响应式的网页。

- **语义化标签**：使用语义化标签构建清晰的页面结构
- **表单增强**：利用新的表单控件和验证功能提升用户体验
- **多媒体支持**：原生支持音频和视频，无需插件
- **高级特性**：Canvas、SVG、本地存储等功能扩展了网页的能力
- **响应式设计**：适应不同设备尺寸，提供更好的用户体验

HTML5 的出现极大地丰富了网页开发的可能性，为现代 web 应用提供了坚实的基础。

<a id="10"></a>
## 10 . 版本历史

| 日期 | 版本 | 变更内容 | 变更人 |
|------|------|----------|--------|
| 2026-04-05 | 1.0 | 初始创建 | fanquanpp |