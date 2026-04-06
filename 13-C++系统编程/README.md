# 13-C++ 系统编程 | C++ System Programming

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.2
-->

## 1. 项目简介 | Introduction

本模块是 fanquanpp 个人综合学习笔记库中的 C++ 系统编程部分，专注于 C++11 及以后标准的现代 C++ 特性、面向对象编程、泛型编程、内存管理、多线程编程以及系统级编程技术。作为一种强大的系统编程语言，C++ 在操作系统、游戏引擎、嵌入式系统等领域有着广泛应用，本模块旨在为开发者提供从基础语法到高级系统编程的系统化 C++ 学习路径。

This module focuses on modern C++ features from C++11 onwards, object-oriented programming, generic programming, memory management, multithreading, and system-level programming techniques. As a powerful system programming language, C++ is widely used in operating systems, game engines, embedded systems, and other fields, and this module aims to provide a systematic C++ learning path from basic syntax to advanced system programming.

### 模块定位

- **C++ 系统编程指南**：从现代 C++ 特性到系统级编程，全面覆盖 C++ 核心知识点
- **高性能开发资源**：提供内存管理、多线程、性能优化等高性能应用开发技巧
- **工程实践参考**：包含典型项目实战案例和代码规范
- **调试与优化指南**：重点讲解 C++ 调试技巧和性能优化策略

**使用说明：**

- 本模块已开放为公共资源，允许他人访问和克隆
- 禁止直接修改本仓库内容
- 他人使用本模块内容时出现的任何问题与作者无关

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与标准.md](./基础/01-概述与标准.md)
- [02-基础语法与类型系统.md](./基础/02-基础语法与类型系统.md)
- [03-指针引用与内存管理.md](./基础/03-指针引用与内存管理.md)
- [04-面向对象.md](./基础/04-面向对象.md)
- [05-模板与STL.md](./基础/05-模板与STL.md)
- [06-异常与性能优化.md](./基础/06-异常与性能优化.md)
- [基础篇 README](./基础/README.md)

### 进阶篇 | Advanced
- [01-调试与性能分析.md](./进阶/01-调试与性能分析.md)
- [02-项目实战.md](./进阶/02-项目实战.md)
- [进阶篇 README](./进阶/README.md)

### 数据结构篇 | Data Structures
- [数据结构篇 README](./数据结构/README.md)

### 算法篇 | Algorithms
- [dijkstra_cpp.cpp](./算法/dijkstra_cpp.cpp)
- [kruskal_cpp.cpp](./算法/kruskal_cpp.cpp)
- [lcs_cpp.cpp](./算法/lcs_cpp.cpp)
- [lis_cpp.cpp](./算法/lis_cpp.cpp)
- [merge_sort_cpp.cpp](./算法/merge_sort_cpp.cpp)
- [segment_tree_cpp.cpp](./算法/segment_tree_cpp.cpp)
- [trie_cpp.cpp](./算法/trie_cpp.cpp)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **编译器**：GCC 7+, Clang 5+, MSVC 2019+
- **构建工具**：CMake 3.10+
- **最小配置**：2 核心 CPU / 4GB 内存 / 2GB 磁盘

## 4. 快速开始 | Quick Start

```bash
# 1. 验证编译器
g++ --version

# 2. 编译并运行示例
g++ -std=c++17 算法/merge_sort_cpp.cpp -o merge_sort
./merge_sort
```

## 5. 学习路线 | Learning Path

`概述与标准` → `基础语法与类型系统` → `指针引用与内存管理` → `面向对象` → `模板与STL` → `异常与性能优化` → `调试与性能分析` → `项目实战`

## 6. 核心特色 | Key Features

- **现代 C++**：专注于 C++11 及以后的标准特性
- **系统编程**：涵盖内存管理、多线程、文件系统等系统级编程
- **性能优化**：提供详细的性能调优技巧和最佳实践
- **工程实践**：包含典型项目实战案例和代码规范
- **结构清晰**：按照基础和进阶组织内容，便于系统学习
- **双语注释**：关键概念和代码提供中英文对照注释

## 7. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从快速入门开始，逐步掌握 C++ 的各种特性
2. 结合实际项目练习，加深对 C++ 系统编程的理解
3. 特别关注调试与性能优化部分，这是系统编程的核心
4. 尝试使用 C++ 构建一个完整的系统级项目，巩固所学知识

## 8. 延伸阅读 | Further Reading

- [C++ 官方文档](https://en.cppreference.com/w/) <!-- nofollow -->
- [C++ 标准库](https://en.cppreference.com/w/cpp)
- [现代 C++ 教程](https://github.com/changkun/modern-cpp-tutorial) <!-- nofollow -->

## 9. 技术栈与工具 | Technology Stack & Tools

| 英文（中文） | 说明 |
| :--- | :--- |
| **GCC** / **Clang** / **MSVC（微软 C++ 编译器）** | 编译器 |
| **CMake（跨平台构建系统）** | 工程组织 |
| **VS Code / CLion** | 集成开发环境 |

## 10. 关联章节 | Related Sections

- **C（C 语言）**：[`02-C语言`](../02-C语言/README.md)

## 11. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：1839243393
- 欢迎提意见交流或反馈问题

## 12. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.2
- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 统一模块说明与双语标题
