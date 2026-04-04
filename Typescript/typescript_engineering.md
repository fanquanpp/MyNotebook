---
url: "https://jkchao.github.io/typescript-book-chinese/project/compilation-context.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "Engineering", "Modules", "Decorators"]
---

<a id="title"></a>
# TypeScript 工程化

<a id="1"></a>
## 1 基础类型 (Basic Types)

在工程化项目中，TypeScript 通过 `tsconfig.json` 管理编译上下文。模块解析和装饰器是大型项目的基础。

<a id="1.1"></a>
### 1.1 模块 (Modules)

支持 ES6 模块、CommonJS 模块等。

```typescript
import { reverse } from "./utils";
export const main = () => reverse([1, 2, 3]);
```

<a id="1.2"></a>
### 1.2 装饰器 (Decorators)

实验性特性，常用于框架（如 Angular, NestJS）中。

```typescript
function Log(target: any, key: string) {
    console.log(`${key} called`);
}

class MyClass {
    @Log
    method() {}
}
```

<a id="1.3"></a>
### 1.3 声明文件 (Declaration Files)

`.d.ts` 文件用于为现有的 JavaScript 库提供类型定义。

<a id="2"></a>
## 2 运行 tsc 命令验证

1. 初始化项目：

   ```bash
   tsc --init
   ```

2. 修改 `tsconfig.json` 中的 `experimentalDecorators: true`。

3. 执行编译：

   ```bash
   tsc --strict
   ```

<a id="3"></a>
## 3 高级类型 (Advanced Types)

装饰器通常与泛型和高级类型结合使用，用于在运行时动态注入元数据或修改类行为。

<a id="4"></a>
## 4 工程化 (Engineering)

通过 `tsc` 的 `--incremental` 选项开启增量编译，可以显著提升大型项目的二次编译速度。

<a id="5"></a>
## 5 编译优化 (Compilation Optimization)

开启 `skipLibCheck: true` 可以跳过对外部依赖声明文件的类型检查，节省编译时间，同时保持业务代码的严格检查。

<a id="6"></a>
## 6 迁移案例 (Migration Cases)

在迁移大型单体应用时，可以利用 `composite: true` 开启项目引用功能，将项目拆分为多个相互依赖的小模块，提高编译效率和可维护性。

[深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/)<!-- nofollow -->
