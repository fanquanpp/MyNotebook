# 03-GDScript 游戏开发 | GDScript Game Development

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.2
-->

> **路径**：`03-GDScript游戏开发/` | **GDScript（Godot 脚本语言）** + **Godot（游戏引擎）**

## 1. 项目简介 | Introduction

本模块是 fanquanpp 个人综合学习笔记库中的 GDScript 游戏开发部分，聚焦 **Godot** 引擎默认脚本语言 **GDScript** 的语法、信号与异步、性能与版本迁移，服务于 2D/3D 游戏逻辑与工具脚本开发。旨在为游戏开发者提供全面、系统的 GDScript 学习指南。

This module focuses on GDScript, the default scripting language for Godot engine, covering syntax, signals and async, performance, and version migration for 2D/3D game logic and tool scripting, providing a comprehensive guide for game developers.

### 仓库定位

- **学习资源中心**：提供从基础到高级的 GDScript 游戏开发学习指南
- **技术文档库**：详细解析 GDScript 语言特性和 Godot 引擎使用技巧
- **个人知识管理**：系统化整理 GDScript 相关知识，便于复习和查阅

**使用说明：**

- 本仓库已开放为公共，允许他人访问和克隆
- 禁止直接修改本仓库内容
- 他人使用本仓库内容时出现的任何问题与作者无关

## 2. 目录索引 | Directory Index

### 基础篇 | Basics
- [01-概述与环境.md](./基础/01-概述与环境.md)
- [02-基础语法.md](./基础/02-基础语法.md)
- [03-函数与面向对象.md](./基础/03-函数与面向对象.md)
- [基础篇 README](./基础/README.md)

### 进阶篇 | Advanced
- [01-信号与异步.md](./进阶/01-信号与异步.md)
- [02-性能优化与版本差异.md](./进阶/02-性能优化与版本差异.md)

### 算法篇 | Algorithms
- [astar_gd.gd](./算法/astar_gd.gd)
- [bubble_sort_gd.gd](./算法/bubble_sort_gd.gd)
- [算法篇 README](./算法/README.md)

### 数据结构篇 | Data Structures
- [event_bus_gd.gd](./数据结构/event_bus_gd.gd)
- [数据结构篇 README](./数据结构/README.md)

## 3. 环境要求 | Environment Requirements

- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+
- **运行时**：Godot 4.0+ (LTS)
- **开发工具**：Godot Editor, VS Code with GDScript extension
- **最小配置**：2 核心 CPU / 4 GB 内存 / 1 GB 磁盘

## 4. 快速开始 | Quick Start

1. 下载并安装 Godot 4.0+
2. 创建新项目并选择 GDScript 作为脚本语言
3. 编写第一个脚本并运行

## 5. 学习路线 | Learning Path

`概述与环境` → `基础语法` → `函数与面向对象` → `信号与异步` → `性能优化与版本差异` → `算法与数据结构`

## 6. 核心特色 | Key Features

- **深度解析**：每个知识点独立成文件，详细讲解原理与应用
- **代码示例**：提供完整可运行的代码示例，包含详细注释
- **性能优化**：重点讲解 GDScript 性能优化技巧与最佳实践
- **版本迁移**：提供 Godot 3.x 到 4.x 的迁移指南
- **结构清晰**：按照基础、进阶、算法和数据结构组织内容
- **双语注释**：关键概念和代码提供中英文对照注释

## 7. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从概述与环境开始，逐步掌握 GDScript 的各种特性
2. 结合 Godot 引擎实际操作，加深对 GDScript 的理解
3. 特别关注信号与异步部分，这是 Godot 引擎的核心特性
4. 尝试使用 GDScript 实现简单的游戏功能，巩固所学知识

## 8. 延伸阅读 | Further Reading

- [Godot 官方文档](https://docs.godotengine.org/) <!-- nofollow -->
- [GDScript 官方指南](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_basics.html) <!-- nofollow -->
- 本仓库：[10-Python脚本](../10-Python脚本/README.md)、[11-Renpy视觉小说](../11-Renpy视觉小说/README.md)

## 9. 关联章节 | Related Modules

- **Python（Python 语言）**：Godot 脚本可与 Python 思维对照 [`10-Python脚本`](../10-Python脚本/README.md)  
- **Ren'Py（视觉小说引擎）**：[`11-Renpy视觉小说`](../11-Renpy视觉小说/README.md)

## 10. 贡献指南 | Contribution Guide

- 代码示例需符合 Godot 官方风格指南
- 提供完整的项目结构和场景文件
- 包含性能测试结果和优化建议

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
- 2026-04-05: 统一模块说明，与 Godot 4.x 主线对齐表述
- 2026-10-04: 更新优化 README.md 文件，统一结构和格式
