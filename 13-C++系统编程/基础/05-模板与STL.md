# 泛型编程与 STL (Generics & STL)

> @Author: Anonymous
> @Category: C++ Basics
> @Description: 模板 (Templates)、标准模板库 (STL) 容器、迭代器与算法。 | Templates, STL containers, iterators, and algorithms.

## 1. 模板 (Templates)
实现代码复用的核心。
### 1.1 函数模板
```cpp
template <typename T>
T add(T a, T b) { return a + b; }
```
### 1.2 类模板
```cpp
template <typename T>
class Stack { ... };
```

## 2. STL (Standard Template Library)
包含四大部分：容器、迭代器、算法、仿函数。

### 2.1 常用容器 (Containers)
- **序列容器**: `vector` (动态数组), `list` (双向链表), `deque`, `array` (固定大小)。
- **关联容器**: `set`, `map` (红黑树实现, 有序)。
- **无序容器**: `unordered_set`, `unordered_map` (哈希表, C++11)。

### 2.2 算法 (Algorithms)
位于 `<algorithm>` 库。
- `std::sort`, `std::find`, `std::reverse`, `std::binary_search`。

## 3. 迭代器 (Iterators)
连接容器与算法的桥梁。
```cpp
for (auto it = vec.begin(); it != vec.end(); ++it) { ... }
```

---
### 更新日志 (Changelog)
- 2026-04-05: 细化 C++ 模板与 STL 容器用法。
