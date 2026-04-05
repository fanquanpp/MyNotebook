# 函数、作用域与闭包 (Functions & Scope)

> @Author: Anonymous
> @Category: JS Basics
> @Description: 函数定义、箭头函数、作用域链、闭包及 This 指向。 | Definitions, arrow functions, scope, closures, and This.

## 1. 函数定义 (Definitions)
1. **函数声明**: `function add(a, b) { ... }` (存在提升)。
2. **函数表达式**: `const add = function(a, b) { ... };`。
3. **箭头函数 (ES6)**: `(a, b) => a + b` (不绑定 `this`)。

## 2. 作用域 (Scope)
- **全局作用域**: 页面生命周期内有效。
- **函数作用域**: 函数内部有效。
- **块级作用域** (ES6): `let/const` 在 `{}` 内有效。

## 3. 闭包 (Closures)
**定义**: 函数与其绑定的引用环境 (词法作用域) 的组合。
- **作用**: 私有化变量、模拟模块、数据持久化。
```javascript
function counter() {
  let count = 0;
  return () => ++count;
}
```

## 4. `this` 指向机制
1. **普通函数**: 指向调用者 (没调用者指向全局/undefined)。
2. **箭头函数**: 继承父级作用域的 `this`。
3. **显式绑定**: `call()`, `apply()`, `bind()`。
4. **构造函数**: 指向新创建的实例。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化闭包与 This 指向原理。
