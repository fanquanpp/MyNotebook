# 基础类型系统 (Basic Types)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: TS 基础类型、字面量类型、联合类型及 Any/Unknown/Never。 | Primitive, Literal, Union types, Any, Unknown, and Never.

## 1. 基础类型 (Basic Types)
除了 JS 原有的类型，TS 增强了：
- **`boolean`**, **`number`**, **`string`**。
- **数组**: `number[]` 或 `Array<number>`。
- **元组 (Tuple)**: `[string, number]` (固定长度和类型的数组)。
- **枚举 (Enum)**: `enum Color { Red, Green, Blue }`。

## 2. 特殊类型
- **`any`**: 绕过所有类型检查。**慎用**。
- **`unknown`**: 安全的 any。在使用前必须进行类型缩小。
- **`void`**: 无返回值。
- **`never`**: 永远不会有值 (如抛出异常的函数)。
- **`null` & `undefined`**: 默认是所有类型的子类型。

## 3. 联合类型与交叉类型 (Unions & Intersections)
- **联合类型 (`|`)**: `string | number` (可以是其中之一)。
- **交叉类型 (`&`)**: `Person & Serializable` (必须同时满足)。

## 4. 类型别名 (`type`)
```typescript
type ID = string | number;
let userId: ID = "123";
```

## 5. 字面量类型 (Literal Types)
```typescript
type Direction = "North" | "South" | "East" | "West";
let move: Direction = "North";
```

---
### 更新日志 (Changelog)
- 2026-04-05: 细化 TS 基础类型与特殊类型用法。
