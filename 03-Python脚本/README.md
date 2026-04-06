# 03-Python 脚本 | Python Automation & Data Processing

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.2
-->

## 1. 项目简介 | Introduction

本模块是 fanquanpp 个人综合学习笔记库中的 Python 脚本部分，专注于 Python 脚本开发、办公自动化和数据处理。作为一种优雅、高效的编程语言，Python 在自动化脚本、数据分析、Web 开发等领域有着广泛应用，本模块旨在为开发者提供从基础语法到高级应用的系统化 Python 学习路径。

This module focuses on Python scripting, office automation, and data processing. As an elegant and efficient programming language, Python is widely used in automation scripts, data analysis, web development, and other fields, and this module aims to provide a systematic Python learning path from basic syntax to advanced applications.

### 模块定位

- **Python 学习指南**：从环境搭建到核心语法，全面覆盖 Python 核心知识点
- **自动化脚本资源**：提供办公自动化、文件处理等实用脚本示例
- **数据处理工具**：收录数据分析、处理和可视化的实践案例
- **算法与数据结构**：提供经典算法和数据结构的 Python 实现

**使用说明：**

- 本模块已开放为公共资源，允许他人访问和克隆
- 禁止直接修改本仓库内容
- 他人使用本模块内容时出现的任何问题与作者无关

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与环境.md](./基础/01-概述与环境.md)
- [02-程序结构与基础语法.md](./基础/02-程序结构与基础语法.md)
- [03-基础数据类型.md](./基础/03-基础数据类型.md)
- [04-变量与常量.md](./基础/04-变量与常量.md)
- [05-运算符与表达式.md](./基础/05-运算符与表达式.md)
- [06-控制流.md](./基础/06-控制流.md)
- [07-函数与Lambda.md](./基础/07-函数与Lambda.md)
- [08-内置数据结构.md](./基础/08-内置数据结构.md)
- [09-推导式与生成器.md](./基础/09-推导式与生成器.md)
- [10-面向对象.md](./基础/10-面向对象.md)
- [11-异常处理.md](./基础/11-异常处理.md)
- [12-文件IO与with.md](./基础/12-文件IO与with.md)
- [13-模块与包.md](./基础/13-模块与包.md)
- [基础篇 README](./基础/README.md)

### 算法篇 | Algorithms
- [binary_search_py.py](./算法/binary_search_py.py)
- [quick_sort_py.py](./算法/quick_sort_py.py)
- [算法篇 README](./算法/README.md)

### 数据结构篇 | Data Structures
- [binary_search_tree_py.py](./数据结构/data_structures/binary_search_tree_py.py)
- [fenwick_tree_py.py](./数据结构/data_structures/fenwick_tree_py.py)
- [heap_py.py](./数据结构/data_structures/heap_py.py)
- [linked_list_py.py](./数据结构/data_structures/linked_list_py.py)
- [segment_tree_py.py](./数据结构/data_structures/segment_tree_py.py)
- [trie_py.py](./数据结构/data_structures/trie_py.py)
- [union_find_py.py](./数据结构/data_structures/union_find_py.py)
- [数据结构篇 README](./数据结构/README.md)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：Python 3.10 / 3.12+
- **最小配置**：1 核心 CPU / 1GB 内存 / 1GB 磁盘

## 4. 快速开始 | Quick Start

```bash
# 1. 验证 Python 版本
python --version

# 2. 运行首个脚本
python -c "print('Hello, Pythonic World!')"

# 3. 创建并进入虚拟环境
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
.venv\Scripts\activate     # Windows
```

## 5. 学习路线 | Learning Path

`概述与环境` → `程序结构与基础语法` → `基础数据类型` → `变量与常量` → `运算符与表达式` → `控制流` → `函数与Lambda` → `内置数据结构` → `推导式与生成器` → `面向对象` → `异常处理` → `文件IO与with` → `模块与包` → `算法实现` → `数据结构`

## 6. 核心特色 | Key Features

- **脚本自动化**：专注于办公自动化、文件处理等实用脚本开发
- **数据处理**：提供数据分析、处理和可视化的实践案例
- **生态丰富**：涵盖 Python 丰富的第三方库和工具生态
- **代码简洁**：强调 Python 优雅、简洁的语法风格
- **跨平台**：确保代码在 Windows、Linux、macOS 上的可移植性
- **性能优化**：收录 Python 性能优化的最佳实践和技巧
- **双语注释**：关键概念和代码提供中英文对照注释

## 7. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从概述与环境开始，逐步掌握 Python 的各种特性
2. 结合实际项目练习，加深对 Python 概念的理解
3. 特别关注函数与模块和面向对象部分，这是 Python 编程的核心
4. 尝试使用 Python 实现一些自动化脚本，巩固所学知识

## 8. 延伸阅读 | Further Reading

- [Python 官方文档](https://docs.python.org/3/) <!-- nofollow -->
- [PEP 8 编码规范](https://peps.python.org/pep-0008/) <!-- nofollow -->
- [Real Python](https://realpython.com/) <!-- nofollow -->

## 9. 贡献指南 | Contribution Guide

- **编码规范**：严格遵循 [PEP 8](https://peps.python.org/pep-0008/)
- **提交规范**：使用 Conventional Commits
- **Lint 工具**：推荐使用 `ruff` 或 `flake8`
- **测试**：提供完整的测试用例

## 10. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：1839243393
- 欢迎提意见交流或反馈问题

## 11. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.2
- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
