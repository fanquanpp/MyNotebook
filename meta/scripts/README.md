# scripts | 仓库维护工具脚本

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v2.0.0
-->

## 1. 项目简介 | Introduction
本目录收录用于仓库自动化运维的脚本，核心为 `validate.sh` 质量校验工具。支持并行检查、生成 JUnit 报告及严苛模式。
This directory contains automation scripts for warehouse maintenance, featuring the `validate.sh` tool with parallel checks and JUnit reporting.

## 2. 目录索引 | Directory Index
- [validate.sh | 质量校验工具](./validate.sh)

## 3. 环境要求 | Environment Requirements
- **操作系统**：Windows (Git Bash), Linux, macOS
- **运行时**：Bash v4.4+, Node.js 18+
- **工具依赖**：markdownlint-cli, markdown-link-check

## 4. 快速开始 | Quick Start
```bash
# 1. 赋予执行权限 (Linux/macOS)
chmod +x scripts/validate.sh

# 2. 执行严苛校验并生成报告
bash scripts/validate.sh --strict --report=report.xml
```

## 5. 贡献指南 | Contribution Guide
- **错误处理**：所有脚本必须包含错误捕获 (trap) 与行号打印。
- **并行执行**：推荐使用 `&` 或 `xargs -P` 进行并行任务分发。
- **返回码**：遵循 `validate.sh` 头部定义的标准返回码表。

## 6. 许可证信息 | License
- **SPDX-Identifier**: [CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **License Path**: [LICENSE](../LICENSE)
- **Copyright**: 2024-2026 fanquanpp

---
**更新日志 | Changelog**
- 2026-04-05: 体系化升级 README，补全工具索引、环境要求与快速开始。
