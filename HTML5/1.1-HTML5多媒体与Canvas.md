<a id="title"></a>
# HTML5 多媒体与 Canvas

> fanquanpp 的个人学习笔记

最新更新时间：2026-04-05

<a id="1"></a>
## 1 目录

- [1. 多媒体概述](#1-多媒体概述)
- [2. 音频标签](#2-音频标签)
- [3. 视频标签](#3-视频标签)
- [4. Canvas 绘图](#4-canvas-绘图)
- [5. SVG 支持](#5-svg-支持)
- [6. 常见问题与解决方案](#6-常见问题与解决方案)
- [7. 最佳实践](#7-最佳实践)
- [8. 总结](#8-总结)

<a id="2"></a>
## 2 . 多媒体概述

HTML5 提供了原生的多媒体支持，无需插件即可播放音频和视频。同时，HTML5 还引入了 Canvas 元素，用于绘制图形、动画等。这些功能大大丰富了网页的表现力和交互性。

多媒体支持的主要特性：
- 原生音频和视频播放
- 支持多种格式
- 提供播放控制
- 可通过 JavaScript 控制
- Canvas 2D 绘图 API
- SVG 矢量图形支持

<a id="3"></a>
## 3 . 音频标签

HTML5 的 `<audio>` 标签用于在网页中嵌入音频内容。

<a id="3.1"></a>
### 3.1 基本用法

```html
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    <source src="audio.ogg" type="audio/ogg">
    您的浏览器不支持音频标签。
</audio>
```

<a id="3.2"></a>
### 3.2 常用属性

| 属性 | 描述 |
| :--- | :--- |
| `src` | 音频文件路径 |
| `controls` | 显示控制按钮 |
| `autoplay` | 自动播放 |
| `loop` | 循环播放 |
| `muted` | 静音 |
| `preload` | 预加载（auto、metadata、none） |
| `volume` | 音量（0-1） |
| `currentTime` | 当前播放时间 |
| `duration` | 音频总时长 |
| `paused` | 是否暂停 |

<a id="3.3"></a>
### 3.3 JavaScript 控制

```javascript
const audio = document.querySelector('audio');

// 播放
audio.play();

// 暂停
audio.pause();

// 设置音量
audio.volume = 0.5;

// 设置当前播放时间
audio.currentTime = 30; // 30 秒

// 监听事件
audio.addEventListener('play', function() {
    console.log('开始播放');
});

audio.addEventListener('pause', function() {
    console.log('暂停播放');
});

audio.addEventListener('ended', function() {
    console.log('播放结束');
});
```

<a id="4"></a>
## 4 . 视频标签

HTML5 的 `<video>` 标签用于在网页中嵌入视频内容。

<a id="4.1"></a>
### 4.1 基本用法

```html
<video controls width="640" height="360">
    <source src="video.mp4" type="video/mp4">
    <source src="video.webm" type="video/webm">
    您的浏览器不支持视频标签。
</video>
```

<a id="4.2"></a>
### 4.2 常用属性

| 属性 | 描述 |
| :--- | :--- |
| `src` | 视频文件路径 |
| `controls` | 显示控制按钮 |
| `autoplay` | 自动播放 |
| `loop` | 循环播放 |
| `muted` | 静音 |
| `preload` | 预加载（auto、metadata、none） |
| `width` | 视频宽度 |
| `height` | 视频高度 |
| `poster` | 视频封面图 |
| `volume` | 音量（0-1） |
| `currentTime` | 当前播放时间 |
| `duration` | 视频总时长 |
| `paused` | 是否暂停 |

<a id="4.3"></a>
### 4.3 JavaScript 控制

```javascript
const video = document.querySelector('video');

// 播放
video.play();

// 暂停
video.pause();

// 设置音量
video.volume = 0.5;

// 设置当前播放时间
video.currentTime = 30; // 30 秒

// 监听事件
video.addEventListener('play', function() {
    console.log('开始播放');
});

video.addEventListener('pause', function() {
    console.log('暂停播放');
});

video.addEventListener('ended', function() {
    console.log('播放结束');
});

video.addEventListener('timeupdate', function() {
    console.log('当前时间：' + this.currentTime);
});
```

<a id="5"></a>
## 5 . Canvas 绘图

Canvas 是 HTML5 中用于绘制图形的元素，通过 JavaScript API 可以绘制各种图形、动画等。

<a id="5.1"></a>
### 5.1 基本用法

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

<a id="5.2"></a>
### 5.2 常用 Canvas API

| API | 描述 |
| :--- | :--- |
| `getContext()` | 获取绘图上下文 |
| `fillRect()` | 绘制填充矩形 |
| `strokeRect()` | 绘制矩形边框 |
| `clearRect()` | 清除矩形区域 |
| `beginPath()` | 开始路径 |
| `moveTo()` | 移动到指定点 |
| `lineTo()` | 绘制直线 |
| `arc()` | 绘制圆弧 |
| `fill()` | 填充路径 |
| `stroke()` | 绘制路径边框 |
| `fillText()` | 绘制填充文本 |
| `strokeText()` | 绘制文本边框 |
| `drawImage()` | 绘制图像 |
| `save()` | 保存当前状态 |
| `restore()` | 恢复之前保存的状态 |
| `translate()` | 平移坐标系 |
| `rotate()` | 旋转坐标系 |
| `scale()` | 缩放坐标系 |

<a id="5.3"></a>
### 5.3 绘制动画

```html
<canvas id="animationCanvas" width="400" height="300"></canvas>

<script>
    var canvas = document.getElementById("animationCanvas");
    var ctx = canvas.getContext("2d");
    var x = 0;
    var speed = 2;
    
    function animate() {
        // 清除画布
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        
        // 绘制移动的矩形
        ctx.fillStyle = "#ff0000";
        ctx.fillRect(x, 100, 50, 50);
        
        // 更新位置
        x += speed;
        
        // 边界检测
        if (x > canvas.width) {
            x = -50;
        }
        
        // 继续动画
        requestAnimationFrame(animate);
    }
    
    // 开始动画
    animate();
</script>
```

<a id="6"></a>
## 6 . SVG 支持

SVG（Scalable Vector Graphics）是一种用于描述二维矢量图形的 XML 语言，HTML5 原生支持 SVG。

<a id="6.1"></a>
### 6.1 基本用法

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

<a id="6.2"></a>
### 6.2 常用 SVG 元素

| 元素 | 描述 |
| :--- | :--- |
| `<rect>` | 矩形 |
| `<circle>` | 圆形 |
| `<ellipse>` | 椭圆 |
| `<line>` | 直线 |
| `<polyline>` | 折线 |
| `<polygon>` | 多边形 |
| `<path>` | 路径 |
| `<text>` | 文本 |
| `<image>` | 图像 |
| `<g>` | 分组 |
| `<defs>` | 定义可重用元素 |
| `<use>` | 使用定义的元素 |
| `<animate>` | 动画 |

<a id="6.3"></a>
### 6.3 SVG 动画

```html
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
    <!-- 绘制一个矩形 -->
    <rect x="50" y="100" width="50" height="50" fill="#ff0000">
        <!-- 添加动画 -->
        <animate attributeName="x" from="50" to="300" dur="3s" repeatCount="indefinite" />
    </rect>
</svg>
```

<a id="7"></a>
## 7 . 常见问题与解决方案

<a id="7.1"></a>
### 7.1 音频/视频格式兼容性

**问题**：不同浏览器支持的音频/视频格式不同。

**解决方案**：
- 提供多种格式的媒体文件
- 使用 `<source>` 标签指定不同格式
- 检测浏览器支持的格式

<a id="7.2"></a>
### 7.2 Canvas 性能问题

**问题**：Canvas 绘制复杂图形或动画时性能下降。

**解决方案**：
- 减少绘制操作
- 使用 requestAnimationFrame
- 优化绘制逻辑
- 考虑使用 WebGL 进行复杂图形绘制

<a id="7.3"></a>
### 7.3 SVG 与 Canvas 选择

**问题**：不知道何时使用 SVG 何时使用 Canvas。

**解决方案**：
- SVG 适合：矢量图形、图标、可缩放图形、需要交互的图形
- Canvas 适合：像素级操作、复杂动画、游戏图形、图像处理

<a id="8"></a>
## 8 . 最佳实践

<a id="8.1"></a>
### 8.1 多媒体最佳实践

- 提供多种格式的媒体文件
- 使用适当的文件格式（MP3/MP4 广泛支持）
- 优化媒体文件大小
- 使用 CDN 加速媒体文件加载
- 提供 fallback 方案
- 考虑使用媒体流技术

<a id="8.2"></a>
### 8.2 Canvas 最佳实践

- 使用 requestAnimationFrame 进行动画
- 合理使用 save() 和 restore()
- 避免频繁重绘
- 考虑使用离屏 Canvas
- 优化绘制逻辑
- 注意跨浏览器兼容性

<a id="8.3"></a>
### 8.3 SVG 最佳实践

- 合理使用分组（`<g>`）
- 使用定义（`<defs>`）和引用（`<use>`）重用元素
- 优化 SVG 结构
- 考虑使用 SVG sprite
- 注意浏览器兼容性

<a id="9"></a>
## 9 . 总结

HTML5 的多媒体支持和 Canvas 绘图功能大大丰富了网页的表现力和交互性。通过使用这些功能，可以创建出更加生动、有趣的网页应用。

- **音频和视频**：原生支持多媒体播放，无需插件
- **Canvas**：用于绘制图形、动画和游戏
- **SVG**：用于绘制矢量图形、图标和可缩放图形
- **最佳实践**：优化性能，确保兼容性

这些功能为现代 web 应用提供了强大的视觉表现力，使得网页不再局限于静态内容，而是可以包含丰富的多媒体内容和交互效果。