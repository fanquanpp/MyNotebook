<a id="title"></a>
# HTML5 核心知识点

<a id="1"></a>
## 1 . HTML5 概述

HTML5 是万维网的核心标记语言，用于构建网页结构。它是 HTML 的最新版本，于 2014 年 10 月发布，引入了一系列新特性和改进，使网页开发更加现代化和功能丰富。

<a id="1.1"></a>
### 1.1 HTML5 的核心特点
- **语义化标签**：提供了更具语义的标签，如`<header>`、`<nav>`、`<main>`等
- **多媒体支持**：原生支持音频和视频播放
- **表单增强**：新增了多种表单控件和验证功能
- **Canvas 绘图**：提供了 2D 绘图 API
- **SVG 支持**：原生支持可缩放矢量图形
- **地理定位**：支持获取用户地理位置
- **本地存储**：提供了 localStorage 和 sessionStorage
- **Web Workers**：支持后台脚本运行
- **WebSocket**：支持实时通信

<a id="2"></a>
## 2 . HTML5 基本结构

<a id="2.1"></a>
### 2.1 文档类型声明

```html
<!DOCTYPE html>
```

这是 HTML5 的文档类型声明，告诉浏览器这是一个 HTML5 文档。

<a id="2.2"></a>
### 2.2 基本骨架

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
- `<head>`：头部，包含元数据
- `<meta charset="UTF-8">`：设置字符编码
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`：设置视口，用于响应式设计
- `<title>`：设置页面标题
- `<body>`：主体，包含页面内容

<a id="3"></a>
## 3 . HTML5 语义化标签

<a id="3.1"></a>
### 3.1 常用语义化标签

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

<a id="3.2"></a>
### 3.2 语义化布局示例

```html
<header>
    <h1>网站标题</h1>
    <nav>
        <ul>
            <li><a href="#">首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </nav>
</header>
<main>
    <section>
        <h2>新闻资讯</h2>
        <article>
            <h3>新闻标题 1</h3>
            <p>新闻内容 1...</p>
            <time datetime="2023-10-01">2023 年 10 月 1 日</time>
        </article>
        <article>
            <h3>新闻标题 2</h3>
            <p>新闻内容 2...</p>
            <time datetime="2023-10-02">2023 年 10 月 2 日</time>
        </article>
    </section>
    <aside>
        <h3>侧边栏</h3>
        <p>侧边栏内容...</p>
    </aside>
</main>
<footer>
    <p>版权信息 © 2023</p>
</footer>
```

<a id="4"></a>
## 4 . HTML5 表单增强

<a id="4.1"></a>
### 4.1 新的表单输入类型

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

<a id="4.2"></a>
### 4.2 新的表单属性

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

<a id="4.3"></a>
### 4.3 表单验证

```html
<form action="submit.php" method="post">
    <div>
        <label for="email">邮箱：</label>
        <input type="email" id="email" name="email" required placeholder="请输入邮箱">
    </div>
    <div>
        <label for="password">密码：</label>
        <input type="password" id="password" name="password" required minlength="6">
    </div>
    <div>
        <label for="age">年龄：</label>
        <input type="number" id="age" name="age" min="18" max="100">
    </div>
    <div>
        <label for="phone">电话：</label>
        <input type="tel" id="phone" name="phone" pattern="^1[3-9]\d{9}$" placeholder="请输入手机号码">
    </div>
    <div>
        <label for="color">颜色：</label>
        <input type="color" id="color" name="color" value="#ff0000">
    </div>
    <div>
        <label for="date">日期：</label>
        <input type="date" id="date" name="date">
    </div>
    <button type="submit">提交</button>
</form>
```

<a id="5"></a>
## 5 . HTML5 多媒体

<a id="5.1"></a>
### 5.1 音频

```html
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    <source src="audio.ogg" type="audio/ogg">
    您的浏览器不支持音频标签。
</audio>
```

**属性**：
- `src`：音频文件路径
- `controls`：显示控制按钮
- `autoplay`：自动播放
- `loop`：循环播放
- `muted`：静音
- `preload`：预加载

<a id="5.2"></a>
### 5.2 视频

```html
<video controls width="640" height="360">
    <source src="video.mp4" type="video/mp4">
    <source src="video.webm" type="video/webm">
    您的浏览器不支持视频标签。
</video>
```

**属性**：
- `src`：视频文件路径
- `controls`：显示控制按钮
- `autoplay`：自动播放
- `loop`：循环播放
- `muted`：静音
- `preload`：预加载
- `width`：视频宽度
- `height`：视频高度

<a id="6"></a>
## 6 . HTML5 Canvas

Canvas 是 HTML5 中用于绘制图形的元素，通过 JavaScript API 可以绘制各种图形。

<a id="6.1"></a>
### 6.1 基本用法

```html
<canvas id="myCanvas" width="400" height="300"></canvas>

