<a id="title"></a>
# CSS3-Grid 网格布局

> fanquanpp 的个人学习笔记

最新更新时间：2026-04-05

<a id="1"></a>
## 1 . Grid 概述

CSS Grid Layout（网格布局）是 CSS3 中引入的一种二维布局系统，它允许你创建复杂的网格结构，同时控制行和列的布局。Grid 布局是目前最强大的 CSS 布局系统，能够处理各种复杂的布局需求。

<a id="1.1"></a>
### 1.1 Grid 的优势
- **二维布局**：同时控制行和列的布局
- **精确控制**：能够精确控制网格项的位置和大小
- **响应式**：易于实现响应式设计
- **灵活性**：支持复杂的布局模式

<a id="2"></a>
## 2 . 基本概念

<a id="2.1"></a>
### 2.1 Grid 容器与 Grid 项目
- **Grid 容器**：应用了`display: grid`或`display: inline-grid`的元素
- **Grid 项目**：Grid 容器的直接子元素

<a id="2.2"></a>
### 2.2 网格线与网格轨道
- **网格线**：构成网格的水平线和垂直线
- **网格轨道**：两条相邻网格线之间的空间，包括行轨道和列轨道

<a id="2.3"></a>
### 2.3 网格单元格与网格区域
- **网格单元格**：网格中的最小单位，由相邻的行线和列线围成
- **网格区域**：由多个网格单元格组成的矩形区域

<a id="3"></a>
## 3 . Grid 容器属性

<a id="3.1"></a>
### 3.1 display

```css
/* 定义 Grid 容器 */
.container {
  display: grid; /* 块级 Grid 容器 */
  /* 或 */
  display: inline-grid; /* 内联 Grid 容器 */
}
```

<a id="3.2"></a>
### 3.2 grid-template-columns 与 grid-template-rows

```css
/* 定义列和行的大小 */
.container {
  /* 定义 3 列，宽度分别为 100px、200px 和 1fr */
  grid-template-columns: 100px 200px 1fr;
  
  /* 定义 2 行，高度分别为 100px 和 200px */
  grid-template-rows: 100px 200px;
  
  /* 使用 repeat()函数 */
  grid-template-columns: repeat(3, 1fr); /* 3 列，每列 1fr */
  
  /* 使用 auto-fill 和 auto-fit */
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); /* 自动填充，最小宽度 200px */
}
```

<a id="3.3"></a>
### 3.3 grid-template-areas

```css
/* 定义网格区域 */
.container {
  grid-template-areas: 
    "header header header"
    "sidebar main main"
    "footer footer footer";
}

/* 为项目分配区域 */
.header {
  grid-area: header;
}

.sidebar {
  grid-area: sidebar;
}

.main {
  grid-area: main;
}

.footer {
  grid-area: footer;
}
```

<a id="3.4"></a>
### 3.4 grid-template

```css
/* grid-template-columns、grid-template-rows 和 grid-template-areas 的简写 */
.container {
  grid-template: 
    "header header header" 100px
    "sidebar main main" 200px
    "footer footer footer" 50px
    / 200px 1fr 1fr;
}
```

<a id="3.5"></a>
### 3.5 column-gap、row-gap 和 gap

```css
/* 定义列间距和行间距 */
.container {
  column-gap: 20px; /* 列间距 */
  row-gap: 10px; /* 行间距 */
  
  /* 简写 */
  gap: 10px 20px; /* 行间距 列间距 */
  gap: 10px; /* 行间距和列间距相同 */
}
```

<a id="3.6"></a>
### 3.6 justify-content

```css
/* 定义网格在容器中的水平对齐方式 */
.container {
  justify-content: stretch; /* 默认，拉伸填充 */
  /* 或 */
  justify-content: start; /* 左对齐 */
  /* 或 */
  justify-content: end; /* 右对齐 */
  /* 或 */
  justify-content: center; /* 居中对齐 */
  /* 或 */
  justify-content: space-between; /* 两端对齐，列之间的间隔相等 */
  /* 或 */
  justify-content: space-around; /* 每列两侧的间隔相等 */
  /* 或 */
  justify-content: space-evenly; /* 列之间的间隔相等 */
}
```

<a id="3.7"></a>
### 3.7 align-content

```css
/* 定义网格在容器中的垂直对齐方式 */
.container {
  align-content: stretch; /* 默认，拉伸填充 */
  /* 或 */
  align-content: start; /* 顶部对齐 */
  /* 或 */
  align-content: end; /* 底部对齐 */
  /* 或 */
  align-content: center; /* 居中对齐 */
  /* 或 */
  align-content: space-between; /* 两端对齐，行之间的间隔相等 */
  /* 或 */
  align-content: space-around; /* 每行两侧的间隔相等 */
  /* 或 */
  align-content: space-evenly; /* 行之间的间隔相等 */
}
```

<a id="3.8"></a>
### 3.8 justify-items

