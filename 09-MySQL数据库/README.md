# 09-MySQL 数据库 | MySQL Database Persistence

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 1. 项目简介 | Introduction
本分册收录 MySQL 关系型数据库的核心概念、安装配置、SQL 语法及数据建模实战。旨在构建高效、安全的数据持久化体系。
This module covers MySQL core concepts, installation, SQL syntax, and data modeling practices for building efficient persistence layers.

## 2. 目录索引 | Directory Index
- [MySQL 基础 (一知识点一文件) | Basics](./basics/README.md)
- [MySQL 进阶与架构 | Advanced](./advanced/README.md)
- [查询示例 | Examples](./examples/advanced_sql_queries.sql)

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

## 5. 贡献指南 | Contribution Guide
- **分支策略**：遵循 Git Flow (feature/hotfix)。
- **提交规范**：使用 Conventional Commits (feat, fix, docs)。
- **PR 模板**：见 [PR_TEMPLATE.md](../笔记库务/笔记模板.md)。

## 6. 许可证信息 | License
- **SPDX-Identifier**: [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **License Path**: [LICENSE](../LICENSE)
- **Copyright**: 2024-2026 fanquanpp

---
**更新日志 | Changelog**
- 2026-04-05: 体系化升级 README，补全双语简介、环境要求与快速开始。
