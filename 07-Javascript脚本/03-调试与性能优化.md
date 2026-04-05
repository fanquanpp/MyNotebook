# 03-调试与性能优化 (JavaScript)

## 1. 调试工具
### 1.1 Chrome DevTools
- `Console`: 输出调试信息 (`console.log`, `console.error`)。
- `Sources`: 设置断点、单步执行、查看变量值。
- `Network`: 监控网络请求。

### 1.2 VS Code 调试
- 配置 `launch.json` 以在编辑器中直接调试 Node.js 应用。

## 2. 常见错误
### 2.1 引用错误 (ReferenceError)
- **现象**: `Uncaught ReferenceError: x is not defined`。
- **原因**: 访问了不存在的变量。
- **解决方案**: 检查变量名拼写，确保变量已声明。

### 2.2 类型错误 (TypeError)
- **现象**: `Uncaught TypeError: x is not a function`。
- **原因**: 对非函数类型调用了 `()`。
- **解决方案**: 检查变量类型，使用 `typeof` 或 `instanceof`。

## 3. 性能瓶颈分析
### 3.1 Performance 面板
- 在 Chrome DevTools 中录制并分析渲染性能。
- 识别并优化重排 (Reflow) 和重绘 (Repaint)。

## 4. 优化策略
### 4.1 异步非阻塞
- 优先使用 `async/await` 处理 I/O 密集型任务，避免阻塞主线程。

### 4.2 缓存与防抖节流
- **防抖 (Debounce)**: 延迟执行高频操作。
- **节流 (Throttle)**: 限制高频操作的执行频率。

### 4.3 内存泄漏检查
- 监控内存快照，识别并修复未清理的定时器或 DOM 引用。

## 5. 延伸阅读
- [Airbnb JavaScript Style Guide (Performance)](https://github.com/airbnb/javascript#performance)<!-- nofollow -->
- [Electron 性能优化 (Electron Docs)](https://www.electronjs.org/zh/docs/latest/tutorial/performance)

## 6. 更新日志
- **2026-04-05**: 初始创建，涵盖调试工具、常见错误、性能分析与优化。
