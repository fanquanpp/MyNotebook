# 多线程基础 (Multithreading Basics)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 线程创建、生命周期、同步机制及 Java 线程池。 | Thread creation, lifecycle, synchronization, and pools.

## 1. 线程概念 (Threads)
- **进程**: 操作系统分配资源的最小单位。
- **线程**: 进程内部的执行流。Java 中通过 `Thread` 类管理。

## 2. 线程创建方式 (Creation)
1. **继承 `Thread` 类**: 重写 `run()`。
2. **实现 `Runnable` 接口**: 实现 `run()`。**推荐**。
3. **实现 `Callable` 接口**: 实现 `call()` (Java 5+)。可以有返回值和异常。
4. **Lambda 表达式**: `new Thread(() -> { ... }).start();`

## 3. 线程生命周期 (Lifecycle)
1. **新建 (New)**: `new Thread()`。
2. **可运行 (Runnable)**: 调用 `start()`。
3. **运行中 (Running)**: 获得 CPU 执行权。
4. **阻塞 (Blocked)**: 等待锁。
5. **等待 (Waiting / Timed Waiting)**: `wait()`, `sleep()`, `join()`。
6. **终止 (Terminated)**: 运行结束。

## 4. 线程同步 (Synchronization)
解决多线程并发安全问题。
- **`synchronized` 关键字**: 锁定方法或代码块。
- **`volatile`**: 保证可见性、有序性，但不保证原子性。
- **`Lock` (ReentrantLock)**: 显式锁 (Java 5+)。功能比 `synchronized` 更强。

## 5. 线程池 (Thread Pools)
- **好处**: 减少创建/销毁线程开销，控制最大并发数。
- **使用**: `ExecutorService pool = Executors.newFixedThreadPool(10);`
- **注意**: 生产环境建议通过 `ThreadPoolExecutor` 自定义参数。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化线程池与同步机制。
