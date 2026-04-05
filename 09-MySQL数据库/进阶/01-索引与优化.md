# 索引原理与性能优化 (Index & Optimization)

> @Author: Anonymous
> @Category: MySQL Advanced
> @Description: B+ 树索引原理、聚簇索引、执行计划 (Explain) 及慢查询优化。 | B+ Tree, Clustered Index, Explain, and Slow Query.

## 1. 索引原理 (Index Mechanism)
索引是帮助数据库高效获取数据的数据结构。
- **B+ 树**: MySQL (InnoDB) 默认使用的索引结构。
  - **特点**: 非叶子节点仅存键值，叶子节点存数据且双向链表相连，适合范围查询。

## 2. 索引分类 (Classification)
- **主键索引 (Primary Key)**: 唯一且非空。
- **唯一索引 (Unique)**: 唯一但可为空。
- **普通索引 (Normal)**: 加快查询。
- **组合索引 (Composite)**: 多个字段组成。**遵循最左前缀法则**。
- **全文索引 (Fulltext)**: 关键词搜索。

## 3. 聚簇索引 vs. 非聚簇索引 (Clustered)
- **聚簇索引**: 数据与主键索引存放在一起 (叶子节点即行数据)。
- **非聚簇索引**: 叶子节点存的是主键值，需要**回表**查询。

## 4. 查询优化 (Optimization)
### 4.1 `EXPLAIN` 执行计划
分析查询性能的核心工具。
- **`type`**: 访问类型 (`const`, `eq_ref`, `ref`, `range`, `index`, `ALL`)。越靠前越快。
- **`key`**: 实际使用的索引。
- **`rows`**: 预计扫描的行数。

### 4.2 慢查询日志 (Slow Query Log)
开启后记录执行时间超过阈值的 SQL。

### 4.3 优化建议
- 避免 `SELECT *`。
- 索引字段不要使用函数或计算。
- 组合索引注意顺序。
- 避免使用 `OR`, `NOT IN` (可能导致索引失效)。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 MySQL 索引与性能优化。
