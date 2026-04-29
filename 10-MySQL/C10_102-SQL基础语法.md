# SQL 基础语法 (SQL Fundamentals)

> @Author: Anonymous
> @Category: MySQL Basics
> @Description: DDL (定义)、DML (操作)、DQL (查询) 及常用内置函数。 | DDL, DML, DQL, and built-in functions.

## 1. DDL (数据定义语言) - Data Definition Language

### 1.1 数据库操作

**创建数据库**：
```sql
CREATE DATABASE IF NOT EXISTS mydb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

**查看数据库**：
```sql
SHOW DATABASES;
```

**使用数据库**：
```sql
USE mydb;
```

**删除数据库**：
```sql
DROP DATABASE IF EXISTS mydb;
```

### 1.2 表操作

**创建表**：
```sql
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

**查看表结构**：
```sql
DESCRIBE users;
-- 或
SHOW COLUMNS FROM users;
```

**修改表**：

- 添加列：
```sql
ALTER TABLE users ADD COLUMN gender ENUM('male', 'female') DEFAULT 'male';
```

- 修改列：
```sql
ALTER TABLE users MODIFY COLUMN age INT NOT NULL DEFAULT 18;
```

- 删除列：
```sql
ALTER TABLE users DROP COLUMN gender;
```

- 重命名表：
```sql
ALTER TABLE users RENAME TO users_new;
```

**删除表**：
```sql
DROP TABLE IF EXISTS users_new;
```

### 1.3 索引操作

**创建索引**：
```sql
-- 普通索引
CREATE INDEX idx_username ON users(username);

-- 唯一索引
CREATE UNIQUE INDEX idx_email ON users(email);

-- 组合索引
CREATE INDEX idx_name_age ON users(username, age);
```

**查看索引**：
```sql
SHOW INDEX FROM users;
```

**删除索引**：
```sql
DROP INDEX idx_username ON users;
```

## 2. DML (数据操作语言) - Data Manipulation Language

### 2.1 插入数据

**插入单行**：
```sql
INSERT INTO users (username, email, age) VALUES ('Alice', 'alice@example.com', 25);
```

**插入多行**：
```sql
INSERT INTO users (username, email, age) VALUES 
('Bob', 'bob@example.com', 30),
('Charlie', 'charlie@example.com', 28),
('David', 'david@example.com', 32);
```

**插入并返回自增ID**：
```sql
INSERT INTO users (username, email, age) VALUES ('Eve', 'eve@example.com', 22);
SELECT LAST_INSERT_ID();
```

### 2.2 更新数据

**基本更新**：
```sql
UPDATE users SET age = 26 WHERE username = 'Alice';
```

**多列更新**：
```sql
UPDATE users SET age = 31, email = 'bob_new@example.com' WHERE username = 'Bob';
```

**使用表达式更新**：
```sql
UPDATE users SET age = age + 1 WHERE age > 25;
```

### 2.3 删除数据

**删除指定行**：
```sql
DELETE FROM users WHERE id = 5;
```

**删除所有行**：
```sql
DELETE FROM users;
```

**截断表（删除所有行并重置自增ID）**：
```sql
TRUNCATE TABLE users;
```

## 3. DQL (数据查询语言) - Data Query Language

### 3.1 基础查询

**查询所有列**：
```sql
SELECT * FROM users;
```

**查询指定列**：
```sql
SELECT id, username, email FROM users;
```

**使用别名**：
```sql
SELECT id AS user_id, username AS name FROM users;
```

### 3.2 条件查询

**基本条件**：
```sql
SELECT * FROM users WHERE age > 25;
```

**逻辑运算符**：
```sql
SELECT * FROM users WHERE age > 25 AND gender = 'male';
SELECT * FROM users WHERE age < 20 OR age > 30;
SELECT * FROM users WHERE NOT age = 25;
```

**范围查询**：
```sql
-- BETWEEN
SELECT * FROM users WHERE age BETWEEN 20 AND 30;

-- IN
SELECT * FROM users WHERE username IN ('Alice', 'Bob', 'Charlie');

-- LIKE
SELECT * FROM users WHERE username LIKE 'A%'; -- 以A开头
SELECT * FROM users WHERE username LIKE '%e%'; -- 包含e
SELECT * FROM users WHERE username LIKE '_lice'; -- 第二个字符是l，共5个字符
```

**空值查询**：
```sql
SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;
```

### 3.3 排序

**升序排序**：
```sql
SELECT * FROM users ORDER BY age ASC;
```

**降序排序**：
```sql
SELECT * FROM users ORDER BY age DESC;
```

**多列排序**：
```sql
SELECT * FROM users ORDER BY age DESC, username ASC;
```

