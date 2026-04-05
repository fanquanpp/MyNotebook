# 对象与数组 (Objects & Arrays)

> @Author: Anonymous
> @Category: JS Basics
> @Description: 对象字面量、原型链、数组常用方法及解构赋值。 | Object literals, prototype, array methods, and destructuring.

## 1. 对象 (Objects)
- **创建**: `const obj = { name: "JS" };`。
- **原型 (Prototype)**: 每个对象都有 `__proto__` 指向构造函数的 `prototype`。
- **类 (Class)**: ES6 引入的语法糖。
  ```javascript
  class User {
    constructor(name) { this.name = name; }
  }
  ```

## 2. 数组 (Arrays)
### 2.1 基础操作
- `push/pop`: 末尾增删。
- `shift/unshift`: 开头增删。
- `splice`: 任意位置增删改。

### 2.2 现代迭代方法 (高阶函数)
- **`map`**: 转换数组。
- **`filter`**: 过滤数组。
- **`reduce`**: 累积计算。
- **`forEach`**: 简单遍历。
- **`find/findIndex`**: 查找。

## 3. 解构赋值 (Destructuring)
```javascript
const [a, b] = [1, 2];
const { name, age } = user;
```

## 4. 展开/剩余运算符 (`...`)
- **展开**: `const newArr = [...oldArr, 4];`。
- **剩余**: `function sum(...nums) { ... }`。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化原型链与常用数组高阶函数。
