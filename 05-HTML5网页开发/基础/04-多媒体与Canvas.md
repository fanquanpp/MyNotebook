# HTML5 多媒体与 Canvas 绘图 (Multimedia & Canvas)

> @Author: Anonymous
> @Category: HTML5 Basics
> @Description: 原生音视频支持、Canvas 2D 绘图基础。 | Video, Audio, and Canvas 2D drawing.

## 1. 音视频支持 (Video & Audio)
不再依赖 Flash 插件。
### 1.1 Video
```html
<video width="640" height="360" controls poster="poster.jpg">
  <source src="movie.mp4" type="video/mp4">
  您的浏览器不支持 HTML5 视频。
</video>
```
- **属性**: `controls` (控制条), `autoplay` (自动播放), `loop` (循环), `muted` (静音)。

### 1.2 Audio
```html
<audio controls>
  <source src="music.mp3" type="audio/mpeg">
</audio>
```

## 2. Canvas 绘图 (Canvas API)
用于通过 JavaScript 绘制图形。
### 2.1 基础结构
```html
<canvas id="myCanvas" width="200" height="100" style="border:1px solid #000;"></canvas>
```

### 2.2 JS 绘制
```javascript
const canvas = document.getElementById("myCanvas");
const ctx = canvas.getContext("2d");

// 绘制矩形
ctx.fillStyle = "#FF0000";
ctx.fillRect(0, 0, 150, 75);

// 绘制线条
ctx.moveTo(0, 0);
ctx.lineTo(200, 100);
ctx.stroke();
```

## 3. SVG vs. Canvas
- **Canvas**: 像素级绘图，适合游戏、高性能动画。缩放会失真。
- **SVG**: 矢量图形，基于 XML。适合图标、图表。缩放不失真。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化 Canvas 绘图基础与 SVG 对比。
