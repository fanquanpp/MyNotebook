# Ren'Py 概述与原理 (Ren'Py Overview & Principles)

> @Author: Anonymous
> @Category: Renpy Basics
> @Description: Ren'Py 引擎的特点、工作原理、Python 集成及视觉小说开发流程。 | Ren'Py engine features, principles, Python integration, and workflow.

## 1. Ren'Py 概述 (Overview)
Ren'Py 是一个专门用于开发视觉小说 (Visual Novels) 的免费开源引擎。它基于 Python 开发，结合了简单的脚本语法 (Ren'Py Script) 和强大的编程扩展性。

### 1.1 核心特点 (Key Features)
- **多平台支持**: Windows, macOS, Linux, Android, iOS, Web。
- **内置系统**: 自动处理存档、读档、设置菜单、回滚 (Rollback)。
- **Python 集成**: 可以在脚本中直接嵌入 Python 代码处理复杂逻辑。
- **ATL (Animation and Transformation Language)**: 强大的动画语言。
- **高度可定制**: 屏幕系统 (Screens) 允许完全自定义 UI。

## 2. 工作原理 (Principles)
Ren'Py 采用**基于声明**的语法。
- **层级结构**: 背景 (Master 层) -> 精灵 (Transient 层) -> UI (Screens 层)。
- **回滚机制**: 记录每一步的状态，允许玩家回退，是视觉小说引擎的核心难点之一。

## 3. 开发环境
- **Ren'Py Launcher**: 官方管理工具，用于创建、启动和发布项目。
- **编辑器**: 推荐使用 VS Code (配合 Ren'Py 插件) 或 Atom。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 Ren'Py 概述与核心原理。
