# CSS3 Grid 网格布局 (Grid Layout)

> @Author: Anonymous
> @Category: CSS Basics
> @Description: 二维网格布局系统、网格线、区域划分及现代布局方案。 | 2D Grid layout system, lines, areas, and modern solutions.

## 1. 核心概念 (Core Concepts)
与 Flexbox (一维) 不同，Grid 是**二维布局系统**，同时处理行和列。
- **Grid Container**: `display: grid;`
- **Grid Track**: 行或列。
- **Grid Cell**: 单元格。
- **Grid Area**: 由多个单元格组成的矩形区域。

## 2. 容器属性 (Container Properties)
- **`grid-template-columns / rows`**: 定义列/行。支持 `fr` (分数单位)。
  ```css
  grid-template-columns: 1fr 2fr 1fr; /* 三列 */
  ```
- **`gap`**: 网格间距。
- **`place-items`**: 简写，控制对齐。
- **`grid-template-areas`**: 命名网格区域 (非常直观)。
  ```css
  grid-template-areas: 
    "header header"
    "sidebar main"
    "footer footer";
  ```

## 3. 项目属性 (Item Properties)
- **`grid-column / row`**: 指定项目跨越的线。
  ```css
  grid-column: 1 / 3; /* 从线 1 到线 3 */
  ```
- **`grid-area`**: 引用容器定义的区域名称。

## 4. Grid vs. Flexbox
- **Flexbox**: 适合内容驱动的小部件、线性排列。
- **Grid**: 适合整体页面布局、复杂的重叠设计。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 Grid 二维布局逻辑。
