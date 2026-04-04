---
url: "https://jkchao.github.io/typescript-book-chinese/typings/overview.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "AdvancedTypes", "Generics", "Unions"]
---

<a id="title"></a>
# TypeScript 高级类型

<a id="1"></a>
## 1 高级类型 (Advanced Types)

高级类型提供了更强大的抽象能力，使得类型系统能够灵活地处理复杂的业务逻辑。

<a id="1.1"></a>
### 1.1 泛型 (Generics)

泛型允许在定义函数、接口、类时不预先指定具体的类型，而是在使用时指定。

```typescript
function reverse<T>(items: T[]): T[] {
    return items.reverse();
}

const sample = [1, 2, 3];
const reversed = reverse(sample); // T 被推断为 number
```

<a id="1.2"></a>
### 1.2 联合类型 (Union Types)

允许一个值是多种类型之一。

```typescript
function format(input: string | string[]) {
    if (typeof input === "string") {
        return input;
    }
    return input.join(", ");
}
```

<a id="1.3"></a>
### 1.3 交叉类型 (Intersection Types)

允许将多个类型合并为一个。

```typescript
interface ErrorHandling {
    success: boolean;
    error?: { message: string };
}

interface Data {
    data: string;
}

type Response = Data & ErrorHandling;
```

<a id="1.4"></a>
### 1.4 元组 (Tuples)

数组的特殊形式，每个成员的类型都是已知的。

```typescript
let nameAndAge: [string, number] = ["Alice", 25];
```

<a id="1.5"></a>
### 1.5 类型别名 (Type Aliases)

为类型设置一个新的名字，常用于联合类型和交叉类型。

```typescript
type ID = string | number;
```

<a id="2"></a>
## 2 运行 tsc 命令验证

1. 创建 `advanced_test.ts` 文件。

2. 输入上述代码。

3. 执行校验命令：

   ```bash
   tsc advanced_test.ts --strict --noEmit
   ```

   确保泛型推断和联合类型收窄逻辑正确无误。

<a id="3"></a>
## 3 工程化 (Engineering)

使用泛型和联合类型可以构建高度复用的组件，通过接口层级结构来组织代码，增强代码的可读性和稳定性。

<a id="4"></a>
## 4 编译优化 (Compilation Optimization)

开启 `strictNullChecks` 可以有效避免 "Cannot read property of undefined" 的错误，提高程序健壮性。

<a id="5"></a>
## 5 迁移案例 (Migration Cases)

在将复杂的 JS 库迁移到 TS 时，利用泛型可以更好地描述库的灵活性，同时利用交叉类型来组合原有的对象结构。

[深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/)<!-- nofollow -->
