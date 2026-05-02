# C++ 教程 | C++ Tutorial

> @Author: fanquanpp
> @Version: v3.5.0
> @Category: C++ Overview
> @Description: C++ 完整教程：概述与标准、语法类型系统、指针引用、内存管理、面向对象、模板与STL、异常与性能优化。 | Complete C++ tutorial covering overview, syntax, pointers, OOP, templates, STL, exceptions, and performance optimization.

## 1. 简介 | Introduction

本教程涵盖 C++ 核心概念和高级应用，包括概述与标准、语法类型系统、指针引用与内存管理、面向对象、模板与STL、异常处理与性能优化。作为一种高性能系统编程语言，C++ 广泛应用于游戏开发、嵌入式系统、高频交易、图形渲染等领域。

## 2. 目录索引 | Directory Index

### 快速查阅 | Quick Reference

- [V13_101-C++名词注释查阅表.md](./V13_101-C++名词注释查阅表.md)

### 基础篇 | Basics

- [C13_101-概述与标准.md](./C13_101-概述与标准.md)
- [C13_102-基础语法与类型系统.md](./C13_102-基础语法与类型系统.md)
- [C13_103-指针引用与内存管理.md](./C13_103-指针引用与内存管理.md)
- [C13_104-面向对象.md](./C13_104-面向对象.md)
- [C13_105-模板与STL.md](./C13_105-模板与STL.md)
- [C13_106-异常与性能优化.md](./C13_106-异常与性能优化.md)

### 算法与数据结构 | Algorithms & Data Structures

- [dijkstra_cpp.cpp](./算法与数据结构/代码示例/SFDE13_301-dijkstra_cpp.cpp)
- [kruskal_cpp.cpp](./算法与数据结构/代码示例/SFDE13_302-kruskal_cpp.cpp)
- [lcs_cpp.cpp](./算法与数据结构/代码示例/SFDE13_303-lcs_cpp.cpp)
- [lis_cpp.cpp](./算法与数据结构/代码示例/SFDE13_304-lis_cpp.cpp)
- [merge_sort_cpp.cpp](./算法与数据结构/代码示例/SFDE13_305-merge_sort_cpp.cpp)
- [segment_tree_cpp.cpp](./算法与数据结构/代码示例/SFDE13_306-segment_tree_cpp.cpp)
- [trie_cpp.cpp](./算法与数据结构/代码示例/SFDE13_307-trie_cpp.cpp)
- [linked_list_cpp.cpp](./算法与数据结构/代码示例/SFDE13_401-linked_list_cpp.cpp)

### 进阶篇 | Advanced

- [G13_201-调试与性能分析.md](./G13_201-调试与性能分析.md)
- [G13_202-项目实战.md](./G13_202-项目实战.md)

## 3. 环境要求 | Environment Requirements

- **编译器**：GCC 11+, Clang 14+, MSVC (Visual Studio 2022+)
- **构建工具**：CMake 3.20+, Make, Ninja
- **IDE**：VS Code, CLion, Visual Studio
- **标准**：C++11 及以上，建议 C++17 或 C++20

## 4. 快速开始 | Quick Start

1. 安装 GCC 或 Clang 编译器
2. 创建第一个 C++ 文件：`hello.cpp`
3. 编译并运行：
   ```bash
   g++ -std=c++17 hello.cpp -o hello
   ./hello
   ```

## 5. 学习路径 | Learning Path

`概述与标准` -> `基础语法` -> `指针与内存` -> `面向对象` -> `模板与STL` -> `异常处理` -> `性能优化` -> `项目实战`

## 6. 核心技术 | Key Features

- **概述与标准**：C++ 发展历史、各标准特性对比
- **语法类型系统**：基本类型、枚举、结构体、类型推断
- **指针与内存**：指针运算、智能指针、内存布局
- **面向对象**：类、继承、多态、虚函数、RTTI
- **模板与STL**：模板元编程、容器、算法、迭代器
- **异常处理**：异常安全、 noexcept、移动语义
- **性能优化**：编译器优化、内存对齐、缓存友好

## 7. 阅读建议 | Reading Guide

1. 按照学习路径的顺序学习，从概述开始
2. 注重实践，多编写代码加深理解
3. 特别关注指针、智能指针和内存管理，这是 C++ 的核心
4. 学习 STL 时，理解容器和算法的选择场景

## 8. 延伸阅读 | Further Reading

- [C++ 官方文档](https://isocpp.org/)
- [cppreference](https://en.cppreference.com/)
- [C++ Core Guidelines](https://github.com/isocpp/CppCoreGuidelines)
- 本仓库：[02-C语言](../02-C语言/README.md)

## 9. 贡献指南 | Contribution Guide

- 推荐使用 Gitflow 工作流提交 PR
- Commit message 遵循 `feat/fix/docs: 描述` 规范
- 提供完整的代码示例和编译结果

## 10. 联系方式 | Contact Information

- 邮箱：fanquanpangpiing@163.com
- QQ：83924393
- 欢迎提交问题或反馈

## 11. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- **2026-05-03**
  - 修复编码问题，重建 README 结构

- **2026-04-18**
  - 完成 GitHub 仓库 3.0 结构优化规划，统一文件命名规范

- **2026-04-06**
  - 深度优化 README.md 文件，完善结构和内容

- **2026-04-05**
  - 初始版本 C++ 基础与进阶内容规划
