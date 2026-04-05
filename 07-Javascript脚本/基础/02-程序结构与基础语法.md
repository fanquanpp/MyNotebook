# 程序结构与基本语法 (Program Structure & Basic Syntax)

> @Author: Anonymous
> @Category: JS Basics
> @Description: JS 引入方式、注释、标识符命名、变量声明及严格模式。 | JS inclusion, comments, naming, declarations, and Strict Mode.

## 1. 引入方式 (Inclusion)
1. **内部脚本**: `<script> console.log("Hi"); </script>`。
2. **外部文件**: `<script src="app.js"></script>`。
3. **现代模块 (ESM)**: `<script type="module" src="main.js"></script>`。

## 2. 语句与注释 (Statements & Comments)
- **语句**: 以分号 `;` 结尾 (可选但推荐)。
- **单行注释**: `// ...`。
- **多行注释**: `/* ... */`。

## 3. 变量声明 (Variable Declarations)
1. **`var`**: 函数作用域，存在变量提升 (Hoisting)，不建议使用。
2. **`let`**: 块级作用域，不存在提升，推荐用于可变变量。
3. **`const`**: 块级作用域，必须初始化且不可重赋值，推荐用于常量。

## 4. 标识符规范 (Identifiers)
- 只能包含字母、数字、下划线 (_)、美元符号 ($)。
- **不能以数字开头**。
- 采用 **lowerCamelCase** (小驼峰) 命名。

## 5. 严格模式 (Strict Mode)
通过 `"use strict";` 开启。
- 消除不合理的语法，提高运行效率。
- 禁用静默错误，增强安全性。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 JS 基础语法规则。
