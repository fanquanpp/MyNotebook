# 进阶查询与多表操作 (Advanced Queries & Joins)

> @Author: Anonymous
> @Category: MySQL Basics
> @Description: 多表联查、子查询、分组统计及窗口函数。 | Joins, Subqueries, Grouping, and Window Functions.

## 1. 多表联查 (Joins)
- **INNER JOIN**: 返回两表匹配的行。
- **LEFT JOIN**: 返回左表所有行，右表不匹配补 NULL。
- **RIGHT JOIN**: 返回右表所有行。
- **FULL JOIN**: MySQL 需通过 UNION 模拟。

## 2. 分组统计 (Grouping)
使用 `GROUP BY` 配合聚合函数。
- **`HAVING`**: 对分组后的结果进行过滤 (WHERE 是在分组前过滤)。
```sql
SELECT dept_id, AVG(salary) 
FROM employees 
GROUP BY dept_id 
HAVING AVG(salary) > 5000;
```

## 3. 子查询 (Subqueries)
嵌套在主查询内部的查询。
- **标量子查询**: 返回单一值。
- **列子查询**: 返回一列值 (配合 `IN`, `ANY`, `ALL`)。

## 4. 窗口函数 (Window Functions - MySQL 8.0+)
在不分组的情况下进行聚合计算。
- `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`。
- `OVER(PARTITION BY ... ORDER BY ...)`。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化多表联查与窗口函数。
