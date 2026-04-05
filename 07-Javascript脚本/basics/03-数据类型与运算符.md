# 数据类型与运算符 (Data Types & Operators)

> @Author: Anonymous
> @Category: JS Basics
> @Description: JS 原始类型、引用类型、类型检测及运算符优先级。 | Primitive, Reference types, type checking, and operators.

## 1. 数据类型 (Data Types)
### 1.1 原始类型 (Primitives - 栈存储)
- **`number`**: 包含整型和浮点型，还有 `NaN` (Not a Number) 和 `Infinity`。
- **`string`**: 字符串 (支持模板字符串 `` `...` ``)。
- **`boolean`**: `true` / `false`。
- **`undefined`**: 已声明但未赋值。
- **`null`**: 表示空对象指针。
- **`symbol`** (ES6): 唯一标识符。
- **`bigint`** (ES2020): 大整数。

### 1.2 引用类型 (Reference - 堆存储)
- **`Object`**: 对象、数组、函数。

## 2. 类型检测 (Type Checking)
- **`typeof`**: 用于检测原始类型 (注意: `typeof null` 为 `"object"`)。
- **`instanceof`**: 用于检测构造函数。
- **`Array.isArray()`**: 检测数组。

## 3. 核心运算符 (Operators)
### 3.1 算术
- `+`, `-`, `*`, `/`, `%`, `**` (幂)。
### 3.2 比较
- `==` (强制转换), `===` (严格相等 - **推荐**)。
### 3.3 逻辑
- `&&` (与), `||` (或), `!` (非)。
- **空值合并 (`??`)**: `a ?? b` (当 a 为 null/undefined 时取 b)。
### 3.4 三元
- `condition ? expr1 : expr2`。

## 4. 类型转换 (Coercion)
- **隐式**: `1 + '2' === '12'`。
- **显式**: `Number()`, `String()`, `Boolean()`。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 JS 数据类型与现代运算符。
