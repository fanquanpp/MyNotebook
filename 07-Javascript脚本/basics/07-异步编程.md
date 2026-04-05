# 异步编程 (Asynchronous JS)

> @Author: Anonymous
> @Category: JS Basics
> @Description: 事件循环、Callback、Promise、Async/Await 及 Fetch。 | Event Loop, Promises, and Async/Await.

## 1. 异步原理 (Event Loop)
JS 是单线程的，通过**事件循环**机制处理异步任务：
1. **调用栈 (Stack)**: 同步任务。
2. **微任务队列 (Microtask)**: `Promise.then`, `MutationObserver`。
3. **宏任务队列 (Macrotask)**: `setTimeout`, `setInterval`, I/O。
- **优先级**: 微任务 > 宏任务。

## 2. Promise (ES6)
解决了“回调地狱”问题。
- **状态**: `pending`, `fulfilled`, `rejected`。
- **链式调用**: `.then().catch().finally()`。

## 3. Async / Await (ES2017)
基于 Promise 的语法糖，使异步代码看起来像同步。
```javascript
async function getData() {
  try {
    const res = await fetch(url);
    const data = await res.json();
  } catch (err) { ... }
}
```

## 4. 常见异步操作
- **计时器**: `setTimeout`, `setInterval`。
- **网络请求**: `fetch`, `XMLHttpRequest`, `axios`。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 JS 异步模型与现代语法。
