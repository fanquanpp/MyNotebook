# 知识点速查表 | Knowledge Cheat Sheet (CSS Layout)

### 1. Flexbox 常用属性
- `display: flex;`: 开启弹性布局。
- `justify-content`: 定义主轴对齐方式（center, space-between, flex-start）。
- `align-items`: 定义交叉轴对齐方式。
- `flex-grow`: 定义项目的放大比例。

### 2. Grid 常用属性
- `display: grid;`: 开启网格布局。
- `grid-template-columns`: 定义列。
  - `repeat(auto-fit, minmax(280px, 1fr))`: 自动填充响应式列的关键。
- `gap`: 网格间距。

---

# 常见坑点 | Common Pitfalls

- **坑点 1 (Pitfall 1)**: `auto-fit` vs `auto-fill`
  - `auto-fit`: 当项目不足以填满一行时，会拉伸项目。 | Stretches items to fit available space.
  - `auto-fill`: 当项目不足以填满一行时，会保留空白列。 | Keeps empty columns.
- **坑点 2 (Pitfall 2)**: `box-sizing`
  - 务必设置 `* { box-sizing: border-box; }`，否则 `padding` 会撑大容器导致布局崩溃。 | Always set `border-box` to avoid `padding` breaking the layout.
- **坑点 3 (Pitfall 3)**: Flex 容器高度塌陷
  - 在某些情况下，如果内部子元素全部浮动（虽然现代布局不推荐），会导致高度塌陷。 | Avoid floats in modern layouts.
