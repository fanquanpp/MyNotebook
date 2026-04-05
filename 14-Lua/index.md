# Lua 脚本开发学习路线图 | Lua Scripting Roadmap

本文档展示了 Lua 脚本开发从基础到高级的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[基础语法 | Basic Syntax] --> B[Table 深度解析 | Table in Depth]
    B --> C[函数式特性 | Functional Lua]
    C --> D[元表与面向对象 | Metatables & OOP]
    D --> E[协程与并发 | Coroutines]
    E --> F[Lua 与 C 交互 | C API & Interop]
    F --> G[引擎实战 (Redis/Nginx/Love2D) | Real-world Use]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [Lua 基础语法](./Lua-基础语法-1.0.md) | 10h | 无 |
| 初级 | [Table 与算法](./algorithms/README.md) | 5h | 基础语法 |
| 中级 | [高级特性](./Lua-高级特性-1.0.md) | 15h | Table 基础 |
| 中级 | [OOP 与元表](./data-structures/README.md) | 10h | Table 基础 |
| 高级 | [实践案例](./Lua-实践案例-1.0.md) | 20h | Lua 全栈 |

## 3. 学习提示 | Tips
- **索引**：记住 Lua 的 Table 索引默认从 **1** 开始。
- **性能**：避免在循环中频繁创建 Table，优先复用。
- **扩展**：学习 LuaJIT 以获得接近 C 的执行速度。
