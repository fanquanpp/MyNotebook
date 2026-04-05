# Python 学习路线图 | Python Learning Roadmap

本文档展示了 Python 算法与数据结构的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[基础语法 | Basic Syntax] --> B[常用算法 | Common Algorithms]
    B --> B1[排序 | Sorting]
    B --> B2[搜索 | Searching]
    B1 --> C[高级算法 | Advanced Algorithms]
    B2 --> C
    C --> C1[动态规划 | Dynamic Programming]
    C --> C2[图论 | Graph Theory]
    C1 --> D[实战项目 | Real-world Projects]
    C2 --> D
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [基础语法](../语法/基础/核心概念.md) | 10h | 无 |
| 初级 | [排序算法](./algorithms/README.md#排序) | 5h | 基础语法 |
| 初级 | [搜索算法](./algorithms/README.md#搜索) | 5h | 基础语法 |
| 中级 | [动态规划](./algorithms/README.md#动态规划) | 15h | 递归、数组 |
| 中级 | [图论基础](./algorithms/README.md#图论) | 15h | 队列、栈 |
| 高级 | [高级数据结构](./data-structures/README.md) | 20h | 指针、树、图 |

## 3. 学习提示 | Tips
- **代码重构**：尝试使用 Python 的 `list comprehension` 优化代码。
- **单元测试**：使用 `pytest` 运行所有算法示例。
- **面试重点**：掌握 `Binary Search`, `Quick Sort`, `DFS/BFS` 的手写实现。
