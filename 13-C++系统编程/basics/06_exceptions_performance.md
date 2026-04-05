# C++ 异常处理与性能优化 (Exceptions & Performance)

> @Author: Anonymous
> @Category: C++ Basics
> @Description: 异常捕获机制、性能分析、内联函数及编译器优化。 | Exception handling, profiling, inline, and optimization.

## 1. 异常处理 (Exceptions)
使用 `try-catch` 块。
```cpp
try {
    throw std::runtime_error("Error occurred");
} catch (const std::exception& e) {
    std::cerr << e.what() << std::endl;
}
```
- **注意**: 构造函数抛异常需谨慎，析构函数严禁抛异常。

## 2. 性能优化 (Performance)
- **`inline`**: 建议编译器内联小函数以减少调用开销。
- **`const`**: 帮助编译器优化，同时提高代码安全性。
- **移动语义 (Move Semantics - C++11)**: 使用 `std::move` 避免昂贵的深拷贝。
- **编译器优化级别**: `-O2`, `-O3`。

## 3. 调试工具 (Debugging)
- **GDB**: 强大的命令行调试器。
- **Valgrind**: 内存泄漏与访问错误检测。
- **Google Benchmark**: 性能基准测试框架。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 C++ 异常处理与基础优化技巧。
