# 高级类型与类型演算 (Advanced Types & Manipulation)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: 条件类型、映射类型、类型断言、非空断言及类型守卫。 | Conditional types, Mapping, Assertions, and Type Guards.

## 1. 类型断言 (Type Assertions)
手动告诉编译器变量的类型。
- `(someValue as string)`。
- `<string>someValue` (不推荐)。

## 2. 非空断言 (`!`)
告诉编译器该值不为 `null` 或 `undefined`。
```typescript
let name: string = maybeNull!;
```

## 3. 类型守卫 (Type Guards)
运行时检查类型，帮助编译器进行类型缩小。
- `typeof`: `typeof val === "string"`。
- `instanceof`: `val instanceof User`。
- `in`: `"prop" in obj`。
- **自定义守卫**: `function isString(val: any): val is string { ... }`。

## 4. 映射类型 (Mapped Types)
根据现有类型创建新类型。
```typescript
type Readonly<T> = {
  readonly [P in keyof T]: T[P];
};
```

## 5. 条件类型 (Conditional Types)
语法: `T extends U ? X : Y`。
- **`infer`**: 类型推断核心。
  ```typescript
  type ReturnType<T> = T extends (...args: any[]) => infer R ? R : any;
  ```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 TS 类型演算与条件类型机制。
