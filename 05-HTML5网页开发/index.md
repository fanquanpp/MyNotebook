# 前端开发学习路线图 | Front-end Development Roadmap

本文档展示了 HTML5, CSS3, JavaScript 与 TypeScript 的前端全栈学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[HTML5 & CSS3 基础 | HTML & CSS Basics] --> B[响应式布局 | Responsive Layouts]
    B --> C[JS 核心语法 | JS Core Syntax]
    C --> D[DOM 操作 & Web API | DOM & Web API]
    D --> E[TypeScript 进阶 | TypeScript Advanced]
    E --> F[现代框架 (Vue/React) | Modern Frameworks]
    F --> G[前端工程化与性能优化 | Tooling & Performance]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [HTML5 标签](../05-HTML5网页开发/02-HTML5基础标签.md) | 10h | 无 |
| 初级 | [CSS 布局](../02-CSS布局/05-CSS3-Flexbox弹性布局.md) | 15h | HTML5 基础 |
| 初级 | [JS 基础](../07-Javascript脚本/基础/JS-核心语法-1.0.md) | 20h | 无 |
| 初级 | [响应式布局示例](../02-CSS布局/examples/responsive_layout.html) | 5h | CSS 基础 |
| 中级 | [TS 进阶](../12-Typescript进阶/进阶/TS-进阶核心-1.0.md) | 25h | JS 基础 |
| 中级 | [Web Components](../05-HTML5网页开发/examples/web_components.html) | 10h | HTML5 & JS |
| 高级 | [TS 设计模式](../12-Typescript进阶/examples/design_patterns_ts.ts) | 20h | TS 基础 |

## 3. 学习提示 | Tips
- **代码重构**：优先使用 ES6+ 的语法特性（解构、箭头函数、模板字符串）。
- **性能优化**：掌握 `Tree-shaking`, `Code Splitting`, `Lazy Loading`。
- **面试重点**：掌握 `Closure`, `Event Loop`, `Promise`, `TypeScript Generics`。
- **实战建议**：使用 `Vite` 构建你的第一个 `Vue` 或 `React` 项目。
