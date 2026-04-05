# 11-Renpy 视觉小说 | Ren'Py Visual Novel Engine

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 1. 项目简介 | Introduction
本分册收录 Ren'Py 引擎核心开发笔记，涵盖脚本语法、ATL 动画、SL2 屏幕语言及发布流程。旨在为创作高质量、跨平台的互动叙事游戏提供参考。
This module covers Ren'Py engine core development, including scripting, ATL, SL2, and deployment for high-quality interactive storytelling.

## 2. 目录索引 | Directory Index
- [Ren'Py 基础 (一知识点一文件) | Basics](./basics/README.md)
- [动画与高级特性 | Advanced](./advanced/01-ATL动画语言.md)
- [核心逻辑示例 | Examples](./algorithms/save_load_optimization.rpy)

## 3. 环境要求 | Environment Requirements
- **操作系统**：Windows 10+, macOS 12+, Linux (x86_64)
- **运行时**：Ren'Py 8.1 / 8.2 (Python 3 based)
- **最小配置**：2 Core CPU / 4GB RAM / 500MB Disk (Launcher only)

## 4. 快速开始 | Quick Start
```bash
# 1. 下载 Ren'Py Launcher
# 访问: https://www.renpy.org/latest.html

# 2. 创建新项目并编辑 script.rpy
label start:
    "Hello, Ren'Py!"
    return

# 3. 启动项目进行验证
```

## 5. 贡献指南 | Contribution Guide
- **编码规范**：遵循 Ren'Py 脚本缩进风格 (4 空格)。
- **资源规范**：图片资源放置于 `images/`，音频放置于 `audio/`。
- **提交规范**：使用 Conventional Commits。

## 6. 许可证信息 | License
- **SPDX-Identifier**: [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **License Path**: [LICENSE](../LICENSE)
- **Copyright**: 2024-2026 fanquanpp

---
**更新日志 | Changelog**
- 2026-04-05: 体系化升级 README，补全分册索引、环境要求与快速开始。
