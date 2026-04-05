# MySQL 简介 | Introduction to MySQL

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 概述 | Overview](#1-概述--overview)
- [2. 核心特点 | Core Features](#2-核心特点--core-features)
- [3. 应用场景 | Use Cases](#3-应用场景--use-cases)
- [4. 快速验证 | Quick Verification](#4-快速验证--quick-verification)
- [5. 总结 | Summary](#5-总结--summary)
- [6. 延伸阅读 | Further Reading](#6-延伸阅读--further-reading)

---

## 1. 概述 | Overview
MySQL 是一种关系型数据库管理系统 (Relational Database Management System, RDBMS)，由瑞典 MySQL AB 公司开发，目前属于 Oracle 公司。它是最流行的开源数据库之一，特别在 Web 应用领域具有统治地位。

## 2. 核心特点 | Core Features
- **开源免费 (Open Source)**：社区版完全免费。
- **跨平台 (Cross-platform)**：支持 Windows, Linux, macOS。
- **高性能 (High Performance)**：优化的查询缓存与索引结构。
- **InnoDB 引擎**：支持事务处理 (ACID)、行级锁及外键。

## 3. 应用场景 | Use Cases
- **Web 后端**：WordPress, Drupal, 自研电商系统。
- **企业 ERP**：数据持久化与一致性保障。
- **数据分析**：作为 ODS (Operational Data Store) 层存储原始数据。

## 4. 快速验证 | Quick Verification
以下示例演示如何在 MySQL 8.0 环境下连接并查询版本。

```sql
-- 执行环境: MySQL 8.0+
-- 依赖: 无
SELECT VERSION();
```
<!-- expected_output
+-----------+
| VERSION() |
+-----------+
| 8.0.35    |
+-----------+
1 row in set (0.00 sec)
-->

```sql
-- 创建测试库
CREATE DATABASE IF NOT EXISTS notebook_test;
USE notebook_test;
SELECT DATABASE();
```
<!-- expected_output
+------------+
| DATABASE() |
+------------+
| notebook_test |
+------------+
-->

## 5. 总结 | Summary
MySQL 以其高性能、高可靠性及易用性，成为现代互联网架构的基石。掌握 MySQL 是后端开发者的核心竞争力。

## 6. 延伸阅读 | Further Reading
- [MySQL 官方文档 (Official Documentation)](https://dev.mysql.com/doc/) <!-- nofollow -->
- [MySQL 8.0 新特性 (New Features)](https://dev.mysql.com/blog-archive/mysql-8-0-new-features-in-a-nutshell/) <!-- nofollow -->
- [高性能 MySQL 第四版 (High Performance MySQL)](https://www.highperformancemysql.com/) <!-- nofollow -->
- [MySQL 教程 | 菜鸟教程 (Runoob)](https://www.runoob.com/mysql/mysql-tutorial.html) <!-- nofollow -->
- [MySQL 实战 45 讲 (Geekbang)](https://time.geekbang.org/column/intro/139) <!-- nofollow -->
- [Inside MySQL: InnoDB Storage Engine](https://book.douban.com/subject/24708143/) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 初始化文档结构，补充 TOC、快速验证示例及延伸阅读。
