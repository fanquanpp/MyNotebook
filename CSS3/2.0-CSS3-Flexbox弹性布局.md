<a id="title"></a>
# CSS3-Flexbox 弹性布局

> fanquanpp 的个人学习笔记

最新更新时间：2026-04-05

<a id="1"></a>
## 1 . Flexbox 概述

Flexbox（弹性盒模型）是 CSS3 中引入的一种新的布局模式，它提供了一种更灵活、更强大的方式来布局、对齐和分配容器中项目的空间，即使它们的大小是未知的或动态的。

<a id="1.1"></a>
### 1.1 Flexbox 的优势
- **一维布局**：适合处理一维布局（行或列）
- **灵活性**：能够自动调整项目的大小和位置
- **对齐控制**：提供了强大的对齐功能
- **响应式**：易于实现响应式设计

<a id="2"></a>
## 2 . 基本概念

<a id="2.1"></a>
### 2.1 Flex 容器与 Flex 项目
- **Flex 容器**：应用了`display: flex`或`display: inline-flex`的元素
- **Flex 项目**：Flex 容器的直接子元素

<a id="2.2"></a>
### 2.2 主轴与交叉轴
- **主轴**：Flex 项目排列的主要方向，默认为水平方向
- **交叉轴**：与主轴垂直的方向，默认为垂直方向

<a id="3"></a>
## 3 . Flex 容器属性

<a id="3.1"></a>
### 3.1 display

```css
/* 定义 Flex 容器 */
.container {
  display: flex; /* 块级 Flex 容器 */
  /* 或 */
  display: inline-flex; /* 内联 Flex 容器 */
}
```

<a id="3.2"></a>
### 3.2 flex-direction

```css
/* 定义主轴方向 */
.container {
  flex-direction: row; /* 默认，水平方向，从左到右 */
  /* 或 */
  flex-direction: row-reverse; /* 水平方向，从右到左 */
  /* 或 */
  flex-direction: column; /* 垂直方向，从上到下 */
  /* 或 */
  flex-direction: column-reverse; /* 垂直方向，从下到上 */
}
```

<a id="3.3"></a>
### 3.3 flex-wrap

```css
/* 定义是否换行 */
.container {
  flex-wrap: nowrap; /* 默认，不换行 */
  /* 或 */
  flex-wrap: wrap; /* 换行，第一行在上方 */
  /* 或 */
  flex-wrap: wrap-reverse; /* 换行，第一行在下方 */
}
```

<a id="3.4"></a>
### 3.4 flex-flow

```css
/* flex-direction 和 flex-wrap 的简写 */
.container {
  flex-flow: row wrap; /* 水平方向，换行 */
}
```

<a id="3.5"></a>
### 3.5 justify-content

```css
/* 定义项目在主轴上的对齐方式 */
.container {
  justify-content: flex-start; /* 默认，左对齐 */
  /* 或 */
  justify-content: flex-end; /* 右对齐 */
  /* 或 */
  justify-content: center; /* 居中 */
  /* 或 */
  justify-content: space-between; /* 两端对齐，项目之间的间隔相等 */
  /* 或 */
  justify-content: space-around; /* 每个项目两侧的间隔相等 */
  /* 或 */
  justify-content: space-evenly; /* 项目之间的间隔相等 */
}
```

<a id="3.6"></a>
### 3.6 align-items

```css
/* 定义项目在交叉轴上的对齐方式 */
.container {
  align-items: stretch; /* 默认，拉伸填充 */
  /* 或 */
  align-items: flex-start; /* 交叉轴起点对齐 */
  /* 或 */
  align-items: flex-end; /* 交叉轴终点对齐 */
  /* 或 */
  align-items: center; /* 交叉轴居中对齐 */
  /* 或 */
  align-items: baseline; /* 以项目的基线对齐 */
}
```

<a id="3.7"></a>
### 3.7 align-content

```css
/* 定义多行项目在交叉轴上的对齐方式 */
.container {
  align-content: stretch; /* 默认，拉伸填充 */
  /* 或 */
  align-content: flex-start; /* 交叉轴起点对齐 */
  /* 或 */
  align-content: flex-end; /* 交叉轴终点对齐 */
  /* 或 */
  align-content: center; /* 交叉轴居中对齐 */
  /* 或 */
  align-content: space-between; /* 两端对齐，行之间的间隔相等 */
  /* 或 */
  align-content: space-around; /* 每行两侧的间隔相等 */
}
```

<a id="4"></a>
## 4 . Flex 项目属性

<a id="4.1"></a>
### 4.1 order

```css
/* 定义项目的排列顺序，数值越小，排列越靠前 */
.item {
  order: 0; /* 默认值 */
  /* 或 */
  order: 1; /* 较大的数值会排到后面 */
  /* 或 */
  order: -1; /* 较小的数值会排到前面 */
}
```

<a id="4.2"></a>
### 4.2 flex-grow

```css
/* 定义项目的放大比例，默认为 0 */
.item {
  flex-grow: 0; /* 默认，不放大 */
  /* 或 */
  flex-grow: 1; /* 放大，占据剩余空间 */
  /* 或 */
  flex-grow: 2; /* 放大比例为 2 */
}
```

<a id="4.3"></a>
### 4.3 flex-shrink

```css
/* 定义项目的缩小比例，默认为 1 */
.item {
  flex-shrink: 1; /* 默认，空间不足时缩小 */
  /* 或 */
  flex-shrink: 0; /* 不缩小 */
  /* 或 */
  flex-shrink: 2; /* 缩小比例为 2 */
}
```

<a id="4.4"></a>
### 4.4 flex-basis

```css
/* 定义项目在主轴上的初始大小 */
.item {
  flex-basis: auto; /* 默认，根据内容大小 */
  /* 或 */
  flex-basis: 100px; /* 固定宽度 */
  /* 或 */
  flex-basis: 50%; /* 百分比宽度 */
}
```

