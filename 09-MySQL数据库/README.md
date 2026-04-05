# 09-MySQL 数据库 | MySQL Database Persistence

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.2
-->

## 1. 项目简介 | Introduction

本模块是 fanquanpp 个人综合学习笔记库中的 MySQL 数据库部分，收录 MySQL 关系型数据库的核心概念、安装配置、SQL 语法及数据建模实战。旨在构建高效、安全的数据持久化体系。

This module covers MySQL core concepts, installation, SQL syntax, and data modeling practices for building efficient persistence layers.

### 仓库定位

- **学习资源中心**：提供从基础到高级的 MySQL 数据库学习指南
- **技术文档库**：详细解析 MySQL 核心概念和 SQL 语法
- **个人知识管理**：系统化整理 MySQL 相关知识，便于复习和查阅

**使用说明：**

- 本仓库已开放为公共，允许他人访问和克隆
- 禁止直接修改本仓库内容
- 他人使用本仓库内容时出现的任何问题与作者无关

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
- **最小配置**：1 核心 CPU / 2 GB 内存 / 10 GB 磁盘

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
- **结构清晰**：按照基础、进阶和示例组织内容，便于系统学习
- **双语注释**：关键概念和 SQL 语句提供中英文对照注释

## 7. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从概述与安装开始，逐步掌握 MySQL 的各种功能
2. 结合实际项目练习，加深对 SQL 语法的理解
3. 特别关注索引设计和性能优化部分，这是 MySQL 数据库的核心
4. 尝试设计和实现一个完整的数据库模型，巩固所学知识

## 8. 延伸阅读 | Further Reading

- [MySQL 官方文档](https://dev.mysql.com/doc/) <!-- nofollow -->
- [SQL 标准文档](https://www.iso.org/standard/76451.html) <!-- nofollow -->
- 本仓库：[06-Java后端开发](../06-Java后端开发/README.md)

## 9. 贡献指南 | Contribution Guide

- **分支策略**：遵循 Git Flow (feature/hotfix)
- **提交规范**：使用 Conventional Commits (feat, fix, docs)
- **PR 模板**：见 [PR_TEMPLATE.md](../meta/笔记库务/笔记模板.md)

## 10. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：1839243393
- 欢迎提意见交流或反馈问题

## 11. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.2
- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全双语简介、环境要求与快速开始
- 2026-10-04: 添加控制器与应用知识点，包含控制器实现、设计模式和最佳实践
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
