# 09-MySQL 数据库 | MySQL Database Persistence

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.1
-->

## 1. 项目简介 | Introduction

本分册收录 MySQL 关系型数据库的核心概念、安装配置、SQL 语法及数据建模实战。旨在构建高效、安全的数据持久化体系。

This module covers MySQL core concepts, installation, SQL syntax, and data modeling practices for building efficient persistence layers.

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与安装.md](./基础/01-概述与安装.md)
- [02-SQL基础语法.md](./基础/02-SQL基础语法.md)
- [03-数据类型与约束.md](./基础/03-数据类型与约束.md)
- [04-表操作与索引.md](./基础/04-表操作与索引.md)
- [05-查询与排序.md](./基础/05-查询与排序.md)
- [06-多表关联与子查询.md](./基础/06-多表关联与子查询.md)
- [07-函数与存储过程.md](./基础/07-函数与存储过程.md)
- [08-事务与并发.md](./基础/08-事务与并发.md)
- [基础篇 README](./基础/README.md)

### 进阶篇 | Advanced
- [01-性能优化.md](./进阶/01-性能优化.md)
- [02-高可用架构.md](./进阶/02-高可用架构.md)
- [进阶篇 README](./进阶/README.md)

### 示例篇 | Examples
- [advanced_sql_queries.sql](./示例/advanced_sql_queries.sql)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：MySQL 8.0 / 8.4 (LTS)
- **最小配置**：1 Core CPU / 2 GB RAM / 10 GB Disk

## 4. 快速开始 | Quick Start

```bash
# 1. 安装 MySQL (Ubuntu 示例)
sudo apt install mysql-server -y

# 2. 启动并进入命令行
sudo mysql

# 3. 验证版本
mysql> SELECT VERSION();
```

## 5. 学习路线 | Learning Path

`概述与安装` → `SQL基础语法` → `数据类型与约束` → `表操作与索引` → `查询与排序` → `多表关联与子查询` → `函数与存储过程` → `事务与并发` → `性能优化` → `高可用架构`

## 6. 核心特色 | Key Features

- **深度解析**：每个知识点独立成文件，详细讲解原理与应用
- **实战示例**：提供完整可运行的 SQL 示例，包含详细注释
- **性能优化**：重点讲解 MySQL 性能调优技巧与最佳实践
- **数据建模**：收录常见业务场景的数据建模案例

## 7. 贡献指南 | Contribution Guide

- **分支策略**：遵循 Git Flow (feature/hotfix)
- **提交规范**：使用 Conventional Commits (feat, fix, docs)
- **PR 模板**：见 [PR_TEMPLATE.md](../meta/笔记库务/笔记模板.md)

## 8. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全双语简介、环境要求与快速开始
- 2026-10-04: 添加控制器与应用知识点，包含控制器实现、设计模式和最佳实践
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
