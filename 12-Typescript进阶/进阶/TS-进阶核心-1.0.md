<!--
文件名称：TypeScript-学习笔记
原名称：无
用途描述：介绍 TypeScript 核心类型系统、接口、泛型、联合类型及工程化配置。
创建/更新：2026-04-05
-->

# TypeScript 学习笔记（TypeScript Learning Notes）

TypeScript 是 JavaScript 的超集，为 JavaScript 提供了静态类型检查，使开发大型项目更加安全、可维护。

## 1. 核心概念

- **类型系统**：静态类型检查（Static Typing），在编译阶段发现错误。
- **类型注解**：使用 `: TypeAnnotation` 语法为变量、函数参数及返回值指定类型。
- **类型推断**：TypeScript 能够根据赋值自动推断变量的类型。

## 2. 语法基础

### 2.1 原始类型与数组
- **原始类型**：`string`, `number`, `boolean`, `null`, `undefined`, `void`, `any`。
- **数组**：`number[]` 或 `Array<number>`。

```typescript
let name: string = "fanquanpp";
let age: number = 25;
let list: number[] = [1, 2, 3];
```

### 2.2 接口 (Interface)
- 用于合并众多类型声明至一个类型声明，便于复用和扩展。

```typescript
interface Name {
  first: string;
  second: string;
}

const user: Name = {
  first: "Apan",
  second: "Notebook"
};
```

### 2.3 泛型 (Generics)
- 泛型允许我们在定义函数、接口或类时不预先指定具体的类型，而是在使用时再指定。

```typescript
function reverse<T>(items: T[]): T[] {
  return items.reverse();
}

const sample = [1, 2, 3];
const reversed = reverse(sample); // 推断出 reversed 为 number[]
```

### 2.4 联合类型 (Union Types)
- 属性可以为多种类型之一，使用 `|` 分隔。

```typescript
function format(input: string | number) {
  return input.toString();
}
```

## 3. 实战应用

### 3.1 工程化配置
- `tsconfig.json`：控制 TypeScript 编译器的行为。
- **常用选项**：
    - `target`：编译生成的 JavaScript 版本。
    - `module`：模块系统（CommonJS, ESNext）。
    - `strict`：开启所有严格类型检查选项。

```json
{
  "compilerOptions": {
    "target": "ES6",
    "module": "commonjs",
    "strict": true,
    "esModuleInterop": true
  }
}
```

## 4. 最佳实践

- **减少 any 的使用**：尽量明确类型，除非正在进行 JS 到 TS 的逐步迁移。
- **接口 vs 类型别名**：优先使用 `interface`，当需要使用联合类型或元组时考虑 `type alias`。
- **利用泛型增强复用性**：编写通用的工具函数和组件。

## 5. 延伸阅读

- [TypeScript 官方手册](https://www.typescriptlang.org/docs/) <!-- nofollow -->
- [深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/) <!-- nofollow -->

## 6. 更新日志

- **2026-04-05**：初始版本，整理 TypeScript 核心概念与进阶类型。
