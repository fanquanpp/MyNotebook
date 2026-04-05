---
url: "https://flexboxlabs.netlify.app/"
version: "CSS3"
update_date: "2026-04-05"
tags: ["CSS3", "Layout", "Flexbox"]
---

<a id="title"></a>
# CSS3 Flexbox 可视化指南

<a id="1"></a>
## 1 语法 (Syntax)

Flexbox 是 CSS3 中用于在一维空间内分配空间并对齐内容的布局模型。

<a id="1.1"></a>
### 1.1 容器属性 (Container Properties)

- **`display: flex`**: 开启弹性布局。
- **`flex-direction`**: 设置主轴方向。
- **`flex-wrap`**: 控制是否换行。
- **`justify-content`**: 主轴对齐方式。
- **`align-items`**: 交叉轴对齐方式。
- **`gap`**: 设置项目间的间距。

<a id="1.2"></a>
### 1.2 项目属性 (Item Properties)

- **`flex-grow`**: 项目放大比例。
- **`flex-shrink`**: 项目缩小比例。
- **`flex-basis`**: 项目基准大小。
- **`align-self`**: 单个项目对齐方式。

<a id="2"></a>
## 2 场景 (Scenario)

- **导航栏布局**：主轴水平居中或两端对齐。
- **居中对齐**：完美的水平垂直居中。
- **响应式列表**：自动适配不同屏幕宽度。

<a id="3"></a>
## 3 示例 (Example)

```css
/* 1: 容器设置 */
/* 2: 项目间距 */
.container {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
}

.item {
    flex: 1;
}
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **高度坍塌**：在某些旧浏览器中。
2. **主轴方向误解**：改变 `flex-direction` 后轴翻转。
3. **内联元素问题**：`display: inline-flex` 改变布局流。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 Flex 复合属性

`flex: 1` 是简写。建议始终使用复合属性以避免不可预测的行为。

[Flexbox Labs](https://flexboxlabs.netlify.app/)<!-- nofollow -->
