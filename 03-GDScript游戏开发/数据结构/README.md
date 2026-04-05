# 数据结构与设计模式 | Data Structures & Patterns (GDScript)

本文档列出了 Godot 开发中常用的架构模式与数据处理方式。

| 名称 (Name) | 源码文件 (Source) | 说明 (Description) |
| :--- | :--- | :--- |
| 事件总线 (Event Bus) | [event_bus_gd.gd](./event_bus_gd.gd) | 基于单例的全局信号管理模式 |

## 核心概念 | Core Concepts

### 信号 (Signals)
Godot 的观察者模式实现。用于节点间的解耦通信。

### 自动加载 (Autoload)
全局单例节点，常用于存储全局状态或作为事件中心。
