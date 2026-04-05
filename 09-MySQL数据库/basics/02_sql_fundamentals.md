# SQL 基础语法 (SQL Fundamentals)

> @Author: Anonymous
> @Category: MySQL Basics
> @Description: DDL (定义)、DML (操作)、DQL (查询) 及常用内置函数。 | DDL, DML, DQL, and built-in functions.

## 1. DDL (数据定义语言)
用于管理数据库和表的结构。
- **创建表**:
  ```sql
  CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
  ```
- **修改表**: `ALTER TABLE users ADD age INT;`
- **删除表**: `DROP TABLE users;`

## 2. DML (数据操作语言)
用于增删改数据。
- **插入**: `INSERT INTO users (username) VALUES ('Alice');`
- **更新**: `UPDATE users SET age = 20 WHERE id = 1;`
- **删除**: `DELETE FROM users WHERE id = 1;`

## 3. DQL (数据查询语言)
SQL 的核心。
- **基础查询**: `SELECT * FROM users;`
- **条件过滤**: `WHERE age > 18 AND username LIKE 'A%';`
- **排序**: `ORDER BY created_at DESC;`
- **分页**: `LIMIT 10 OFFSET 0;`

## 4. 聚合函数 (Aggregation)
- `COUNT()`: 计数。
- `SUM()`: 求和。
- `AVG()`: 平均值。
- `MAX() / MIN()`: 最大/最小。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 SQL 基础语法。
