# GDScript 概述与环境 (GDScript Overview & Environment)

> @Author: Anonymous
> @Category: GDScript Basics
> @Description: GDScript 的特点、Godot 引擎集成及开发环境。 | GDScript features, Godot integration, and environment.

## 1. GDScript 概述 (Overview)
GDScript 是 Godot 游戏引擎专用的高级、动态类型脚本语言。它的语法深受 Python 启发，旨在通过极简的语法实现与引擎底层的深度集成。

### 1.1 核心特点 (Key Features)
- **类似 Python**: 使用缩进定义代码块，语法简洁。
- **引擎集成**: 原生支持向量 (`Vector2/3`)、颜色 (`Color`) 等游戏开发常用类型。
- **面向对象**: 支持类、继承、多态。
- **信号机制**: 强大的观察者模式实现，用于节点间通信。
- **性能优化**: 针对 Godot 引擎进行了特定优化，虽是脚本语言但在游戏逻辑处理上表现出色。

## 2. 运行环境 (Runtime)
GDScript 必须在 **Godot Engine** 中运行。
- **编辑器**: Godot 自带功能完备的脚本编辑器（支持自动补全、调试、文档查看）。
- **外部编辑器**: 也可以使用 VS Code (配合 GDScript 插件)。

## 3. 基本脚本结构
```gdscript
extends Node # 指定继承的类

# 成员变量
var health = 100

# 内置生命周期回调
func _ready():
    # 节点进入场景树时调用
    print("Hello Godot!")

func _process(delta):
    # 每帧调用，delta 为两帧之间的时间间隔
    pass
```

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 GDScript 概述与脚本基础。
