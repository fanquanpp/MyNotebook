# 07-Git 版本控制 | Git Version Control

> @Author: fanquanpp
> @Version: v3.0.0
> @Created: 2026-04-05

## 1. 简介 | Introduction

专注于 Git 核心概念、命令操作和团队协作规范。作为现代软件开发的必备工具，Git 版本控制能够帮助开发者高效管理代码库，追踪代码变更，协作开发项目，本模块旨在为开发者提供从入门到进阶的系统化 Git 学习路径。

## 2. 目录索引 | Directory Index

### 基础 | Basics

- [V07_101-Git名词注释查阅表.md](./V07_101-Git名词注释查阅表.md)
- [C07_101-Git概述.md](./C07_101-Git概述.md)
- [C07_102-环境配置与初始化.md](./C07_102-环境配置与初始化.md)
- [C07_103-基本操作.md](./C07_103-基本操作.md)
- [C07_104-分支管理.md](./C07_104-分支管理.md)
- [C07_105-远程仓库操作.md](./C07_105-远程仓库操作.md)

### 高级 | Advanced

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

## 5. 学习路线 | Learning Path

`Git概述` → `环境配置与初始化` → `基本操作` → `分支管理` → `远程仓库操作` → `Git原理与对象模型`

## 6. 核心特色 | Key Features

- **版本控制**：详细讲解 Git 的核心版本控制功能和工作原理
- **分支管理**：提供分支策略和工作流的最佳实践
- **远程协作**：讲解远程仓库操作和团队协作流程
- **平台集成**：涵盖 GitHub、GitLab、Gitee 等主流平台的使用
- **问题解决**：收录常见 Git 问题的解决方案和排查技巧
- **原理剖析**：深入讲解 Git 的对象模型和内部原理
- **双语注释**：关键概念和命令提供中英文对照注释

## 7. 阅读建议 | Reading Guide

1. 按照学习路线的顺序学习，从 Git 概述开始，逐步掌握 Git 的各种操作
2. 结合实际项目练习，加深对 Git 命令的理解
3. 特别关注分支管理和远程仓库操作，这是团队协作的核心
4. 尝试理解 Git 原理与对象模型，这有助于解决复杂的 Git 问题

## 8. 延伸阅读 | Further Reading

- [Git 官方文档](https://git-scm.com/doc) <!-- nofollow -->
- [Pro Git](https://git-scm.com/book/en/v2) <!-- nofollow -->
- 本仓库：[01-Github平台](../01-Github/README.md)

## 9. 贡献指南 | Contribution Guide

- 推荐使用 Gitflow 工作流提交 PR
- Commit message 遵循 `feat/fix/docs: 描述` 规范
- 提供完整的命令示例和操作步骤

## 10. 联系方式 | Contact Information

- 邮箱：<fanquanpangpiing@163.com>
- QQ：839243393
- 欢迎提意见交流或反馈问题

## 11. 许可证信息 | License

- **SPDX-Identifier**：[CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**：2024-2026 fanquanpp

---

**更新日志 | Changelog**

- **2026-05-02**
  - 全面检查项目结构，确保一致性

- **2026-04-18**
  - 完成 GitHub 仓库 3.0 结构优化规划，统一文件命名规范，优化目录结构，升级到 v3.0.0

- **2026-04-06**
  - 深度优化 README.md 文件，完善结构和内容，增加仓库定位、使用说明等部分，升级为 v1.0.1 ~ v1.0.2

- **2026-04-05**
  - 初始版本 Git 核心操作与分支管理笔记

- **2025-10-04**
  - 更新优化 README.md 文件，统一结构和格式
