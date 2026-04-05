# MySQL 数据类型 | MySQL Data Types

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 数值类型 | Numeric Types](#1-数值类型--numeric-types)
- [2. 字符串类型 | String Types](#2-字符串类型--string-types)
- [3. 日期与时间类型 | Date and Time Types](#3-日期与时间类型--date-and-time-types)
- [4. 快速验证 | Quick Verification](#4-快速验证--quick-verification)
- [5. 总结 | Summary](#5-总结--summary)
- [6. 延伸阅读 | Further Reading](#6-延伸阅读--further-reading)

---

## 1. 数值类型 | Numeric Types
- **整数**：`TINYINT` (1B), `INT` (4B), `BIGINT` (8B)。
- **浮点数**：`FLOAT`, `DOUBLE` (非精确)。
- **定点数**：`DECIMAL(M,D)` (精确，推荐用于金额)。

## 2. 字符串类型 | String Types
- **CHAR(M)**：固定长度，处理速度快。
- **VARCHAR(M)**：可变长度，节省空间。
- **TEXT/BLOB**：大文本或二进制对象。

## 3. 日期与时间类型 | Date and Time Types
- **DATE**：YYYY-MM-DD。
- **DATETIME**：YYYY-MM-DD HH:MM:SS (范围广)。
- **TIMESTAMP**：与时区相关，自动更新 (范围至 2038 年)。

## 4. 快速验证 | Quick Verification
以下示例展示如何利用 JSON 类型存储半结构化数据。

```sql
-- 执行环境: MySQL 8.0+
-- 依赖: notebook_test 数据库
USE notebook_test;

-- 创建包含 JSON 的表
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    meta JSON
);
```
<!-- expected_output
Query OK, 0 rows affected (0.02 sec)
-->

```sql
-- 插入 JSON 数据
INSERT INTO products (name, meta) VALUES 
('Laptop', '{"brand": "Apple", "ram": "16GB", "tags": ["work", "tech"]}');

-- 提取 JSON 字段
SELECT name, meta->>"$.brand" as brand FROM products;
```
<!-- expected_output
+--------+-------+
| name   | brand |
+--------+-------+
| Laptop | Apple |
+--------+-------+
1 row in set (0.00 sec)
-->

## 5. 总结 | Summary
选择合适的数据类型是数据库优化的第一步。优先使用最小满足范围的类型（如 `TINYINT` 代替 `INT`），对于财务数据务必使用 `DECIMAL`。

## 6. 延伸阅读 | Further Reading
- [MySQL 数据类型官方参考 (Data Types)](https://dev.mysql.com/doc/refman/8.0/en/data-types.html) <!-- nofollow -->
- [JSON 数据类型详解 (JSON Data Type)](https://dev.mysql.com/doc/refman/8.0/en/json.html) <!-- nofollow -->
- [高性能 MySQL：数据类型优化 (Optimization)](https://www.oreilly.com/library/view/high-performance-mysql/9780596101719/) <!-- nofollow -->
- [MySQL 数据类型选择指南 | 掘金](https://juejin.cn/post/6844903666540314632) <!-- nofollow -->
- [What is the difference between DATETIME and TIMESTAMP?](https://stackoverflow.com/questions/409286/datetime-vs-timestamp) <!-- nofollow -->
- [Spatial Data Types in MySQL](https://dev.mysql.com/doc/refman/8.0/en/spatial-types.html) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 标准化文档结构，补充 TOC、JSON 类型验证示例及延伸阅读。
