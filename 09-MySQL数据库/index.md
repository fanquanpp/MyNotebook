# MySQL 数据库学习路线图 | MySQL Database Roadmap

本文档展示了 MySQL 数据库从基础到高级的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[SQL 基础 (CRUD) | SQL Basics] --> B[数据类型与约束 | Data Types]
    B --> C[函数与聚合 | Functions]
    C --> D[多表联查 (Joins) | Joins]
    D --> E[索引与性能优化 | Indexing]
    E --> F[高级查询 (CTE/Window) | Advanced SQL]
    F --> G[事务与并发控制 | Transactions]
    G --> H[架构设计与分库分表 | Architecture]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [MySQL 基础知识体系](./basics/README.md) | 15h | 无 |
| 进阶 | [索引原理与优化](./advanced/01_index_optimization.md) | 10h | SQL 基础 |
| 核心 | [事务与锁机制](./advanced/02_transactions_locks.md) | 10h | 数据库基础 |

## 3. 学习提示 | Tips
- **实战**：多使用 `EXPLAIN` 分析你的慢查询。
- **规范**：遵循阿里巴巴 Java 开发手册中的数据库设计规范。
- **面试**：深入理解 InnoDB 存储引擎的 B+ 树索引原理。