```css
/* 定义网格项在单元格中的水平对齐方式 */
.container {
  justify-items: stretch; /* 默认，拉伸填充 */
  /* 或 */
  justify-items: start; /* 左对齐 */
  /* 或 */
  justify-items: end; /* 右对齐 */
  /* 或 */
  justify-items: center; /* 居中对齐 */
  /* 或 */
  justify-items: baseline; /* 以项目的基线对齐 */
}
```

<a id="3.9"></a>
### 3.9 align-items

```css
/* 定义网格项在单元格中的垂直对齐方式 */
.container {
  align-items: stretch; /* 默认，拉伸填充 */
  /* 或 */
  align-items: start; /* 顶部对齐 */
  /* 或 */
  align-items: end; /* 底部对齐 */
  /* 或 */
  align-items: center; /* 居中对齐 */
  /* 或 */
  align-items: baseline; /* 以项目的基线对齐 */
}
```

<a id="3.10"></a>
### 3.10 place-content

```css
/* justify-content 和 align-content 的简写 */
.container {
  place-content: center center; /* 垂直居中 水平居中 */
}
```

<a id="3.11"></a>
### 3.11 place-items

```css
/* justify-items 和 align-items 的简写 */
.container {
  place-items: center center; /* 垂直居中 水平居中 */
}
```

<a id="4"></a>
## 4 . Grid 项目属性

<a id="4.1"></a>
### 4.1 grid-column-start、grid-column-end、grid-row-start 和 grid-row-end

```css
/* 定义项目的位置 */
.item {
  grid-column-start: 1; /* 起始列线 */
  grid-column-end: 3; /* 结束列线 */
  grid-row-start: 1; /* 起始行线 */
  grid-row-end: 2; /* 结束行线 */
  
  /* 使用 span */
  grid-column-start: 1;
  grid-column-end: span 2; /* 跨越 2 列 */
}
```

<a id="4.2"></a>
### 4.2 grid-column 和 grid-row

```css
/* grid-column-start/end 和 grid-row-start/end 的简写 */
.item {
  grid-column: 1 / 3; /* 起始列线 / 结束列线 */
  grid-row: 1 / 2; /* 起始行线 / 结束行线 */
  
  /* 使用 span */
  grid-column: 1 / span 2; /* 起始列线 / 跨越 2 列 */
}
```

<a id="4.3"></a>
### 4.3 grid-area

```css
/* 定义项目的网格区域 */
.item {
  grid-area: header; /* 引用 grid-template-areas 中定义的区域 */
  
  /* 或使用行列线 */
  grid-area: 1 / 1 / 2 / 4; /* 行起始 / 列起始 / 行结束 / 列结束 */
}
```

<a id="4.4"></a>
### 4.4 justify-self

```css
/* 定义单个项目在单元格中的水平对齐方式，覆盖容器的 justify-items */
.item {
  justify-self: stretch; /* 默认，继承容器的 justify-items */
  /* 或 */
  justify-self: start; /* 左对齐 */
  /* 或 */
  justify-self: end; /* 右对齐 */
  /* 或 */
  justify-self: center; /* 居中对齐 */
  /* 或 */
  justify-self: baseline; /* 以项目的基线对齐 */
}
```

<a id="4.5"></a>
### 4.5 align-self

```css
/* 定义单个项目在单元格中的垂直对齐方式，覆盖容器的 align-items */
.item {
  align-self: stretch; /* 默认，继承容器的 align-items */
  /* 或 */
  align-self: start; /* 顶部对齐 */
  /* 或 */
  align-self: end; /* 底部对齐 */
  /* 或 */
  align-self: center; /* 居中对齐 */
  /* 或 */
  align-self: baseline; /* 以项目的基线对齐 */
}
```

<a id="4.6"></a>
### 4.6 place-self

```css
/* justify-self 和 align-self 的简写 */
.item {
  place-self: center center; /* 垂直居中 水平居中 */
}
```

<a id="5"></a>
## 5 . 常见布局模式

<a id="5.1"></a>
### 5.1 基本网格布局

```css
/* 3x3 网格 */
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(3, 100px);
  gap: 10px;
}
```

<a id="5.2"></a>
### 5.2 响应式网格

```css
/* 响应式网格，根据屏幕宽度调整列数 */
.container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 20px;
}
```

<a id="5.3"></a>
### 5.3 复杂布局

```css
/* 复杂的页面布局 */
.container {
  display: grid;
  grid-template-areas: 
    "header header header"
    "sidebar main ads"
    "footer footer footer";
  grid-template-columns: 200px 1fr 200px;
  grid-template-rows: 100px 1fr 50px;
  gap: 10px;
  height: 100vh;
}
```

<a id="5.4"></a>
### 5.4 卡片布局

```css
/* 卡片网格布局 */
.container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 20px;
}

.card {
  background-color: #f0f0f0;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
```

<a id="6"></a>
## 6 . 浏览器兼容性

<a id="6.1"></a>
### 6.1 浏览器支持
- **现代浏览器**：Chrome, Firefox, Safari, Edge 都支持 Grid 布局
- **IE11**：部分支持，需要使用旧的语法

