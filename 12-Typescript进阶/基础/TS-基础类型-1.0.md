---
url: "https://jkchao.github.io/typescript-book-chinese/typings/overview.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "BasicTypes", "Syntax"]
---

<a id="title"></a>
# TypeScript 基础类型

<a id="1"></a>
## 1 基础类型 (Basic Types)

TypeScript 的类型系统是可选的，JavaScript 代码即是 TypeScript 代码。通过类型注解，可以为变量、函数参数和返回值提供显式的类型声明。

<a id="1.1"></a>
### 1.1 原始类型

包含 `string`, `number`, `boolean`, `null`, `undefined`, `void`。

```typescript
let name: string = "TypeScript";
let age: number = 10;
let isDone: boolean = false;
```

<a id="1.2"></a>
### 1.2 数组

```typescript
let list: number[] = [1, 2, 3];
// 或者使用泛型
let list2: Array<number> = [1, 2, 3];
```

<a id="1.3"></a>
### 1.3 接口 (Interfaces)

接口是 TypeScript 合并多个类型声明的核心方式。

```typescript
interface User {
    name: string;
    age: number;
}

const user: User = {
    name: "Alice",
    age: 25
};
```

<a id="2"></a>
## 2 运行 tsc 命令验证

1. 创建 `test.ts` 文件。

2. 输入上述代码。

3. 执行校验命令：

   ```bash
   tsc test.ts --strict --noEmit
   ```

   确保输出无任何错误信息。

<a id="3"></a>
## 3 工程化 (Engineering)

在大型项目中，建议通过 `tsconfig.json` 统一管理编译选项，并开启 `strict` 模式以确保代码质量。

<a id="4"></a>
## 4 编译优化 (Compilation Optimization)

使用 `--strict` 选项可以开启一系列严格的类型检查（如 `noImplicitAny`, `strictNullChecks`），这有助于在编译阶段发现潜在的逻辑错误。

<a id="5"></a>
## 5 迁移案例 (Migration Cases)

从 JavaScript 迁移时，可以先将文件后缀改为 `.ts`，然后逐步为复杂的逻辑添加类型注解，初期可适当使用 `any` 作为过渡。

[深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/)<!-- nofollow -->
