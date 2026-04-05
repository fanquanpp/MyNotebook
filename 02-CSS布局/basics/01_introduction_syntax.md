# CSS3 概述与基本语法 (CSS3 Overview & Syntax)

> @Author: Anonymous
> @Category: CSS Basics
> @Description: CSS3 的核心特性、引入方式、基本语法结构及优先级。 | CSS3 core features, inclusion methods, syntax, and specificity.

## 1. CSS3 概述 (Overview)
CSS (Cascading Style Sheets) 层叠样式表，用于控制网页的视觉呈现。CSS3 是其最新标准，引入了模块化开发、动画、Flexbox/Grid 布局等强大功能。

### 1.1 核心特性 (Key Features)
- **响应式设计**: 媒体查询 (`@media`)。
- **现代布局**: Flexbox 与 Grid。
- **视觉效果**: 圆角 (`border-radius`)、阴影 (`box-shadow`)、渐变 (`gradient`)。
- **交互动画**: 过渡 (`transition`) 与 关键帧动画 (`animation`)。

## 2. 基本语法 (Basic Syntax)
```css
/* 选择器 { 属性: 值; } */
h1 {
  color: blue;
  font-size: 24px; /* 声明以分号结束 */
}
```

## 3. 引入方式 (Inclusion Methods)
1. **行内样式 (Inline)**: `<div style="color: red;">` (优先级最高，不建议大量使用)。
2. **内部样式 (Internal)**: HTML 头部的 `<style>` 标签。
3. **外部样式 (External)**: `<link rel="stylesheet" href="style.css">` (推荐)。
4. **导入式 (@import)**: 在 CSS 中引入其他 CSS (会增加 HTTP 请求)。

## 4. 优先级规则 (Specificity)
CSS 遵循“就近原则”和“权重计算”：
1. **`!important`**: 强制最高优先级。
2. **行内样式**: 权重 1000。
3. **ID 选择器**: 权重 100。
4. **类/伪类/属性选择器**: 权重 10。
5. **元素/伪元素选择器**: 权重 1。
6. **通配符 (`*`)**: 权重 0。

## 5. CSS 单位 (Units)
- **绝对单位**: `px` (像素)。
- **相对单位**:
  - `em`: 相对于当前元素的字体大小。
  - `rem`: 相对于根元素 (`<html>`) 的字体大小 (推荐)。
  - `vw/vh`: 相对于视口宽度/高度的百分比。
  - `%`: 相对于父元素的百分比。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 CSS 基础语法与优先级规则。
