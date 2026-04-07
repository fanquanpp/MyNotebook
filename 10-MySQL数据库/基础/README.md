# MySQL 基础知识体系 | MySQL Basics

<!--
作者：fanquanpp
创建日期：2026-04-06
版本：v1.0.0
-->

## 1. 基础篇概述 | Basics Overview

MySQL 基础篇涵盖了 MySQL 的核心概念、基本 SQL 语法及进阶查询，包括概述与环境、SQL 基础语法、进阶查询与联查、控制器与应用、数据类型与约束、索引与执行计划等内容。通过学习基础篇，你将掌握 MySQL 的基本使用方法，为后续的数据库开发和管理打下基础。

## 2. 目录索引 | Directory Index

| 序号 | 文件名 | 描述 |
| :--- | :--- | :--- |
| 01 | [01-概述与环境.md](./01-概述与环境.md) | RDBMS 特点、MySQL 安装配置、管理工具 |
| 02 | [02-SQL基础语法.md](./02-SQL基础语法.md) | DDL、DML、DQL、聚合函数、约束 |
| 03 | [03-进阶查询与联查.md](./03-进阶查询与联查.md) | 多表 Join、子查询、分组与联查 |
| 04 | [04-控制器与应用.md](./04-控制器与应用.md) | 应用侧接入、控制器思路、常见实践 |
| 05 | [05-数据类型与约束.md](./05-数据类型与约束.md) | 类型选择策略、约束设计与建表实践 |
| 06 | [06-索引与执行计划.md](./06-索引与执行计划.md) | 索引基础、组合索引、EXPLAIN 解读 |

## 3. 学习路线 | Learning Path

```
概述与环境 → SQL基础语法 → 数据类型与约束 → 进阶查询与联查 → 索引与执行计划 → 控制器与应用
```

## 4. 核心知识点 | Core Knowledge Points

### 4.1 概述与环境

- RDBMS（关系型数据库管理系统）的特点
- MySQL 的发展历史和特点
- MySQL 的安装和配置
- MySQL 的管理工具（MySQL Workbench、Navicat 等）
- MySQL 的版本选择

### 4.2 SQL 基础语法

- DDL（数据定义语言）：CREATE、ALTER、DROP 等
- DML（数据操纵语言）：INSERT、UPDATE、DELETE 等
- DQL（数据查询语言）：SELECT 语句
- 聚合函数：COUNT、SUM、AVG、MAX、MIN 等
- 约束：PRIMARY KEY、FOREIGN KEY、UNIQUE、NOT NULL 等
- SQL 语法规范和最佳实践

### 4.3 进阶查询与联查

- 多表 JOIN 查询（INNER JOIN、LEFT JOIN、RIGHT JOIN、FULL JOIN）
- 子查询（嵌套查询）
- 分组查询（GROUP BY）
- 排序查询（ORDER BY）
- 分页查询（LIMIT）
- 复杂查询的优化

### 4.4 控制器与应用

- 应用侧接入 MySQL 的方法
- 控制器的设计思路
- 数据库连接池的使用
- 事务管理
- 常见实践和最佳实践

### 4.5 数据类型与约束

- MySQL 的数据类型（数值型、字符串型、日期时间型等）
- 数据类型的选择策略
- 约束的设计和使用
- 建表的最佳实践
- 表结构的设计原则

### 4.6 索引与执行计划

- 索引的基本概念和作用
- 索引的类型（B-Tree 索引、Hash 索引等）
- 组合索引的设计
- EXPLAIN 语句的使用和解读
- 索引的优化策略

## 5. 学习建议 | Learning Suggestions

1. **循序渐进**：按照学习路线的顺序学习，从概述与环境开始，逐步掌握 MySQL 的各种特性
2. **实践为主**：多进行实际操作，通过实际项目练习加深对 MySQL 概念的理解
3. **重点关注**：特别关注 SQL 语法和索引优化，这是 MySQL 的核心功能
4. **查阅文档**：遇到问题时，参考 MySQL 官方文档和相关资源
5. **代码规范**：遵循 SQL 代码规范，提高代码的可读性和可维护性
6. **性能优化**：了解 MySQL 的性能优化技巧，写出高效的 SQL 语句
7. **安全意识**：关注数据库安全，学习如何防止 SQL 注入等安全问题

## 6. 延伸阅读 | Further Reading

- [MySQL 官方文档](https://dev.mysql.com/doc/) <!-- nofollow -->
- [MySQL 教程](https://www.w3schools.com/mysql/) <!-- nofollow -->
- [SQL 参考手册](https://dev.mysql.com/doc/refman/8.0/en/sql-syntax.html) <!-- nofollow -->
- [高性能 MySQL](https://www.amazon.com/High-Performance-MySQL-Optimization-Replication/dp/1449311913) - Baron Schwartz
- 本仓库：[Java 后端开发](../04-Java后端开发/README.md)

## 7. 小结 | Summary

MySQL 基础篇提供了 MySQL 的核心概念和基本使用方法，是学习数据库开发和管理的起点。通过学习基础篇，你已经了解了 MySQL 的概述与环境、SQL 基础语法、进阶查询与联查、控制器与应用、数据类型与约束、索引与执行计划等内容，为后续的数据库开发和管理打下了基础。

在学习过程中，要注重实践，通过实际项目来巩固所学知识，同时要关注 MySQL 的最佳实践，以编写高效、安全的 SQL 语句。MySQL 是一种广泛使用的关系型数据库管理系统，它具有可靠性高、性能好、易于使用等特点，是现代应用开发中不可或缺的一部分。
