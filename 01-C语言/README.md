# 01-C 语言与算法 | C & Algorithms

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 1. 项目简介 | Introduction
本分册收录 C 语言基础、内存管理及经典算法实现。旨在为系统编程与高性能开发奠定坚实基础。
This module covers C language basics, memory management, and classic algorithms for systems and high-performance programming.

## 2. 目录索引 | Directory Index
- [基础语法 (一知识点一文件) | Basics](./basics/README.md)
- [算法实现 (C 实现) | Algorithms](./algorithms/README.md)
- [数据结构 (C 实现) | Data Structures](./数据结构/README.md)

## 3. 环境要求 | Environment Requirements
- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：GCC 11+, Clang 14+, MSVC 2022
- **最小配置**：1 Core CPU / 512MB RAM / 100MB Disk

## 4. 快速开始 | Quick Start
```bash
# 1. 验证 GCC 安装
gcc --version

# 2. 编译并运行 Hello World
echo '#include <stdio.h>\nint main(){printf("Hello C\\n");return 0;}' > hello.c
gcc hello.c -o hello
./hello
```

## 5. 贡献指南 | Contribution Guide
- **编码规范**：遵循 [GNU Coding Standards](https://www.gnu.org/prep/standards/)。
- **内存安全**：所有示例需通过 Valgrind 内存泄露检查。
- **提交规范**：使用 Conventional Commits。

## 6. 许可证信息 | License
- **SPDX-Identifier**: [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **License Path**: [LICENSE](../LICENSE)
- **Copyright**: 2024-2026 fanquanpp

---
**更新日志 | Changelog**
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始。
