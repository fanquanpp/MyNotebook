# CSS3 Flexbox 弹性布局 (Flexbox Layout)

> @Author: Anonymous
> @Category: CSS Basics
> @Description: 弹性盒子模型核心概念、容器属性及项目属性全解析。 | Flexbox core concepts, container, and item properties.

## 1. 核心概念 (Core Concepts)
Flexbox 旨在提供一种更高效的方式来布局、对齐和分配容器中项目之间的空间。
- **Flex Container**: 开启了 `display: flex` 的父元素。
- **Flex Item**: 容器内的直接子元素。
- **主轴 (Main Axis)**: 默认水平。
- **侧轴 (Cross Axis)**: 默认垂直。

## 2. 容器属性 (Container Properties)
- **`flex-direction`**: 主轴方向 (`row`, `column`)。
- **`justify-content`**: 主轴对齐 (`center`, `space-between`, `space-around`)。
- **`align-items`**: 侧轴对齐 (`center`, `stretch`, `flex-start`)。
- **`flex-wrap`**: 是否换行 (`nowrap`, `wrap`)。
- **`align-content`**: 多行对齐方式。

## 3. 项目属性 (Item Properties)
- **`flex-grow`**: 放大比例 (默认 0)。
- **`flex-shrink`**: 缩小比例 (默认 1)。
- **`flex-basis`**: 初始大小。
- **`flex`**: 复合属性 (`grow shrink basis`)。推荐使用 `flex: 1`。
- **`align-self`**: 覆盖父容器的 `align-items`。
- **`order`**: 项目排列顺序。

## 4. 常见应用场景
- **垂直水平居中**:
  ```css
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  ```
- **等高布局**: Flex item 默认 `align-items: stretch`。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 Flexbox 布局属性与实战技巧。
