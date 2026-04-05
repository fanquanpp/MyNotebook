# TypeScript 概述与环境配置 (TS Overview & Environment)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: TS 的起源、核心价值、与 JS 的关系及编译器配置。 | TS history, value, relation to JS, and compiler setup.

## 1. TypeScript 概述 (Overview)
TypeScript 是 JavaScript 的一个**超集**，由微软开发。它在 JS 的基础上增加了**静态类型系统**，最终通过编译器转换为纯 JS 运行。

### 1.1 核心价值 (Core Value)
- **类型安全**: 在开发阶段发现潜在错误 (如拼写错误、类型不匹配)。
- **更好的 IDE 支持**: 自动补全、重构更精准。
- **增强可读性**: 代码即文档。
- **支持最新语法**: 提前使用尚未在所有浏览器实现的 ECMAScript 新特性。

## 2. 环境配置 (Environment Setup)
1. **安装编译器**:
   ```bash
   npm install -g typescript
   ```
2. **初始化配置**:
   ```bash
   tsc --init # 生成 tsconfig.json
   ```
3. **编译运行**:
   ```bash
   tsc main.ts # 编译为 main.js
   # 或使用 ts-node 直接运行
   npx ts-node main.ts
   ```

## 3. `tsconfig.json` 核心配置
- `target`: 编译后的 JS 版本 (如 `ES5`, `ES6`)。
- `module`: 模块化规范 (`commonjs`, `esnext`)。
- `strict`: 开启所有严格类型检查 (推荐)。
- `outDir`: 编译输出目录。
- `rootDir`: 源码存放目录。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 TS 概述与编译器配置。
