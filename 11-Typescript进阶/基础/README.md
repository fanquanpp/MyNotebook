# TypeScript 进阶体系 | TS Advanced System

<!--
作者：fanquanpp
创建日期：2026-04-06
版本：v1.0.0
-->

## 1. 基础篇概述 | Basics Overview

TypeScript 基础篇涵盖了 TypeScript 的类型系统、接口、泛型、装饰器及高级类型演算，包括概述与环境、基础类型系统、接口与类型别名、函数与泛型、类与装饰器、高级类型与演算等内容。通过学习基础篇，你将掌握 TypeScript 的基本使用方法，为后续的前端开发学习打下基础。

## 2. 目录索引 | Directory Index

| 序号 | 文件名 | 描述 |
| :--- | :--- | :--- |
| 01 | [01-概述与环境.md](./01-概述与环境.md) | TypeScript 核心价值、tsconfig.json 配置、编译器工作流 |
| 02 | [02-基础类型系统.md](./02-基础类型系统.md) | 原始类型、字面量类型、联合类型、Any/Unknown/Never |
| 03 | [03-接口与类型别名.md](./03-接口与类型别名.md) | interface/type、继承与组合、readonly |
| 04 | [04-函数与泛型.md](./04-函数与泛型.md) | 函数类型、重载、泛型约束、工具类型入门 |
| 05 | [05-类与装饰器.md](./05-类与装饰器.md) | class、访问修饰符、继承、装饰器基础 |
| 06 | [06-高级类型与演算.md](./06-高级类型与演算.md) | 类型守卫、映射类型、条件类型、infer |

## 3. 学习路线 | Learning Path

```
概述与环境 → 基础类型系统 → 接口与类型别名 → 函数与泛型 → 类与装饰器 → 高级类型与演算
```

## 4. 核心知识点 | Core Knowledge Points

### 4.1 概述与环境

- TypeScript 的核心价值和优势
- TypeScript 与 JavaScript 的关系
- tsconfig.json 的配置选项
- TypeScript 编译器的工作流程
- TypeScript 的开发环境搭建

### 4.2 基础类型系统

- 原始类型（number、string、boolean、null、undefined、symbol、bigint）
- 字面量类型
- 联合类型
- 交叉类型
- Any、Unknown、Never 类型
- 类型断言

### 4.3 接口与类型别名

- 接口（interface）的定义和使用
- 类型别名（type）的定义和使用
- 接口的继承与组合
- 类型别名的继承与组合
- readonly 修饰符
- 接口与类型别名的区别

### 4.4 函数与泛型

- 函数类型的定义
- 函数重载
- 泛型的基本概念
- 泛型约束
- 工具类型的使用
- 函数的类型推断

### 4.5 类与装饰器

- 类的定义和使用
- 访问修饰符（public、private、protected）
- 类的继承
- 抽象类和接口
- 装饰器的基础使用
- 类装饰器、方法装饰器、属性装饰器

### 4.6 高级类型与演算

- 类型守卫
- 映射类型
- 条件类型
- infer 关键字
- 递归类型
- 高级类型的组合使用

## 5. 学习建议 | Learning Suggestions

1. **循序渐进**：按照学习路线的顺序学习，从概述与环境开始，逐步掌握 TypeScript 的各种特性
2. **实践为主**：多编写 TypeScript 代码，通过实际项目练习加深对 TypeScript 概念的理解
3. **重点关注**：特别关注类型系统和泛型，这是 TypeScript 的核心特性
4. **查阅文档**：遇到问题时，参考 TypeScript 官方文档和相关资源
5. **代码规范**：遵循 TypeScript 代码规范，提高代码的可读性和可维护性
6. **结合 JavaScript**：理解 TypeScript 与 JavaScript 的关系，充分利用 TypeScript 的类型系统
7. **工具使用**：学习使用 TypeScript 相关工具，如 tsc、tslint 等

## 6. 延伸阅读 | Further Reading

- [TypeScript 官方文档](https://www.typescriptlang.org/docs/) <!-- nofollow -->
- [TypeScript 中文手册](https://jkchao.github.io/typescript-book-chinese/) <!-- nofollow -->
- [TypeScript 高级类型](https://www.typescriptlang.org/docs/handbook/advanced-types.html) <!-- nofollow -->
- [TypeScript 设计模式](https://refactoring.guru/design-patterns/typescript) <!-- nofollow -->
- 本仓库：[JavaScript 脚本](../08-Javascript脚本/README.md)、[Vue3](../12-Vue3/README.md)

## 7. 小结 | Summary

TypeScript 基础篇提供了 TypeScript 的核心概念和基本使用方法，是学习 TypeScript 的起点。通过学习基础篇，你已经了解了 TypeScript 的概述与环境、基础类型系统、接口与类型别名、函数与泛型、类与装饰器、高级类型与演算等内容，为后续的前端开发学习打下了基础。

在学习过程中，要注重实践，通过实际项目来巩固所学知识，同时要关注 TypeScript 的最佳实践，以编写高质量的 TypeScript 代码。TypeScript 是 JavaScript 的超集，它通过静态类型检查提高了代码的可靠性和可维护性，是现代前端开发的重要工具。