### 3.4 分页

**LIMIT 子句**：
```sql
-- 前10条
SELECT * FROM users LIMIT 10;

-- 从第11条开始，取10条
SELECT * FROM users LIMIT 10 OFFSET 10;
-- 或
SELECT * FROM users LIMIT 10, 10;
```

### 3.5 分组

**基本分组**：
```sql
SELECT age, COUNT(*) AS user_count FROM users GROUP BY age;
```

**分组后过滤**：
```sql
SELECT age, COUNT(*) AS user_count 
FROM users 
GROUP BY age 
HAVING user_count > 1;
```

**分组与排序**：
```sql
SELECT age, COUNT(*) AS user_count 
FROM users 
GROUP BY age 
ORDER BY user_count DESC;
```

## 4. 聚合函数

### 4.1 常用聚合函数

**COUNT**：计数
```sql
-- 计数所有行
SELECT COUNT(*) FROM users;

-- 计数非空值
SELECT COUNT(email) FROM users;

-- 计数不同值
SELECT COUNT(DISTINCT age) FROM users;
```

**SUM**：求和
```sql
SELECT SUM(age) FROM users;
```

**AVG**：平均值
```sql
SELECT AVG(age) FROM users;
```

**MAX**：最大值
```sql
SELECT MAX(age) FROM users;
```

**MIN**：最小值
```sql
SELECT MIN(age) FROM users;
```

### 4.2 聚合函数与分组

```sql
SELECT age, COUNT(*) AS count, AVG(age) AS avg_age 
FROM users 
GROUP BY age;
```

## 5. 内置函数

### 5.1 字符串函数

**CONCAT**：连接字符串
```sql
SELECT CONCAT(username, ' - ', email) AS user_info FROM users;
```

**SUBSTRING**：截取字符串
```sql
SELECT SUBSTRING(username, 1, 3) AS short_name FROM users;
```

**LENGTH**：字符串长度
```sql
SELECT username, LENGTH(username) AS name_length FROM users;
```

**LOWER/UPPER**：大小写转换
```sql
SELECT LOWER(username) AS lower_name, UPPER(username) AS upper_name FROM users;
```

**TRIM**：去除首尾空格
```sql
SELECT TRIM(username) AS trimmed_name FROM users;
```

### 5.2 日期函数

**NOW**：当前日期时间
```sql
SELECT NOW();
```

**CURDATE**：当前日期
```sql
SELECT CURDATE();
```

**CURTIME**：当前时间
```sql
SELECT CURTIME();
```

**DATE_FORMAT**：日期格式化
```sql
SELECT created_at, DATE_FORMAT(created_at, '%Y-%m-%d') AS date_only FROM users;
```

**DATEDIFF**：日期差
```sql
SELECT DATEDIFF(NOW(), created_at) AS days_since_creation FROM users;
```

### 5.3 数值函数

**ROUND**：四舍五入
```sql
SELECT ROUND(AVG(age), 2) AS avg_age FROM users;
```

**CEIL**：向上取整
```sql
SELECT CEIL(AVG(age)) AS avg_age_ceil FROM users;
```

**FLOOR**：向下取整
```sql
SELECT FLOOR(AVG(age)) AS avg_age_floor FROM users;
```

**RAND**：随机数
```sql
SELECT RAND();
```

## 6. 子查询

### 6.1 单行子查询

```sql
SELECT * FROM users WHERE age = (SELECT MAX(age) FROM users);
```

### 6.2 多行子查询

**IN**：
```sql
SELECT * FROM users WHERE age IN (SELECT age FROM users GROUP BY age HAVING COUNT(*) > 1);
```

**ANY/ALL**：
```sql
SELECT * FROM users WHERE age > ANY (SELECT age FROM users WHERE gender = 'female');
SELECT * FROM users WHERE age > ALL (SELECT age FROM users WHERE gender = 'female');
```

### 6.3 关联子查询

```sql
SELECT u1.* FROM users u1 WHERE age > (SELECT AVG(age) FROM users u2 WHERE u2.gender = u1.gender);
```

## 7. 多表查询

### 7.1 内连接

```sql
-- 创建订单表
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- 内连接查询
SELECT u.username, o.product_name, o.amount 
FROM users u 
INNER JOIN orders o ON u.id = o.user_id;
```

### 7.2 左连接

```sql
SELECT u.username, o.product_name, o.amount 
FROM users u 
LEFT JOIN orders o ON u.id = o.user_id;
```

### 7.3 右连接

```sql
SELECT u.username, o.product_name, o.amount 
FROM users u 
RIGHT JOIN orders o ON u.id = o.user_id;
```

