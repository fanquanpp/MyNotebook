# 控制流 (Control Flow)

> @Author: Anonymous
> @Category: JS Basics
> @Description: 条件分支、循环结构、异常处理及现代迭代器。 | Conditionals, loops, error handling, and iterators.

## 1. 条件分支 (Conditionals)
- **`if...else if...else`**: 基础判断。
- **`switch`**: 严格相等比较。
  ```javascript
  switch(val) {
    case 1: ...; break;
    default: ...;
  }
  ```

## 2. 循环结构 (Loops)
- **`for`**: 传统计次循环。
- **`while` / `do...while`**: 条件驱动。
- **`for...in`**: 遍历对象的可枚举属性。
- **`for...of`** (ES6): 遍历可迭代对象 (Array, Map, Set, String)。**推荐**。

## 3. 跳转语句 (Jumps)
- **`break`**: 跳出循环。
- **`continue`**: 跳过当前迭代。
- **`return`**: 函数返回。

## 4. 异常处理 (Error Handling)
```javascript
try {
  throw new Error("Something went wrong");
} catch (err) {
  console.error(err.message);
} finally {
  // 总是执行
}
```

## 5. 最佳实践
- 优先使用 `for...of` 替代传统 `for` 遍历数组。
- 复杂条件逻辑考虑使用卫语句 (Guard Clauses)。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 JS 控制流与异常处理细节。
