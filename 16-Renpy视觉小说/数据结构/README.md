# Ren'Py 数据结构 | Ren'Py Data Structures

<!--
作者：fanquanpp
创建日期：2026-04-06
版本：v1.0.0
-->

## 1. 项目简介 | Introduction

本目录收录了使用 Ren'Py 脚本实现的各种数据结构和工具，用于视觉小说开发中的数据管理和游戏逻辑实现。

This directory contains various data structures and tools implemented with Ren'Py script, used for data management and game logic implementation in visual novel development.

## 2. 数据结构列表 | Data Structures List

| 数据结构 (Data Structure) | 源码文件 (Source) | 难度 (Difficulty) | 标签 (Tags) | 说明 (Description) |
| :--- | :--- | :--- | :--- | :--- |
| 事件总线 (Event Bus) | [event_bus_renpy.rpy](./event_bus_renpy.rpy) | 中级 | 事件 | 用于游戏内事件的发布和订阅 |
| 存档系统 (Save System) | [save_system_renpy.rpy](./save_system_renpy.rpy) | 高级 | 存档 | 自定义存档系统，支持额外数据 |
| 状态管理 (State Management) | [state_management_renpy.rpy](./state_management_renpy.rpy) | 中级 | 状态 | 管理游戏状态和变量 |
| 对话系统 (Dialogue System) | [dialogue_system_renpy.rpy](./dialogue_system_renpy.rpy) | 高级 | 对话 | 自定义对话系统，支持复杂对话逻辑 |

## 3. 运行指南 | How to Run

```bash
# 在 Ren'Py 项目中使用
# 将 .rpy 文件复制到项目的 game 目录
# 在脚本中导入并使用

# 示例：使用事件总线
# 在 script.rpy 中
init python:
    from event_bus_renpy import EventBus
    event_bus = EventBus()

# 订阅事件
event_bus.subscribe("player_joined", handle_player_joined)

# 发布事件
event_bus.publish("player_joined", player_name="Alice")
```

## 4. 核心特色 | Key Features

- **Ren'Py 集成**：专门为 Ren'Py 视觉小说引擎设计
- **易于使用**：提供简单的接口，易于集成到现有项目
- **可扩展性**：模块化设计，便于根据需要进行扩展
- **性能优化**：考虑了 Ren'Py 运行时的性能特点

## 5. 学习建议 | Learning Guide

1. 从基础的数据结构开始学习，如事件总线
2. 理解每种数据结构的适用场景和使用方法
3. 尝试在自己的 Ren'Py 项目中使用这些数据结构
4. 根据项目需求，扩展和定制这些数据结构

## 6. 延伸阅读 | Further Reading

- [Ren'Py 官方文档](https://www.renpy.org/doc.html) <!-- nofollow -->
- [Ren'Py 教程](https://www.renpy.org/doc/html/tutorial.html) <!-- nofollow -->
- [Ren'Py 论坛](https://lemmasoft.renai.us/forums/) <!-- nofollow -->

## 7. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- 2026-04-06: 创建 Ren'Py 数据结构目录，添加 README.md 文件，版本为 v1.0.0