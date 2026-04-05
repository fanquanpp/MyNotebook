# MySQL 基本概念 | MySQL Basic Concepts

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 数据库对象层级 | Database Object Hierarchy](#1-数据库对象层级--database-object-hierarchy)
- [2. 核心存储单位：表 | Core Storage Unit: Table](#2-核心存储单位表--core-storage-unit-table)
- [3. 数据完整性：约束 | Data Integrity: Constraints](#3-数据完整性约束--data-integrity-constraints)
- [4. 快速验证 | Quick Verification](#4-快速验证--quick-verification)
- [5. 总结 | Summary](#5-总结--summary)
- [6. 延伸阅读 | Further Reading](#6-延伸阅读--further-reading)

---

## 1. 数据库对象层级 | Database Object Hierarchy
MySQL 采用层级结构管理数据：
- **实例 (Instance)**：运行中的 MySQL 服务进程。
- **数据库 (Database/Schema)**：逻辑隔离的命名空间。
- **表 (Table)**：存储数据的二维结构。

## 2. 核心存储单位：表 | Core Storage Unit: Table
- **字段 (Field/Column)**：定义数据的属性（如姓名、年龄）。
- **记录 (Record/Row)**：具体的一行数据。

## 3. 数据完整性：约束 | Data Integrity: Constraints
- **主键 (Primary Key)**：唯一标识，不可重复，不可为空。
- **外键 (Foreign Key)**：维护表与表之间的引用完整性。
- **非空 (NOT NULL)**：强制要求该字段必须有值。
- **唯一 (UNIQUE)**：确保字段值在全表唯一。

## 4. 快速验证 | Quick Verification
以下示例展示如何创建带约束的表并验证主键冲突。

```sql
-- 执行环境: MySQL 8.0+
-- 依赖: notebook_test 数据库
USE notebook_test;

-- 创建用户表
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
<!-- expected_output
Query OK, 0 rows affected (0.02 sec)
-->

```sql
-- 验证唯一约束
INSERT INTO users (username) VALUES ('admin');
-- 再次插入同名用户将报错
INSERT INTO users (username) VALUES ('admin');
```
<!-- expected_output
ERROR 1062 (23000): Duplicate entry 'admin' for key 'users.username'
-->

## 5. 总结 | Summary
理解数据库、表、字段及约束的关系是进行数据库建模的第一步。主键与唯一约束确保了数据的可识别性，而外键则构建了复杂业务逻辑下的关联。

## 6. 延伸阅读 | Further Reading
- [关系数据库模型 (Relational Model)](https://en.wikipedia.org/wiki/Relational_model) <!-- nofollow -->
- [MySQL 约束文档 (Constraints)](https://dev.mysql.com/doc/refman/8.0/en/create-table.html#create-table-indexes-constraints) <!-- nofollow -->
- [数据库范式详解 (Database Normalization)](https://www.geeksforgeeks.org/database-normalization-normal-forms/) <!-- nofollow -->
- [SQL 约束 | W3School](https://www.w3school.com.cn/sql/sql_constraints.asp) <!-- nofollow -->
- [MySQL 索引原理 (Index Internals)](https://dev.mysql.com/doc/refman/8.0/en/innodb-index-types.html) <!-- nofollow -->
- [Understanding ACID Properties](https://www.databricks.com/glossary/acid-properties) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 标准化文档结构，补充 TOC、约束验证示例及延伸阅读。