<a id="4.5"></a>
### 4.5 flex

```css
/* flex-grow、flex-shrink 和 flex-basis 的简写 */
.item {
  flex: 0 1 auto; /* 默认值 */
  /* 或 */
  flex: 1; /* 相当于 flex: 1 1 0% */
  /* 或 */
  flex: 2 0 200px; /* 放大比例 2，不缩小，初始宽度 200px */
}
```

<a id="4.6"></a>
### 4.6 align-self

```css
/* 定义单个项目在交叉轴上的对齐方式，覆盖容器的 align-items */
.item {
  align-self: auto; /* 默认，继承容器的 align-items */
  /* 或 */
  align-self: flex-start; /* 交叉轴起点对齐 */
  /* 或 */
  align-self: flex-end; /* 交叉轴终点对齐 */
  /* 或 */
  align-self: center; /* 交叉轴居中对齐 */
  /* 或 */
  align-self: baseline; /* 以项目的基线对齐 */
  /* 或 */
  align-self: stretch; /* 拉伸填充 */
}
```

<a id="5"></a>
## 5 . 常见布局模式

<a id="5.1"></a>
### 5.1 居中布局

```css
/* 水平垂直居中 */
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}
```

<a id="5.2"></a>
### 5.2 两端对齐布局

```css
/* 两端对齐，中间自适应 */
.container {
  display: flex;
  justify-content: space-between;
}

.item {
  /* 固定宽度的项目 */
  width: 100px;
}

.item:nth-child(2) {
  /* 中间项目自适应 */
  flex: 1;
  margin: 0 10px;
}
```

<a id="5.3"></a>
### 5.3 等宽布局

```css
/* 所有项目等宽 */
.container {
  display: flex;
}

.item {
  flex: 1;
  margin: 0 5px;
}
```

<a id="5.4"></a>
### 5.4 响应式布局

```css
/* 响应式布局，根据屏幕宽度调整 */
.container {
  display: flex;
  flex-wrap: wrap;
}

.item {
  flex: 1 1 200px; /* 最小宽度 200px */
  margin: 10px;
}
```

<a id="6"></a>
## 6 . 浏览器兼容性

<a id="6.1"></a>
### 6.1 浏览器支持
- **现代浏览器**：Chrome, Firefox, Safari, Edge 都支持 Flexbox
- **IE11**：部分支持，需要使用旧的语法

<a id="6.2"></a>
### 6.2 前缀

```css
/* 旧版本浏览器需要使用前缀 */
.container {
  display: -webkit-flex; /* Safari */
  display: flex;
  
  -webkit-flex-direction: row;
  flex-direction: row;
  
  -webkit-justify-content: space-between;
  justify-content: space-between;
  
  -webkit-align-items: center;
  align-items: center;
}
```

<a id="7"></a>
## 7 . 最佳实践

<a id="7.1"></a>
### 7.1 性能优化
- **避免嵌套 Flex 容器**：过多的嵌套会影响性能
- **合理使用 flex 属性**：避免过度使用 flex-grow 和 flex-shrink
- **使用简写属性**：使用 flex 简写属性减少代码量

<a id="7.2"></a>
### 7.2 常见问题与解决方案

**问题 1：IE11 中的 flex 布局问题**
- **解决方案**：使用旧的语法，或使用 autoprefixer 工具

**问题 2：Flex 项目溢出**
- **解决方案**：设置适当的 flex-basis，或使用 overflow 属性

**问题 3：不同浏览器的表现差异**
- **解决方案**：测试不同浏览器，使用前缀和兼容性技巧

<a id="8"></a>
## 8 . 示例代码

<a id="8.1"></a>
### 8.1 基本 Flex 布局

```html
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
</div>

<style>
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
  background-color: #f0f0f0;
}

.item {
  flex: 1;
  padding: 20px;
  margin: 0 10px;
  background-color: #3498db;
  color: white;
  text-align: center;
}
</style>
```

<a id="8.2"></a>
### 8.2 响应式导航栏

```html
<nav class="navbar">
  <div class="logo">Logo</div>
  <ul class="nav-links">
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Services</a></li>
    <li><a href="#">Contact</a></li>
  </ul>
</nav>

<style>
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
  background-color: #333;
  color: white;
}

.nav-links {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav-links li {
  margin: 0 10px;
}

.nav-links a {
  color: white;
  text-decoration: none;
}

/* 响应式设计 */
@media (max-width: 768px) {
  .navbar {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .nav-links {
    flex-direction: column;
    width: 100%;
    margin-top: 10px;
  }
  
  .nav-links li {
    margin: 5px 0;
  }
}
</style>
```

<a id="9"></a>
## 9 . 总结

Flexbox 是一种强大的布局技术，它提供了一种更灵活、更直观的方式来布局网页元素。通过掌握 Flexbox 的核心概念和属性，你可以创建出更加复杂、响应式的布局。

<a id="9.1"></a>
### 9.1 核心要点
- **Flex 容器**：应用`display: flex`的元素
- **Flex 项目**：Flex 容器的直接子元素
- **主轴与交叉轴**：Flex 布局的两个方向
- **容器属性**：控制容器内项目的整体布局
- **项目属性**：控制单个项目的行为

<a id="9.2"></a>
### 9.2 应用场景
- **导航栏**：轻松实现导航项的对齐和分布
- **卡片布局**：创建响应式的卡片网格
- **表单**：灵活对齐表单元素
- **居中布局**：快速实现元素的水平垂直居中
- **响应式设计**：根据屏幕尺寸自动调整布局

通过不断实践和应用，你将能够熟练使用 Flexbox，创建出更加美观、灵活的网页布局。