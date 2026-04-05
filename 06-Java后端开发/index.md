# Java 后端开发学习路线图 | Java Backend Learning Roadmap

本文档展示了 Java 后端开发从入门到 Spring Boot 实战的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[Java 基础语法 | Java Basics] --> B[面向对象进阶 | Advanced OOP]
    B --> C[数据结构 (Java) | Data Structures in Java]
    C --> D[Java 核心库 (Collections/Concurrency) | Core Java Libraries]
    D --> E[MySQL 数据库基础 | MySQL Basics]
    E --> F[Spring Boot 框架 | Spring Boot Framework]
    F --> G[RESTful 服务开发 | RESTful Services]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [Java 基础](../06-Java后端开发/基础/Java-基础入门-1.0.md) | 20h | 无 |
| 初级 | [面向对象](../06-Java后端开发/基础/Java-基础语法-1.0.md) | 15h | 基础语法 |
| 初级 | [常用算法 (Java)](../06-Java后端开发/algorithms/README.md) | 10h | 基础语法 |
| 中级 | [Java 深度解析](../06-Java后端开发/基础/Java-深度解析-1.0.md) | 25h | OOP 进阶 |
| 中级 | [MySQL 基础](../09-MySQL数据库/01-MySQL简介.md) | 15h | 无 |
| 高级 | [Spring Boot 实战](../06-Java后端开发/框架/Java-SpringBoot-1.0.md) | 40h | Java 进阶、MySQL |

## 3. 学习提示 | Tips
- **代码重构**：尝试使用 Java 8+ 的 `Stream API` 和 `Optional` 来简化逻辑。
- **并发编程**：重点掌握 `CompletableFuture` 和 `ThreadLocal` 的使用场景。
- **项目实战**：通过构建一个简单的 `Todo List API` 来实践 Spring Boot 核心组件。
