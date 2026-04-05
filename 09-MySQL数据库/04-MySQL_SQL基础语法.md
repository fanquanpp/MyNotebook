# MySQL SQL 基础语法 | MySQL SQL Basic Syntax

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. SQL 分类 | SQL Classification](#1-sql-分类--sql-classification)
- [2. 数据定义语言 (DDL) | Data Definition Language](#2-数据定义语言-ddl--data-definition-language)
- [3. 数据操作语言 (DML) | Data Manipulation Language](#3-数据操作语言-dml--data-manipulation-language)
- [4. 快速验证 | Quick Verification](#4-快速验证--quick-verification)
- [5. 总结 | Summary](#5-总结--summary)
- [6. 延伸阅读 | Further Reading](#6-延伸阅读--further-reading)

---

## 1. SQL 分类 | SQL Classification
SQL 语句通常分为以下几类：
- **DDL (Data Definition Language)**：定义数据库结构（CREATE, ALTER, DROP）。
- **DML (Data Manipulation Language)**：操作数据（INSERT, UPDATE, DELETE, SELECT）。
- **DCL (Data Control Language)**：控制权限（GRANT, REVOKE）。
- **TCL (Transaction Control Language)**：事务管理（COMMIT, ROLLBACK）。

## 2. 数据定义语言 (DDL) | Data Definition Language
用于管理表结构和数据库。
```sql
-- 创建表
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    score DECIMAL(4,1)
);
```

## 3. 数据操作语言 (DML) | Data Manipulation Language
用于增删改查。
```sql
-- 插入数据
INSERT INTO students (name, score) VALUES ('Alice', 95.5);
-- 查询数据
SELECT * FROM students WHERE score > 90;
```

## 4. 快速验证 | Quick Verification
以下示例演示完整的增删改查流程。

```sql
-- 执行环境: MySQL 8.0+
-- 依赖: notebook_test 数据库
USE notebook_test;

-- 1. 插入数据
INSERT INTO users (username) VALUES ('test_user');
```
<!-- expected_output
Query OK, 1 row affected (0.01 sec)
-->

```sql
-- 2. 查询数据
SELECT username FROM users WHERE username = 'test_user';
```
<!-- expected_output
+-----------+
| username  |
+-----------+
| test_user |
+-----------+
1 row in set (0.00 sec)
-->

```sql
-- 3. 更新数据
UPDATE users SET username = 'updated_user' WHERE username = 'test_user';
```
<!-- expected_output
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
-->

```sql
-- 4. 删除数据
DELETE FROM users WHERE username = 'updated_user';
```
<!-- expected_output
Query OK, 1 row affected (0.01 sec)
-->

## 5. 总结 | Summary
掌握 SQL 四大类语句是与数据库交互的核心。DQL (查询) 是最常用的部分，而 DDL (定义) 决定了数据存储的质量。

## 6. 延伸阅读 | Further Reading
- [SQL 语法标准 (SQL Standard)](https://en.wikipedia.org/wiki/SQL) <!-- nofollow -->
- [MySQL SELECT 语法详解 (SELECT Syntax)](https://dev.mysql.com/doc/refman/8.0/en/select.html) <!-- nofollow -->
- [SQL 注入防范 (SQL Injection Prevention)](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html) <!-- nofollow -->
- [SQL 教程 | 廖雪峰](https://www.liaoxuefeng.com/wiki/1177760294764384) <!-- nofollow -->
- [SQL Zoo 练习 (SQL Zoo)](https://sqlzoo.net/wiki/SQL_Tutorial) <!-- nofollow -->
- [LeetCode SQL 题目 (LeetCode SQL)](https://leetcode.com/problemset/database/) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 标准化文档结构，补充 TOC、增删改查验证示例及延伸阅读。
