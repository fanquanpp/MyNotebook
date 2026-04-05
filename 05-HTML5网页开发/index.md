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
| 入门 | [HTML5 基础体系](./basics/README.md) | 15h | 无 |
| 进阶 | [Vue 核心与实战](./frameworks/01-Vue核心与实战.md) | 30h | HTML5, JS |

## 3. 学习提示 | Tips
- **代码重构**：优先使用 ES6+ 的语法特性（解构、箭头函数、模板字符串）。
- **性能优化**：掌握 `Tree-shaking`, `Code Splitting`, `Lazy Loading`。
- **面试重点**：掌握 `Closure`, `Event Loop`, `Promise`, `TypeScript Generics`。
- **实战建议**：使用 `Vite` 构建你的第一个 `Vue` 或 `React` 项目。