<script>
    var canvas = document.getElementById("myCanvas");
    var ctx = canvas.getContext("2d");
    
    // 绘制矩形
    ctx.fillStyle = "#ff0000";
    ctx.fillRect(50, 50, 100, 100);
    
    // 绘制圆形
    ctx.beginPath();
    ctx.arc(200, 150, 50, 0, 2 * Math.PI);
    ctx.fillStyle = "#00ff00";
    ctx.fill();
    
    // 绘制文本
    ctx.font = "30px Arial";
    ctx.fillStyle = "#0000ff";
    ctx.fillText("Hello Canvas", 50, 250);
</script>
```

<a id="6.2"></a>
### 6.2 常用 Canvas API

- `getContext()`：获取绘图上下文
- `fillRect()`：绘制填充矩形
- `strokeRect()`：绘制矩形边框
- `clearRect()`：清除矩形区域
- `beginPath()`：开始路径
- `moveTo()`：移动到指定点
- `lineTo()`：绘制直线
- `arc()`：绘制圆弧
- `fill()`：填充路径
- `stroke()`：绘制路径边框
- `fillText()`：绘制填充文本
- `strokeText()`：绘制文本边框
- `drawImage()`：绘制图像

<a id="7"></a>
## 7 . HTML5 SVG

SVG（Scalable Vector Graphics）是一种用于描述二维矢量图形的 XML 语言，HTML5 原生支持 SVG。

<a id="7.1"></a>
### 7.1 基本用法

```html
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
    <!-- 绘制矩形 -->
    <rect x="50" y="50" width="100" height="100" fill="#ff0000" />
    
    <!-- 绘制圆形 -->
    <circle cx="200" cy="150" r="50" fill="#00ff00" />
    
    <!-- 绘制椭圆 -->
    <ellipse cx="300" cy="150" rx="40" ry="60" fill="#0000ff" />
    
    <!-- 绘制直线 -->
    <line x1="50" y1="200" x2="350" y2="200" stroke="#000000" stroke-width="2" />
    
    <!-- 绘制文本 -->
    <text x="50" y="250" font-size="24" fill="#000000">Hello SVG</text>
</svg>
```

<a id="7.2"></a>
### 7.2 常用 SVG 元素

- `<rect>`：矩形
- `<circle>`：圆形
- `<ellipse>`：椭圆
- `<line>`：直线
- `<polyline>`：折线
- `<polygon>`：多边形
- `<path>`：路径
- `<text>`：文本
- `<image>`：图像
- `<g>`：分组
- `<defs>`：定义可重用元素
- `<use>`：使用定义的元素

<a id="8"></a>
## 8 . HTML5 本地存储

<a id="8.1"></a>
### 8.1 localStorage

localStorage 用于在浏览器中存储持久化数据，数据不会过期，除非手动删除。

```javascript
// 存储数据
localStorage.setItem("username", "张三");

// 获取数据
var username = localStorage.getItem("username");

// 删除数据
localStorage.removeItem("username");

// 清空所有数据
localStorage.clear();
```

<a id="8.2"></a>
### 8.2 sessionStorage

sessionStorage 用于在浏览器中存储会话数据，当会话结束时数据会被清除。

```javascript
// 存储数据
sessionStorage.setItem("token", "abc123");

// 获取数据
var token = sessionStorage.getItem("token");

// 删除数据
sessionStorage.removeItem("token");

// 清空所有数据
sessionStorage.clear();
```

<a id="9"></a>
## 9 . HTML5 地理定位

HTML5 提供了地理定位 API，可以获取用户的地理位置。

```javascript
if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;
        console.log("纬度：" + latitude + "，经度：" + longitude);
    }, function(error) {
        console.error("获取地理位置失败：" + error.message);
    });
} else {
    console.error("您的浏览器不支持地理定位");
}
```

<a id="10"></a>
## 10 . HTML5 Web Workers

Web Workers 允许在后台线程中运行 JavaScript 代码，避免阻塞主线程。

<a id="10.1"></a>
### 10.1 创建 Worker

```javascript
// main.js
var worker = new Worker("worker.js");

// 发送消息给 Worker
worker.postMessage("Hello Worker");

// 接收 Worker 的消息
worker.onmessage = function(event) {
    console.log("收到 Worker 的消息：" + event.data);
};

// 处理错误
worker.onerror = function(error) {
    console.error("Worker 错误：" + error.message);
};
```

<a id="10.2"></a>
### 10.2 Worker 脚本

```javascript
// worker.js
// 接收主线程的消息
self.onmessage = function(event) {
    console.log("收到主线程的消息：" + event.data);
    
    // 执行耗时操作
    var result = 0;
    for (var i = 0; i < 1000000000; i++) {
        result += i;
    }
    
    // 发送消息给主线程
    self.postMessage("计算结果：" + result);
};
```

<a id="11"></a>
## 11 . HTML5 WebSocket

WebSocket 提供了一种在单个 TCP 连接上进行全双工通信的协议。

```javascript
// 创建 WebSocket 连接
var socket = new WebSocket("ws://localhost:8080");

