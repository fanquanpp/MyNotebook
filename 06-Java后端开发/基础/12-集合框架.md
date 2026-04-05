# 集合框架详解 (Collections Framework)

> @Author: Anonymous
> @Category: Java Basics
> @Description: List, Set, Map 的继承体系、常用实现类及性能分析。 | Inheritance, implementations, and performance of List, Set, and Map.

## 1. 集合体系概览 (Hierarchy)
Java 集合类主要派生自两个根接口：
- **`Collection`**: 存放独立元素。
  - `List`: 有序，可重复。
  - `Set`: 无序，不可重复。
- **`Map`**: 存放键值对 (Key-Value)。

## 2. `List` 实现类
- **`ArrayList`**: 基于动态数组。查询快 (`O(1)`)，增删慢 (`O(n)`)。**最常用**。
- **`LinkedList`**: 基于双向链表。增删快，查询慢。
- **`Vector`**: 线程安全版本的 ArrayList (旧，不推荐)。

## 3. `Set` 实现类
- **`HashSet`**: 基于 `HashMap` 实现。无序，不可重复。
- **`TreeSet`**: 基于红黑树。有序 (按自然顺序或比较器排序)。
- **`LinkedHashSet`**: 维护插入顺序。

## 4. `Map` 实现类
- **`HashMap`**: 键值对。允许 `null` 键/值。无序。**最常用**。
- **`TreeMap`**: 键有序的 Map。
- **`ConcurrentHashMap`**: 线程安全且高性能的 Map (JUC 包)。

## 5. 常用工具类 (`java.util.Collections`)
- **`sort(List)`**: 对列表排序。
- **`reverse(List)`**: 反转列表。
- **`shuffle(List)`**: 打乱顺序。
- **`synchronizedList(List)`**: 将非线程安全集合转为线程安全。

## 6. 遍历方式
1. `Iterator` 迭代器。
2. 增强型 for (for-each)。
3. Java 8 `forEach` (Lambda)。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化集合体系及常用实现类性能对比。
