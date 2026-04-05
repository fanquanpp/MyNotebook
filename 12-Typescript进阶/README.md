# 12-Typescript 进阶 | Advanced TypeScript Engineering

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.1
-->

## 1. 项目简介 | Introduction

本分册深入探讨 TypeScript 强类型系统及其在大型工程中的应用，涵盖从基础类型到复杂工程化配置的全过程。

This module explores TypeScript's strong typing system and its application in large-scale engineering, from basic types to complex configurations.

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与环境.md](./基础/01-概述与环境.md)
- [02-基础类型系统.md](./基础/02-基础类型系统.md)
- [03-接口与类型.md](./基础/03-接口与类型.md)
- [04-泛型与工具类型.md](./基础/04-泛型与工具类型.md)
- [05-模块与命名空间.md](./基础/05-模块与命名空间.md)
- [06-高级类型技巧.md](./基础/06-高级类型技巧.md)
- [基础篇 README](./基础/README.md)

### 进阶篇 | Advanced
- [01-编译与性能优化.md](./进阶/01-编译与性能优化.md)
- [02-工程化配置.md](./进阶/02-工程化配置.md)
- [03-类型声明与模块解析.md](./进阶/03-类型声明与模块解析.md)

### 算法篇 | Algorithms
- [binary_search_ts.ts](./算法/binary_search_ts.ts)
- [quick_sort_ts.ts](./算法/quick_sort_ts.ts)
- [算法篇 README](./算法/README.md)

### 数据结构篇 | Data Structures
- [linked_list_ts.ts](./数据结构/linked_list_ts.ts)
- [union_find_ts.ts](./数据结构/union_find_ts.ts)
- [数据结构篇 README](./数据结构/README.md)

### 示例篇 | Examples
- [advanced_types.ts](./示例/advanced_types.ts)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：Node.js 18+, TypeScript 5.x
- **最小配置**：2 Core CPU / 4GB RAM / 1GB Disk

## 4. 快速开始 | Quick Start

```bash
# 1. 安装 TypeScript
npm install -g typescript

# 2. 验证安装
tsc --version

# 3. 运行首个示例
tsc --strict 基础/02-基础类型系统.ts --noEmit
```

## 5. 学习路线 | Learning Path

`概述与环境` → `基础类型系统` → `接口与类型` → `泛型与工具类型` → `模块与命名空间` → `高级类型技巧` → `编译与性能优化` → `工程化配置` → `类型声明与模块解析`

## 6. 核心特色 | Key Features

- **深度解析**：每个知识点独立成文件，详细讲解原理与应用
- **类型系统**：深入探讨 TypeScript 强类型系统的设计与应用
- **工程化**：涵盖大型 TypeScript 项目的配置与优化
- **性能优化**：重点讲解 TypeScript 编译与运行性能优化

## 7. 贡献指南 | Contribution Guide

- **编码规范**：遵循 [TypeScript Style Guide](https://github.com/microsoft/TypeScript/wiki/Coding-guidelines)
- **严苛模式**：所有示例代码必须通过 `--strict` 校验
- **提交规范**：使用 Conventional Commits
- **测试**：提供完整的类型测试和运行测试

## 8. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