// 连接建立时
socket.onopen = function(event) {
    console.log("WebSocket 连接已建立");
    socket.send("Hello WebSocket");
};

// 接收消息时
socket.onmessage = function(event) {
    console.log("收到消息：" + event.data);
};

// 连接关闭时
socket.onclose = function(event) {
    console.log("WebSocket 连接已关闭");
};

// 发生错误时
socket.onerror = function(error) {
    console.error("WebSocket 错误：" + error);
};
```

<a id="12"></a>
## 12 . HTML5 响应式设计

<a id="12.1"></a>
### 12.1 视口设置

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

<a id="12.2"></a>
### 12.2 媒体查询

```css
/* 屏幕宽度小于 768px 时 */
@media (max-width: 767px) {
    .container {
        width: 100%;
    }
    
    .sidebar {
        display: none;
    }
}

/* 屏幕宽度在 768px 到 1199px 之间时 */
@media (min-width: 768px) and (max-width: 1199px) {
    .container {
        width: 90%;
        margin: 0 auto;
    }
}

/* 屏幕宽度大于 1200px 时 */
@media (min-width: 1200px) {
    .container {
        width: 1140px;
        margin: 0 auto;
    }
}
```

<a id="12.3"></a>
### 12.3 流体布局

```css
.container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    box-sizing: border-box;
}

.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    box-sizing: border-box;
}

@media (max-width: 767px) {
    .column {
        width: 100%;
        float: none;
    }
}
```

<a id="13"></a>
## 13 . HTML5 最佳实践

<a id="13.1"></a>
### 13.1 代码规范

- **语义化**：使用语义化标签构建页面结构
- **简洁**：保持 HTML 代码简洁明了
- **缩进**：使用适当的缩进提高代码可读性
- **注释**：添加必要的注释说明
- **大小写**：HTML 标签使用小写
- **引号**：属性值使用双引号

<a id="13.2"></a>
### 13.2 性能优化

- **减少 HTTP 请求**：合并 CSS 和 JavaScript 文件
- **压缩代码**：压缩 HTML、CSS 和 JavaScript 代码
- **延迟加载**：延迟加载非关键资源
- **优化图片**：使用适当大小和格式的图片
- **使用 CDN**：使用内容分发网络加速资源加载

<a id="13.3"></a>
### 13.3 可访问性

- **alt 属性**：为图片添加 alt 属性
- **label 标签**：为表单元素添加 label 标签
- **ARIA 属性**：使用 ARIA 属性增强可访问性
- **键盘导航**：确保页面可以通过键盘导航
- **颜色对比度**：确保文本和背景的对比度符合标准

<a id="13.4"></a>
### 13.4 兼容性

- **特性检测**：使用特性检测而不是浏览器检测
- **polyfill**：使用 polyfill 填补浏览器特性差异
- **优雅降级**：在不支持某些特性的浏览器中提供替代方案

<a id="14"></a>
## 14 . 常见问题与解决方案

<a id="14.1"></a>
### 14.1 语义化标签兼容性

**问题**：旧浏览器不支持 HTML5 语义化标签
**解决方案**：
- 在 CSS 中为语义化标签添加`display: block`
- 使用 HTML5 Shiv 库

<a id="14.2"></a>
### 14.2 表单验证

**问题**：表单验证在不同浏览器中表现不一致
**解决方案**：
- 使用 HTML5 内置验证
- 结合 JavaScript 进行自定义验证

<a id="14.3"></a>
### 14.3 响应式设计

**问题**：在不同设备上布局不一致
**解决方案**：
- 使用媒体查询
- 采用流体布局
- 使用相对单位

<a id="14.4"></a>
### 14.4 性能问题

**问题**：页面加载缓慢
**解决方案**：
- 优化图片
- 减少 HTTP 请求
- 使用缓存
- 延迟加载非关键资源

<a id="15"></a>
## 15 . 总结

HTML5 是现代网页开发的基础，它提供了丰富的功能和 API，使网页开发更加现代化和功能丰富。通过掌握 HTML5 的核心知识点，你可以创建出更加语义化、交互性强、响应式的网页。

<a id="15.1"></a>
### 15.1 核心要点

- **语义化标签**：使用语义化标签构建页面结构
- **表单增强**：利用新的表单控件和验证功能
- **多媒体支持**：原生支持音频和视频
- **Canvas 和 SVG**：用于绘制图形
- **本地存储**：在浏览器中存储数据
- **地理定位**：获取用户地理位置
- **Web Workers**：在后台线程运行代码
- **WebSocket**：实现实时通信
- **响应式设计**：适应不同设备尺寸

<a id="15.2"></a>
### 15.2 学习建议

- **实践**：通过实际项目练习 HTML5
- **理解**：掌握 HTML5 的核心概念和 API
- **规范**：遵循 HTML5 最佳实践
- **兼容性**：考虑不同浏览器的兼容性
- **持续学习**：关注 HTML5 的新特性和发展

通过不断学习和实践，你将能够熟练使用 HTML5，创建出更加优秀的网页。