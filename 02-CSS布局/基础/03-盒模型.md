# CSS3 盒模型详解 (Box Model In-depth)

> @Author: Anonymous
> @Category: CSS Basics
> @Description: 标准盒模型与 IE 盒模型、外边距塌陷及布局应用。 | Standard vs. Quirks box models, margin collapse, and layout.

## 1. 盒模型组成 (Components)
每个 HTML 元素都被视为一个矩形盒子：
1. **Content (内容)**: 实际文本或图片。
2. **Padding (内边距)**: 内容与边框之间的透明区域。
3. **Border (边框)**: 围绕 Padding 和 Content 的线。
4. **Margin (外边距)**: 盒子与其他元素之间的间距。

## 2. 盒模型类型 (Box Sizing)
### 2.1 标准盒模型 (`content-box`)
- **宽度计算**: `width = 内容宽度`。
- **实际空间**: `width + padding + border`。
- **缺点**: 增加 padding 会撑大盒子。

### 2.2 怪异/IE 盒模型 (`border-box`)
- **宽度计算**: `width = 内容 + padding + border`。
- **优点**: 固定 width 后，增加内边距不会改变盒子总大小 (推荐)。
- **全局设置**:
  ```css
  * { box-sizing: border-box; }
  ```

## 3. 外边距特性 (Margin Features)
- **水平居中**: `margin: 0 auto;` (需指定宽度)。
- **外边距塌陷 (Collapse)**:
  - 垂直方向上，相邻的两个外边距会取最大值，而非累加。
  - **解决方法**: 增加 border, padding 或使用 `overflow: hidden` (BFC)。

## 4. BFC (块级格式化上下文)
**定义**: 一个独立的渲染区域，内部元素布局不影响外部。
- **触发条件**:
  - `float` 不为 `none`。
  - `position` 为 `absolute` 或 `fixed`。
  - `display` 为 `inline-block`, `flex`, `grid`。
  - `overflow` 不为 `visible`。
- **作用**: 清除浮动、防止外边距重叠。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 BFC 与盒模型计算规则。
