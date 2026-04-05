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
| 入门 | [Lua 基础语法](../14-Lua/Lua-基础语法-1.0.md) | 10h | 无 |
| 初级 | [GDScript 基础](../03-GDScript游戏开发/01-GDScript基础概念与语法.md) | 15h | 无 |
| 初级 | [Ren'Py 入门](../11-Renpy视觉小说/语法/基础/入门语法.md) | 10h | 无 |
| 中级 | [GDScript 进阶](../03-GDScript游戏开发/03-进阶特性.md) | 20h | GDScript 基础 |
| 中级 | [ATL 动画语言 (Ren'Py)](../11-Renpy视觉小说/视觉/中级/ATL动画语言.md) | 15h | Ren'Py 基础 |
| 高级 | [游戏性能优化](../03-GDScript游戏开发/04-性能优化最佳实践.md) | 25h | 进阶语法 |
| 高级 | [打字机效果 (Ren'Py)](../11-Renpy视觉小说/algorithms/typewriter_renpy.rpy) | 5h | Ren'Py 进阶 |

## 3. 学习提示 | Tips
- **代码重构**：在 Godot 中优先使用 `Signals` 而不是硬编码引用。
- **性能优化**：掌握 `Object Pooling`, `Draw Call Optimization`, `Culling`。
- **面试重点**：理解 `Scene Tree`, `Entity-Component System`, `State Machines`。
- **实战建议**：从制作一个简单的 `2D Platformer` 或 `Visual Novel` 开始。
