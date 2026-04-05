# C++ 数据结构 | C++ Data Structures

<!--
作者：fanquanpp
创建日期：2026-04-06
版本：v1.0.0
-->

## 1. 项目简介 | Introduction

本目录收录了使用 C++ 实现的核心数据结构，包括链表、栈、队列、树等常见数据结构的实现。

This directory contains C++ implementations of core data structures, including linked lists, stacks, queues, trees, and other common data structures.

## 2. 数据结构列表 | Data Structures List

| 数据结构 (Data Structure) | 源码文件 (Source) | 难度 (Difficulty) | 标签 (Tags) | 说明 (Description) |
| :--- | :--- | :--- | :--- | :--- |
| 单链表 (Singly Linked List) | [linked_list_cpp.cpp](./linked_list_cpp.cpp) | 基础 | 链表 | 支持插入、删除、遍历操作 |
| 栈 (Stack) | [stack_cpp.cpp](./stack_cpp.cpp) | 基础 | 栈 | 后进先出 (LIFO) 数据结构 |
| 队列 (Queue) | [queue_cpp.cpp](./queue_cpp.cpp) | 基础 | 队列 | 先进先出 (FIFO) 数据结构 |
| 二叉搜索树 (Binary Search Tree) | [binary_search_tree_cpp.cpp](./binary_search_tree_cpp.cpp) | 中级 | 树 | 左小右大，支持有序遍历 |
| 图 (Graph) | [graph_cpp.cpp](./graph_cpp.cpp) | 高级 | 图 | 支持邻接表表示和遍历算法 |
| 哈希表 (Hash Table) | [hash_table_cpp.cpp](./hash_table_cpp.cpp) | 中级 | 哈希 | 支持快速查找和插入 |

## 3. 运行指南 | How to Run

```bash
# 编译并运行数据结构示例
g++ -std=c++11 linked_list_cpp.cpp -o linked_list
g++ -std=c++11 stack_cpp.cpp -o stack
g++ -std=c++11 queue_cpp.cpp -o queue

# 运行示例
./linked_list
./stack
./queue
```

## 4. 核心特色 | Key Features

- **现代 C++**：使用 C++11 及以上标准的特性
- **完整实现**：每个数据结构都有完整的实现和测试用例
- **详细注释**：代码中包含详细的中英文注释，便于理解
- **性能分析**：提供时间复杂度和空间复杂度分析
- **STL 兼容**：设计风格与 STL 保持一致，便于集成

## 5. 学习建议 | Learning Guide

1. 从基础数据结构开始学习，如链表、栈和队列
2. 理解每种数据结构的基本原理和适用场景
3. 尝试自己实现这些数据结构，加深对它们的理解
4. 学习 STL 中对应的数据结构实现，对比自己的实现
5. 在实际项目中应用这些数据结构，提高代码效率

## 6. 延伸阅读 | Further Reading

- [C++ 标准库](https://en.cppreference.com/w/cpp)
- [数据结构与算法分析](https://www.amazon.com/Introduction-Algorithms-4th-Thomas-Cormen/dp/026204630X) <!-- nofollow -->
- [Effective STL](https://www.amazon.com/Effective-STL-Specific-Standard-Template/dp/0201749629) <!-- nofollow -->

## 7. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 创建 C++ 数据结构目录，添加 README.md 文件，版本为 v1.0.0