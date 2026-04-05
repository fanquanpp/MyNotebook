# MySQL 概述与环境配置 (MySQL Overview & Environment)

> @Author: Anonymous
> @Category: MySQL Basics
> @Description: 关系型数据库概念、MySQL 安装、常用管理工具及基本操作。 | RDBMS concepts, MySQL installation, tools, and basic ops.

## 1. 数据库概述 (Overview)
MySQL 是全球最受欢迎的**开源关系型数据库管理系统 (RDBMS)**。
- **关系型 (RDBMS)**: 数据存储在表中，表之间通过外键关联。
- **SQL (Structured Query Language)**: 结构化查询语言，用于管理数据。

### 1.1 核心特点 (Key Features)
- **高性能**: 优化的查询引擎 (InnoDB)。
- **高可用**: 支持主从复制、集群部署。
- **安全性**: 完善的权限控制系统。
- **社区活跃**: 丰富的文档和第三方支持。

## 2. 环境搭建 (Environment Setup)
1. **安装**: 推荐使用 Docker 部署或下载 Community Server。
   ```bash
   docker run --name mysql -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 -d mysql:latest
   ```
2. **管理工具**:
   - **命令行**: `mysql -u root -p`。
   - **GUI**: Navicat, MySQL Workbench, DBeaver (推荐)。

## 3. 基本操作 (Basic Ops)
```sql
-- 查看所有数据库
SHOW DATABASES;
-- 创建数据库
CREATE DATABASE mydb CHARACTER SET utf8mb4;
-- 使用数据库
USE mydb;
```

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 MySQL 概述与环境配置。
