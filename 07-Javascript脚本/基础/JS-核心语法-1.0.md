# 01-核心概念与语法 (JavaScript)

## 1. 核心概念
JavaScript 是一种动态类型、弱类型的脚本语言，核心特性包括：
- **函数优先**: 函数是一等公民。
- **基于原型**: 对象继承通过原型链实现。
- **事件驱动**: 异步编程模型的基础。

## 2. 语法基础
### 2.1 变量声明
- `let`: 块级作用域变量（推荐）。
- `const`: 块级作用域常量（推荐）。
- `var`: 函数作用域变量（不推荐）。
- **最佳实践**: 优先使用 `const`，仅在需要重新赋值时使用 `let`。参考 [Airbnb Style Guide (Variables)](https://github.com/airbnb/javascript#variables)<!-- nofollow -->

### 2.2 数据类型
| 类型 | 描述 | 示例 |
| :--- | :--- | :--- |
| `Number` | 数字 | `let x = 10;` |
| `String` | 字符串 | `let s = "JS";` |
| `Boolean` | 布尔值 | `let b = true;` |
| `Object` | 对象 | `let o = { id: 1 };` |
| `Array` | 数组 | `let a = [1, 2, 3];` |
| `null` | 空值 | `let n = null;` |
| `undefined` | 未定义 | `let u;` |

### 2.3 流程控制
```javascript
if (x > 0) {
    // 逻辑
} else if (x < 0) {
    // 逻辑
} else {
    // 逻辑
}

for (let i = 0; i < 10; ++i) {
    // 循环
}
```

## 3. 函数与作用域
### 3.1 箭头函数
```javascript
const add = (a, b) => a + b;
```
**最佳实践**: 优先使用箭头函数以保持简短。参考 [Airbnb Style Guide (Arrows)](https://github.com/airbnb/javascript#arrow-functions)<!-- nofollow -->

## 4. 异步编程
### 4.1 Promise & Async/Await
```javascript
const fetchData = async () => {
    try {
        const response = await fetch('https://api.example.com/data');
        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error(error);
    }
};
```

## 5. 最佳实践
- **严格模式**: 脚本开头添加 `'use strict';`。
- **命名规范**: 使用 `camelCase` 命名变量和函数。
- **等值比较**: 始终使用 `===` 和 `!==` 进行比较。
- **箭头函数**: 优先使用箭头函数以保持简短。
- **解构赋值**: 优先使用解构赋值简化代码。
- **模板字符串**: 使用模板字符串代替字符串拼接。
- **默认参数**: 使用默认参数代替条件判断。
- **对象简写**: 使用对象属性和方法的简写形式。
- **数组方法**: 优先使用数组的高阶方法（如 map、filter、reduce）。

**参考**: [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)<!-- nofollow -->

## 6. 延伸阅读
- [jkchao/typescript-book-chinese (TS 部分)](https://github.com/jkchao/typescript-book-chinese)
- [Electron (中文文档)](https://www.electronjs.org/zh/)

## 7. 更新日志
- **2026-04-05**: 初始化核心概念、语法、函数及异步编程。
