# 游戏开发学习路线图 | Game Development Roadmap

本文档展示了 GDScript (Godot), Ren'Py (Visual Novels) 与 Lua 的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[编程语言基础 (Lua/GDScript) | Language Basics] --> B[引擎核心概念 | Engine Core Concepts]
    B --> C[场景、节点与资源 | Scenes, Nodes & Resources]
    C --> D[2D/3D 渲染与物理 | Rendering & Physics]
    D --> E[脚本编写与 AI | Scripting & AI]
    E --> F[UI、音效与后期 | UI, Audio & VFX]
    F --> G[游戏发布与多平台 | Publishing & Multi-platform]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [GDScript 基础体系](./basics/README.md) | 15h | 无 |
| 进阶 | [信号、异步与注解](./advanced/01-信号与异步.md) | 10h | 基础语法 |
| 实战 | [性能优化与进阶技巧](./advanced/02-性能优化与版本差异.md) | 10h | GDScript 基础 |

## 3. 学习提示 | Tips
- **代码重构**：在 Godot 中优先使用 `Signals` 而不是硬编码引用。
- **性能优化**：掌握 `Object Pooling`, `Draw Call Optimization`, `Culling`。
- **面试重点**：理解 `Scene Tree`, `Entity-Component System`, `State Machines`。
- **实战建议**：从制作一个简单的 `2D Platformer` 或 `Visual Novel` 开始。