<a id="6.2"></a>
### 6.2 前缀

```css
/* 旧版本浏览器需要使用前缀 */
.container {
  display: -ms-grid;
  display: grid;
  
  -ms-grid-columns: 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr;
  
  -ms-grid-rows: 100px 200px;
  grid-template-rows: 100px 200px;
}
```

<a id="7"></a>
## 7 . 最佳实践

<a id="7.1"></a>
### 7.1 性能优化
- **避免过度使用嵌套 Grid**：过多的嵌套会影响性能
- **合理使用 grid-template-areas**：对于复杂布局，使用 grid-template-areas 可以提高代码可读性
- **使用简写属性**：使用简写属性减少代码量

<a id="7.2"></a>
### 7.2 常见问题与解决方案

**问题 1：IE11 中的 Grid 布局问题**
- **解决方案**：使用旧的语法，或使用 autoprefixer 工具

**问题 2：Grid 项目溢出**
- **解决方案**：设置适当的 grid-template-columns 和 grid-template-rows，或使用 overflow 属性

**问题 3：不同浏览器的表现差异**
- **解决方案**：测试不同浏览器，使用前缀和兼容性技巧

<a id="8"></a>
## 8 . 示例代码

<a id="8.1"></a>
### 8.1 基本 Grid 布局

```html
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
  <div class="item">Item 4</div>
  <div class="item">Item 5</div>
  <div class="item">Item 6</div>
</div>

<style>
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(2, 100px);
  gap: 10px;
  padding: 20px;
  background-color: #f0f0f0;
}

.item {
  background-color: #3498db;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}
</style>
```

<a id="8.2"></a>
### 8.2 响应式 Grid 布局

```html
<div class="container">
  <div class="card">Card 1</div>
  <div class="card">Card 2</div>
  <div class="card">Card 3</div>
  <div class="card">Card 4</div>
  <div class="card">Card 5</div>
  <div class="card">Card 6</div>
</div>

<style>
.container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 20px;
  padding: 20px;
}

.card {
  background-color: #f0f0f0;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  text-align: center;
}

/* 响应式调整 */
@media (max-width: 768px) {
  .container {
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 15px;
  }
}

@media (max-width: 480px) {
  .container {
    grid-template-columns: 1fr;
    gap: 10px;
  }
}
</style>
```

<a id="8.3"></a>
### 8.3 复杂页面布局

```html
<div class="container">
  <header class="header">Header</header>
  <aside class="sidebar">Sidebar</aside>
  <main class="main">Main Content</main>
  <aside class="ads">Ads</aside>
  <footer class="footer">Footer</footer>
</div>

<style>
.container {
  display: grid;
  grid-template-areas: 
    "header header header"
    "sidebar main ads"
    "footer footer footer";
  grid-template-columns: 200px 1fr 200px;
  grid-template-rows: 100px 1fr 50px;
  gap: 10px;
  height: 100vh;
  padding: 10px;
  box-sizing: border-box;
}

.header {
  grid-area: header;
  background-color: #3498db;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}

.sidebar {
  grid-area: sidebar;
  background-color: #2ecc71;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}

.main {
  grid-area: main;
  background-color: #f39c12;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}

.ads {
  grid-area: ads;
  background-color: #9b59b6;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}

.footer {
  grid-area: footer;
  background-color: #34495e;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 5px;
}

/* 响应式调整 */
@media (max-width: 992px) {
  .container {
    grid-template-areas: 
      "header header"
      "sidebar main"
      "ads footer";
    grid-template-columns: 200px 1fr;
    grid-template-rows: 100px 1fr 50px;
  }
}

@media (max-width: 768px) {
  .container {
    grid-template-areas: 
      "header"
      "sidebar"
      "main"
      "ads"
      "footer";
    grid-template-columns: 1fr;
    grid-template-rows: 100px 100px 1fr 100px 50px;
  }
}
</style>
```

<a id="9"></a>
## 9 . 总结

CSS Grid Layout 是一种强大的二维布局系统，它提供了一种更灵活、更直观的方式来布局网页元素。通过掌握 Grid 的核心概念和属性，你可以创建出更加复杂、响应式的布局。

<a id="9.1"></a>
### 9.1 核心要点
- **Grid 容器**：应用`display: grid`的元素
- **Grid 项目**：Grid 容器的直接子元素
- **网格线**：构成网格的水平线和垂直线
- **网格轨道**：两条相邻网格线之间的空间
- **网格单元格**：网格中的最小单位
- **网格区域**：由多个网格单元格组成的矩形区域

<a id="9.2"></a>
### 9.2 应用场景
- **复杂页面布局**：轻松实现头部、侧边栏、主内容区和页脚的布局
- **卡片网格**：创建响应式的卡片网格
- **仪表板**：布局复杂的数据展示界面
- **响应式设计**：根据屏幕尺寸自动调整布局
- **等宽列布局**：创建均匀分布的列

通过不断实践和应用，你将能够熟练使用 Grid 布局，创建出更加美观、灵活的网页布局。