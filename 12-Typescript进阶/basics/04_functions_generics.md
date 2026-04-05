# 函数与泛型 (Functions & Generics)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: 函数重载、泛型约束、泛型类及泛型方法深度解析。 | Function overloading, Generics, constraints, and classes.

## 1. 函数重载 (Function Overloading)
为同一个函数提供多个类型定义，根据参数不同返回不同类型。
```typescript
function add(a: number, b: number): number;
function add(a: string, b: string): string;
function add(a: any, b: any): any {
  return a + b;
}
```

## 2. 泛型 (Generics)
**核心思想**: 类型参数化。将类型作为变量传递。
```typescript
function identity<T>(arg: T): T {
  return arg;
}
let output = identity<string>("myString");
```

## 3. 泛型约束 (Generic Constraints)
使用 `extends` 限制泛型的范围。
```typescript
interface Lengthwise {
  length: number;
}
function logLength<T extends Lengthwise>(arg: T): T {
  console.log(arg.length);
  return arg;
}
```

## 4. 泛型类 (Generic Classes)
```typescript
class Box<T> {
  data: T;
  constructor(data: T) { this.data = data; }
}
```

## 5. 泛型工具 (Utility Types)
- **`Partial<T>`**: 使所有属性可选。
- **`Readonly<T>`**: 使所有属性只读。
- **`Record<K, T>`**: 构建键值对。
- **`Pick<T, K>`**: 选取部分属性。
- **`Omit<T, K>`**: 排除部分属性。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 TS 泛型工具与约束规则。
