# 01-C 语言与算法 | C & Algorithms

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.1
-->

## 1. 项目简介 | Introduction

本分册收录 C 语言基础、内存管理及经典算法实现。旨在为系统编程与高性能开发奠定坚实基础。

This module covers C language basics, memory management, and classic algorithms for systems and high-performance programming.

## 2. 目录索引 | Directory Index

### 基础语法 | Basics
- [01-概述.md](./基础/01-概述.md)
- [02-程序结构与语法.md](./基础/02-程序结构与语法.md)
- [03-数据类型.md](./基础/03-数据类型.md)
- [04-变量与常量.md](./基础/04-变量与常量.md)
- [05-运算符与表达式.md](./基础/05-运算符与表达式.md)
- [06-控制流.md](./基础/06-控制流.md)
- [07-函数.md](./基础/07-函数.md)
- [08-数组.md](./基础/08-数组.md)
- [09-指针.md](./基础/09-指针.md)
- [10-结构体与联合体.md](./基础/10-结构体与联合体.md)
- [11-文件IO.md](./基础/11-文件IO.md)
- [基础篇 README](./基础/README.md)

### 算法实现 | Algorithms
- [binary_search_c.c](./算法/binary_search_c.c)
- [bubble_sort_c.c](./算法/bubble_sort_c.c)
- [merge_sort_c.c](./算法/merge_sort_c.c)
- [quick_sort_c.c](./算法/quick_sort_c.c)
- [算法篇 README](./算法/README.md)

### 数据结构 | Data Structures
- [linked_list_c.c](./数据结构/data_structures/linked_list_c.c)
- [queue_c.c](./数据结构/queue_c.c)
- [stack_c.c](./数据结构/stack_c.c)
- [数据结构篇 README](./数据结构/README.md)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：GCC 11+, Clang 14+, MSVC 2022
- **最小配置**：1 Core CPU / 512MB RAM / 100MB Disk

## 4. 快速开始 | Quick Start

```bash
# 1. 验证 GCC 安装
gcc --version

# 2. 编译并运行 Hello World
echo '#include <stdio.h>\nint main(){printf("Hello C\n");return 0;}' > hello.c
gcc hello.c -o hello
./hello
```

## 5. 核心特色 | Key Features

- **深度解析**：每个知识点独立成文件，详细讲解原理与应用
- **代码示例**：提供完整可运行的代码示例，包含详细注释
- **内存管理**：重点讲解 C 语言内存管理技巧与最佳实践
- **算法实现**：收录经典算法的 C 语言实现，包含复杂度分析

## 6. 贡献指南 | Contribution Guide

- **编码规范**：遵循 [GNU Coding Standards](https://www.gnu.org/prep/standards/)
- **内存安全**：所有示例需通过 Valgrind 内存泄露检查
- **提交规范**：使用 Conventional Commits

## 7. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
