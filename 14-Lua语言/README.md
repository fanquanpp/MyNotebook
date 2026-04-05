# 14-Lua 语言 | Lua Scripting

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.1
-->

## 1. 项目简介 | Introduction

本分册聚焦 Lua 语言的极简语法、Table 核心数据结构、元表机制及协程，服务于游戏逻辑与嵌入式扩展。

This module focuses on Lua's minimalist syntax, Table core data structure, metatable mechanism, and coroutines, serving game logic and embedded extensions.

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与环境.md](./基础/01-概述与环境.md)
- [02-基础语法.md](./基础/02-基础语法.md)
- [03-Table核心.md](./基础/03-Table核心.md)
- [04-函数与闭包.md](./基础/04-函数与闭包.md)
- [05-协程与异步.md](./基础/05-协程与异步.md)
- [基础篇 README](./基础/README.md)

### 进阶篇 | Advanced
- [01-元表与OOP.md](./进阶/01-元表与OOP.md)
- [02-模块与包.md](./进阶/02-模块与包.md)

### 算法篇 | Algorithms
- [binary_search_lua.lua](./算法/binary_search_lua.lua)
- [quick_sort_lua.lua](./算法/quick_sort_lua.lua)
- [算法篇 README](./算法/README.md)

### 数据结构篇 | Data Structures
- [linked_list_lua.lua](./数据结构/linked_list_lua.lua)
- [union_find_lua.lua](./数据结构/union_find_lua.lua)
- [数据结构篇 README](./数据结构/README.md)

## 3. 环境要求 | Environment Requirements

- **Lua 版本**：5.4+ (标准版) / LuaJIT (高性能版)
- **运行环境**：独立解释器、Nginx (OpenResty)、Godot (通过扩展)
- **最小配置**：1 Core CPU / 1GB RAM / 50MB Disk

## 4. 快速开始 | Quick Start

```bash
# 1. 安装 Lua
# Windows: 下载 LuaForWindows
# Linux: sudo apt install lua5.4
# macOS: brew install lua

# 2. 验证安装
lua -v

# 3. 运行首个脚本
lua script.lua
```

## 5. 学习路线 | Learning Path

`概述与环境` → `基础语法` → `Table核心` → `函数与闭包` → `协程与异步` → `元表与OOP` → `模块与包`

## 6. 核心特色 | Key Features

- **极简语法**：简洁易读的语法设计，学习曲线平缓
- **Table 核心**：统一的表结构，灵活的数据组织
- **元表机制**：强大的元编程能力，支持面向对象编程
- **协程支持**：轻量级线程，简化异步编程

## 7. 技术栈与工具 | Technology Stack & Tools

- **Lua Engine**：5.4+ (标准版) / LuaJIT (高性能版)
- **开发环境**：独立解释器、Nginx (OpenResty)、Godot (通过扩展)
- **编辑器**：VS Code + Lua 插件、Sublime Text

## 8. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 更新优化 README.md 文件，完善目录索引和内容结构，升级为 v1.0.1
- 2026-04-05: 体系化重构 Lua 目录结构
