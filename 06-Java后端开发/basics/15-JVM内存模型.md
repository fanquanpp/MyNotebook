# Java 内存模型 (JMM In-depth)

> @Author: Anonymous
> @Category: Java Basics
> @Description: JVM 内存区域划分、堆内存结构及垃圾回收算法。 | JVM memory regions, Heap structure, and Garbage Collection algorithms.

## 1. 运行时数据区 (Runtime Data Areas)
根据 JVM 规范，内存划分为以下区域：

### 1.1 线程私有区域
1. **程序计数器 (PC)**: 当前执行字节码的行号。无 OOM 风险。
2. **Java 虚拟机栈 (Stack)**: 存储局部变量表、操作数栈、方法出口。溢出会导致 `StackOverflowError`。
3. **本地方法栈**: 为 `native` 方法服务。

### 1.2 线程共享区域
1. **Java 堆 (Heap)**: 存放**所有对象实例**及数组。GC 的核心区域。
2. **方法区 (Method Area)**: 存储类信息、常量、静态变量、编译后代码。
   - **运行时常量池**: 方法区的一部分。

## 2. 堆内存结构 (Heap Structure)
堆内存分为：
1. **新生代 (Young Gen)**: 存放新创建的对象。包含 `Eden`, `Survivor 0 (S0)`, `Survivor 1 (S1)`。
2. **老年代 (Old Gen)**: 存放生命周期长的对象。

## 3. 垃圾回收机制 (Garbage Collection)
- **如何判断对象死亡?**
  - **引用计数法** (Java 不采用，无法处理循环引用)。
  - **可达性分析算法 (GCRoots)** (Java 采用)。
- **常见 GC 算法**:
  - **标记-清除**: 产生内存碎片。
  - **复制算法**: 适用于新生代。
  - **标记-整理**: 适用于老年代。
  - **分代收集算法**: 根据对象存活周期采用不同算法。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 JVM 内存模型与 GC 知识。
