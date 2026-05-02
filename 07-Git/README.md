# Git 版本控制教程 | Git Version Control

> @Author: fanquanpp
> @Version: v3.5.0
> @Category: Git Overview
> @Description: Git 版本控制完整教程：核心概念、命令操作和团队协作规范。 | Complete Git tutorial covering core concepts, commands, and collaboration workflows.

## 1. 简介 | Introduction

本教程专注于 Git 核心概念、命令操作和团队协作规范。作为现代软件开发必备工具，Git 版本控制能够帮助开发者高效管理代码库，追踪代码变更，协调多人协作，本模块旨在为开发者提供从入门到进阶的系统化 Git 学习路径。

## 2. 目录索引 | Directory Index

### 快速查阅 | Quick Reference

- [V07_101-Git名词注释查阅表.md](./V07_101-Git名词注释查阅表.md)

### 基础篇 | Basics

- [C07_101-Git概述.md](./C07_101-Git概述.md)
- [C07_102-环境配置与初始化.md](./C07_102-环境配置与初始化.md)
- [C07_103-基本操作.md](./C07_103-基本操作.md)
- [C07_104-分支管理.md](./C07_104-分支管理.md)
- [C07_105-远程仓库操作.md](./C07_105-远程仓库操作.md)

### 进阶篇 | Advanced

- [G07_201-Git原理与对象模型.md](./G07_201-Git原理与对象模型.md)
- [G07_202-Git钩子与Git_LFS.md](./G07_202-Git钩子与Git_LFS.md)

## 3. 环境要求 | Environment Requirements

- **工具**：Git 2.40+
- **平台**：GitHub / GitLab / Gitee
- **协议**：SSH / HTTPS
- **操作系统**：Windows 10+, Ubuntu 22.04+, macOS 14+

## 4. 快速开始 | Quick Start

1. 配置个人信息：`git config --global user.name "Your Name"`
2. 配置邮箱：`git config --global user.email "your.email@example.com"`
3. 克隆仓库：`git clone <repo-url>`
4. 查看状态：`git status`
5. 创建分支：`git checkout -b feature-branch`

## 5. 学习路径 | Learning Path

`Git概述` -> `环境配置与初始化` -> `基本操作` -> `分支管理` -> `远程仓库操作` -> `Git原理与对象模型`

## 6. 核心技术 | Key Features

- **版本控制**：详细讲解 Git 的核心版本控制功能和操作原理
- **分支管理**：提供分支策略和工作流程的最佳实践
- **远程协作**：详解远程仓库操作和团队协作流程
- **平台集成**：聚合 GitHub、GitLab、Gitee 等主流平台的实际使用
- **问题解决**：收录常见 Git 问题的解决方法和排查技巧
- **原理分析**：深入讲解 Git 的对象模型和内部原理
- **双语注释**：关键术语和命令提供中英对照参考

## 7. 阅读建议 | Reading Guide

1. 按照学习路径的顺序学习，从 Git 概述开始，逐步掌握 Git 的各种操作
2. 结合实际项目练习，加强对 Git 命令的理解
3. 特别关注分支管理和远程仓库操作，这是团队协作的核心
4. 尝试理解 Git 原理与对象模型，这有助于解决复杂的 Git 问题

## 8. 延伸阅读 | Further Reading

- [Git 官方文档](https://git-scm.com/doc)
- [Pro Git](https://git-scm.com/book/en/v2)
- 本仓库：[01-Github](../01-Github/README.md)

## 9. 贡献指南 | Contribution Guide

- 推荐使用 Gitflow 工作流提交 PR
- Commit message 遵循 `feat/fix/docs: 描述` 规范
- 提供完整的操作步骤和代码示例

## 10. 联系方式 | Contact Information

- 邮箱：fanquanpangpiing@163.com
- QQ：83924393
- 欢迎提交问题或反馈

## 11. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- **2026-05-02**
  - 修复编码问题，重建 README 结构

- **2026-04-18**
  - 完成 GitHub 仓库 3.0 结构优化规划，统一文件命名规范，优化目录结构

- **2026-04-06**
  - 深度优化 README.md 文件，完善结构和内容

- **2026-04-05**
  - 初始版本 Git 核心操作与分支管理教程
