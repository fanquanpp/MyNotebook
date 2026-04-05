# MyNotebook | 个人技术知识库

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v2.0.0
-->

## 1. 项目简介 | Introduction
本仓库是一个结构化的技术笔记库，涵盖 C/C++、Web 前端、Python/Java 后端、MySQL 数据库及游戏开发等领域。旨在提供“零死链、零 Lint 错误、零风格冲突”的工业级自学参考。
This repository is a structured technical notebook covering C/C++, Web, Backend (Python/Java), MySQL, and Game Dev. It aims for industrial-grade quality with zero broken links and lint errors.

## 2. 目录索引 | Directory Index
- [00. GitHub 完整教程 | GitHub Tutorial](./00-Github完整教程/README.md)
- [01. C 语言与算法 | C & Algorithms](./01-C语言/README.md)
- [02. CSS 布局 | CSS Layouts](./02-CSS布局/README.md)
- [03. GDScript 游戏开发 | GDScript](./03-GDScript游戏开发/README.md)
- [04. Git 版本控制 | Git Version Control](./04-Git版本控制/README.md)
- [05. HTML5 网页开发 | HTML5 Web](./05-HTML5网页开发/README.md)
- [06. Java 后端开发 | Java Backend](./06-Java后端开发/README.md)
- [07. Javascript 脚本 | Javascript](./07-Javascript脚本/README.md)
- [08. Markdown 文档 | Markdown Doc](./08-Markdown文档/README.md)
- [09. MySQL 数据库 | MySQL Database](./09-MySQL数据库/README.md)
- [10. Python 脚本 | Python Automation](./10-Python脚本/README.md)
- [11. Renpy 视觉小说 | Ren'Py Game](./11-Renpy视觉小说/README.md)
- [12. Typescript 进阶 | TypeScript](./12-Typescript进阶/README.md)
- [13. C++ 系统编程 | C++ Systems](./13-C++系统编程/README.md)
- [14. Lua 脚本开发 | Lua Scripting](./14-Lua/Lua-学习导图-1.0.md)

## 3. 环境要求 | Environment Requirements
- **操作系统**：Windows 10/11, Ubuntu 22.04 LTS, macOS Sonoma
- **核心工具**：Node.js 20+, GCC 12+, Java 17+, Python 3.12+, MySQL 8.0+
- **最小硬件**：4 Core CPU / 8GB RAM / 20GB Disk

## 4. 快速开始 | Quick Start
```bash
# 1. 克隆仓库
git clone https://github.com/fanquanpp/MyNotebook.git

# 2. 安装校验依赖 (Node.js 环境)
npm install -g markdownlint-cli markdown-link-check

# 3. 执行全局质量检查
# Windows (PowerShell):
./verify.ps1

# Linux/macOS (Bash):
bash meta/scripts/validate.sh --strict
```

## 5. 维护者入口 | Maintainer Only
<details>
<summary>点击展开维护说明 | Click to expand maintenance info</summary>

### 运维文件说明 | Maintenance Files
- **meta/**: 存放所有非笔记类运维文件。
  - **.github/**: CI/CD 工作流配置。
  - **scripts/**: 自动化验证与清理脚本。
  - **style-guides/**: 各编程语言代码风格指南。
  - **笔记库务/**: 仓库管理规范、术语表与模板。
- **.editorconfig**: 跨编辑器代码格式规范（保留在根目录以便 IDE 直接读取）。

### 常用运维命令
- **Windows (PowerShell)**:
  - `./verify.ps1`: 执行源码规范校验。
- **Linux/macOS (Bash)**:
  - `bash meta/scripts/validate.sh`: 执行全库质量校验。
- **Python 直接运行**:
  - `python verify.py`: 仅执行源码规范校验。
  - `python meta/scripts/cleanup.py`: 执行冗余文件清理。
</details>

## 6. 贡献指南 | Contribution Guide
- **分支策略**：遵循 Git Flow 模型。
- **Commit 规范**：符合 Conventional Commits (feat, docs, fix)。
- **PR 流程**：所有 PR 需通过 `validate.sh` 校验方可合并。

## 7. 许可证信息 | License
- **SPDX-Identifier**: [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **License Path**: [LICENSE](./LICENSE)
- **Copyright**: 2024-2026 fanquanpp

---
**更新日志 | Changelog**
- 2026-04-05: 仓库系统性内容补全与质量加固，升级为 v2.0.0。
