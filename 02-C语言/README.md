# 02-C 语言与算法 | C & Algorithms

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.2
-->

## 1. 项目简介 | Introduction

本模块是 fanquanpp 个人综合学习笔记库中的 C 语言与算法部分，专注于 C 语言基础语法、内存管理、指针操作及经典算法与数据结构的实现。作为系统编程的基础语言，C 语言是理解计算机底层原理的关键，本模块旨在为学习者提供从入门到进阶的系统化学习路径，为系统编程与高性能开发奠定坚实基础。

This module focuses on C language fundamentals, memory management, pointer operations, and implementations of classic algorithms and data structures. As a foundational language for systems programming, C is crucial for understanding computer底层 principles, and this module aims to provide a systematic learning path from beginner to advanced levels, laying a solid foundation for systems programming and high-performance development.

### 模块定位

- **C 语言学习指南**：从基础语法到高级特性，全面覆盖 C 语言核心知识点
- **算法与数据结构实现**：提供经典算法和数据结构的 C 语言实现，包含详细注释和复杂度分析
- **系统编程基础**：重点讲解内存管理、指针操作等系统编程核心概念
- **实战导向**：通过实际代码示例和练习，帮助学习者掌握 C 语言的实际应用

**使用说明：**

- 本模块已开放为公共资源，允许他人访问和克隆
- 禁止直接修改本仓库内容
- 他人使用本模块内容时出现的任何问题与作者无关

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
- **最小配置**：1 核心 CPU / 512MB 内存 / 100MB 磁盘

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
- **结构清晰**：按照基础语法、算法实现和数据结构组织内容
- **双语注释**：关键概念和代码提供中英文对照注释

## 6. 阅读建议 | Reading Guide

1. 按照基础语法 → 数据结构 → 算法实现的顺序学习，循序渐进
2. 结合实际编程练习，加深对 C 语言概念的理解
3. 特别关注指针和内存管理部分，这是 C 语言的核心难点
4. 尝试自己实现算法和数据结构，巩固所学知识

## 7. 延伸阅读 | Further Reading

- [C 语言标准文档](https://www.iso.org/standard/74528.html) <!-- nofollow -->
- [The C Programming Language](https://www.amazon.com/C-Programming-Language-2nd/dp/0131103628) by Brian Kernighan and Dennis Ritchie
- 本仓库：[14-C++系统编程](../14-C++系统编程/README.md)

## 8. 贡献指南 | Contribution Guide

- **编码规范**：遵循 [GNU Coding Standards](https://www.gnu.org/prep/standards/)
- **内存安全**：所有示例需通过 Valgrind 内存泄露检查
- **提交规范**：使用 Conventional Commits

## 9. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：1839243393
- 欢迎提意见交流或反馈问题

## 10. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.2
- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
