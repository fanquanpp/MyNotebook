# 事务与锁机制 (Transactions & Locks)

> @Author: Anonymous
> @Category: MySQL Advanced
> @Description: ACID 特性、隔离级别、MVCC 原理及死锁排查。 | ACID, Isolation levels, MVCC, and Deadlocks.

## 1. 事务特性 (ACID)
1. **原子性 (Atomicity)**: 全部成功或全部失败。
2. **一致性 (Consistency)**: 状态转移符合业务逻辑。
3. **隔离性 (Isolation)**: 事务间互不干扰。
4. **持久性 (Durability)**: 提交后永久保存 (Redo Log)。

## 2. 事务隔离级别 (Isolation Levels)
- **读未提交 (Read Uncommitted)**: 脏读。
- **读已提交 (Read Committed)**: 不可重复读。
- **可重复读 (Repeatable Read)**: **MySQL 默认级别**。解决脏读、不可重复读，通过 Next-Key Lock 解决幻读。
- **串行化 (Serializable)**: 性能最差，最安全。

## 3. MVCC (多版本并发控制)
InnoDB 实现隔离级别的核心。
- **ReadView**: 判断数据版本的可见性。
- **Undo Log**: 保存数据的历史版本。

## 4. 锁机制 (Locks)
- **共享锁 (S)**: 读锁，允许并发读。
- **排他锁 (X)**: 写锁，阻塞读写。
- **意向锁 (IS/IX)**: 表级锁，协调行锁与表锁。
- **间隙锁 (Gap Lock)**: 锁定范围，防止插入。

## 5. 死锁排查 (Deadlocks)
- **`SHOW ENGINE INNODB STATUS;`**: 查看死锁日志。
- **优化**: 尽量按固定顺序访问表、减小事务粒度。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 MySQL 事务与锁机制细节。
