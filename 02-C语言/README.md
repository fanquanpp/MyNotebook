# 02-C 语言与算法 | C &amp; Algorithms

&gt; @Author: fanquanpp
&gt; @Version: v3.0.0
&gt; @Created: 2026-04-05

## 1. 简介 | Introduction

本模块聚焦于 C 语言核心技能的系统学习，涵盖从基础语法到高级应用的完整路径。内容包括语法规范、内存管理、指针操作、数据结构与经典算法实现，为系统编程、性能优化和底层开发奠定坚实基础。

## 2. 目录索引 | Directory Index

### 快速查阅 | Quick Reference

- [V_02-C语言名词注释查阅表.md](./V_02-C语言名词注释查阅表.md)

### 基础语法 | Basics

- [C02_101-概述.md](./C02_101-概述.md)
- [C02_102-程序结构与语法.md](./C02_102-程序结构与语法.md)
- [C02_103-数据类型.md](./C02_103-数据类型.md)
- [C02_104-变量与常量.md](./C02_104-变量与常量.md)
- [C02_105-运算符与表达式.md](./C02_105-运算符与表达式.md)
- [C02_106-控制流.md](./C02_106-控制流.md)
- [C02_107-函数.md](./C02_107-函数.md)
- [C02_108-数组.md](./C02_108-数组.md)
- [C02_109-指针.md](./C02_109-指针.md)
- [C02_110-结构体与联合体.md](./C02_110-结构体与联合体.md)
- [C02_111-文件IO.md](./C02_111-文件IO.md)

### 高级特性 | Advanced

- [G02_201-C语言高级特性与系统编程.md](./G02_201-C语言高级特性与系统编程.md)

### 算法与数据结构 | Algorithms &amp; Data Structures

- [SFDE02_301-binary_search_c.c](./算法与数据结构/代码示例/SFDE02_301-binary_search_c.c)
- [SFDE02_302-bubble_sort_c.c](./算法与数据结构/代码示例/SFDE02_302-bubble_sort_c.c)
- [SFDE02_303-merge_sort_c.c](./算法与数据结构/代码示例/SFDE02_303-merge_sort_c.c)
- [SFDE02_304-quick_sort_c.c](./算法与数据结构/代码示例/SFDE02_304-quick_sort_c.c)
- [SFDE02_401-linked_list_c.c](./算法与数据结构/代码示例/SFDE02_401-linked_list_c.c)
- [SFDE02_402-queue_c.c](./算法与数据结构/代码示例/SFDE02_402-queue_c.c)
- [SFDE02_403-stack_c.c](./算法与数据结构/代码示例/SFDE02_403-stack_c.c)

## 3. 基础篇核心知识点 | Basics Core Knowledge

- **概述**：C 语言发展历史与特点、应用领域、环境搭建、标准版本
- **程序结构**：基本结构、注释、标识符、编译过程、预处理指令
- **数据类型**：基本类型、内存布局、类型转换、范围与精度
- **变量与常量**：声明初始化、作用域、存储类、宏定义、枚举
- **运算符**：算术、关系、逻辑、位、赋值、条件、优先级
- **控制流**：分支、循环、跳转语句
- **函数**：定义、参数传递、返回值、递归、内联函数、可变参数
- **数组**：一维/多维数组、字符串、内存布局、作为函数参数
- **指针**：基础概念、运算、与数组关系、函数指针、多级指针
- **结构体**：定义、内存对齐、联合体、typedef
- **文件IO**：文件流、读写操作、定位、错误处理

## 4. 数据结构与算法 | Data Structures &amp; Algorithms

### 数据结构列表 | Data Structures

| 结构名称 | 源码文件 | 难度 | 标签 | 说明 |
| :--- | :--- | :--- | :--- | :--- |
| 单向链表 | [SFDE02_401-linked_list_c.c](./算法与数据结构/代码示例/SFDE02_401-linked_list_c.c) | 基础 | 链表 | 动态内存分配的核心实现 |
| 顺序栈 | [SFDE02_403-stack_c.c](./算法与数据结构/代码示例/SFDE02_403-stack_c.c) | 基础 | 线性结构 | 数组实现的后进先出 (LIFO) 结构 |
| 循环队列 | [SFDE02_402-queue_c.c](./算法与数据结构/代码示例/SFDE02_402-queue_c.c) | 基础 | 线性结构 | 数组实现的先进先出 (FIFO) 结构 |

### 算法列表 | Algorithms

| 算法名称 | 源码文件 | 难度 | 标签 | 复杂度 | 说明 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 冒泡排序 | [SFDE02_302-bubble_sort_c.c](./算法与数据结构/代码示例/SFDE02_302-bubble_sort_c.c) | 入门 | 排序 | $O(n^2)$ | 基础交换排序，适合教学 |
| 快速排序 | [SFDE02_304-quick_sort_c.c](./算法与数据结构/代码示例/SFDE02_304-quick_sort_c.c) | 进阶 | 排序 | $O(n \log n)$ | 原地分治排序，工业界常用 |
| 归并排序 | [SFDE02_303-merge_sort_c.c](./算法与数据结构/代码示例/SFDE02_303-merge_sort_c.c) | 进阶 | 排序 | $O(n \log n)$ | 稳定排序，适合链表及外部排序 |
| 二分搜索 | [SFDE02_301-binary_search_c.c](./算法与数据结构/代码示例/SFDE02_301-binary_search_c.c) | 基础 | 搜索 | $O(\log n)$ | 在有序序列中快速查找 |

### 运行指南 | How to Run

所有 `.c` 文件均包含独立的 `main` 函数及单元测试。

```bash
# 示例：运行冒泡排序
gcc SFDE02_302-bubble_sort_c.c -o bubble_sort
./bubble_sort
```

## 5. 环境要求与快速开始 | Environment &amp; Quick Start

### 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：GCC 11+, Clang 14+, MSVC 2022
- **最小配置**：1 核心 CPU / 512MB 内存 / 100MB 磁盘

### 快速开始 | Quick Start

```bash
# 1. 验证 GCC 安装
gcc --version

# 2. 编译并运行 Hello World
echo '#include &lt;stdio.h&gt;\nint main(){printf("Hello C\n");return 0;}' &gt; hello.c
gcc hello.c -o hello
./hello
```

## 6. 延伸阅读 | Further Reading

- [C 语言标准文档](https://www.iso.org/standard/74528.html)
- [The C Programming Language](https://www.amazon.com/C-Programming-Language-2nd/dp/0131103628) - Brian W. Kernighan &amp; Dennis M. Ritchie
- 本仓库：[13-C++](../13-C++/README.md)

## 7. 更新日志 | Changelog

- **2026-05-02**
  - 优化 README 结构，删除重复内容，添加快速查阅索引
  - 删除 mermaid 图表
  - 优化简介描述
  - 修复转义错误

- **2026-04-18**
  - 完成仓库 3.0 结构优化规划，统一文件命名规范

- **2026-04-06**
  - 深度优化 README.md 文件，完善结构和内容

- **2026-04-05**
  - 体系化升级 README，补全分册索引