### 7.4 全连接 (MySQL 不直接支持，可使用 UNION 实现)

```sql
SELECT u.username, o.product_name, o.amount 
FROM users u 
LEFT JOIN orders o ON u.id = o.user_id
UNION
SELECT u.username, o.product_name, o.amount 
FROM users u 
RIGHT JOIN orders o ON u.id = o.user_id;
```

## 8. 事务

### 8.1 基本语法

```sql
-- 开始事务
START TRANSACTION;

-- 执行操作
INSERT INTO users (username, email, age) VALUES ('Frank', 'frank@example.com', 29);
UPDATE users SET age = 26 WHERE username = 'Alice';

-- 提交事务
COMMIT;

-- 或回滚事务
-- ROLLBACK;
```

### 8.2 事务隔离级别

```sql
-- 查看当前隔离级别
SELECT @@tx_isolation;

-- 设置隔离级别
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
```

## 9. 视图

### 9.1 创建视图

```sql
CREATE VIEW user_order_view AS
SELECT u.id, u.username, u.email, o.product_name, o.amount, o.created_at
FROM users u
LEFT JOIN orders o ON u.id = o.user_id;
```

### 9.2 使用视图

```sql
SELECT * FROM user_order_view WHERE amount > 100;
```

### 9.3 删除视图

```sql
DROP VIEW IF EXISTS user_order_view;
```

## 10. 存储过程

### 10.1 创建存储过程

```sql
DELIMITER //
CREATE PROCEDURE get_user_by_age(IN min_age INT, IN max_age INT)
BEGIN
    SELECT * FROM users WHERE age BETWEEN min_age AND max_age;
END //
DELIMITER ;
```

### 10.2 调用存储过程

```sql
CALL get_user_by_age(20, 30);
```

### 10.3 删除存储过程

```sql
DROP PROCEDURE IF EXISTS get_user_by_age;
```

## 11. 触发器

### 11.1 创建触发器

```sql
DELIMITER //
CREATE TRIGGER before_user_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END //
DELIMITER ;
```

### 11.2 删除触发器

```sql
DROP TRIGGER IF EXISTS before_user_insert;
```

## 12. 最佳实践

### 12.1 SQL 编写规范

1. **使用大写关键字**：提高可读性
2. **使用缩进**：使代码结构清晰
3. **添加注释**：解释复杂逻辑
4. **避免 SELECT ***：只选择需要的列
5. **使用参数化查询**：防止 SQL 注入

### 12.2 性能优化

1. **使用索引**：为常用查询列创建索引
2. **避免在 WHERE 子句中使用函数**：会导致索引失效
3. **合理使用 JOIN**：避免过多的表连接
4. **使用 LIMIT**：限制返回行数
5. **优化 GROUP BY**：确保有适当的索引

### 12.3 安全实践

1. **使用最小权限原则**：为数据库用户分配适当的权限
2. **防止 SQL 注入**：使用参数化查询
3. **加密敏感数据**：对敏感信息进行加密存储
4. **定期备份**：确保数据安全

## 13. 常见问题与解决方案

### 13.1 SQL 注入

**问题**：恶意用户通过输入特殊字符来修改 SQL 语句

**解决方案**：
- 使用参数化查询
- 对输入进行验证和过滤
- 使用预编译语句

### 13.2 索引失效

**问题**：查询没有使用索引，导致性能下降

**解决方案**：
- 避免在 WHERE 子句中使用函数
- 避免使用 != 或 <> 操作符
- 避免使用 LIKE '%...' 模式
- 确保索引列的数据类型与查询条件匹配

### 13.3 死锁

**问题**：多个事务相互等待对方释放资源

**解决方案**：
- 保持事务简短
- 按相同顺序访问表
- 使用适当的隔离级别
- 避免长时间锁定资源

## 14. 总结

SQL 是操作关系型数据库的标准语言，掌握 SQL 基础语法是使用 MySQL 数据库的前提。本章节介绍了 SQL 的核心语法，包括 DDL、DML、DQL、聚合函数、内置函数、子查询、多表查询、事务、视图、存储过程和触发器等内容。

通过学习这些语法，你可以：
- 创建和管理数据库及表结构
- 增删改查数据
- 编写复杂的查询语句
- 优化查询性能
- 确保数据安全和一致性

在实际应用中，你需要根据具体场景选择合适的 SQL 语句，并遵循最佳实践来编写高效、安全的 SQL 代码。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 SQL 基础语法知识
- 2026-04-05: 扩写内容，增加详细的 DDL、DML、DQL、聚合函数、内置函数、子查询、多表查询、事务、视图、存储过程和触发器等内容