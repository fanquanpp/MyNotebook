# 03-调试与性能优化 (C++)

## 1. 调试工具
### 1.1 GDB (GNU Debugger)
- `g++ -g main.cpp -o main` (开启调试信息)
- `gdb ./main` (启动调试)
- `break main` (设置断点)
- `run` (运行)
- `next` (单步执行)
- `print var` (查看变量值)

### 1.2 Valgrind (内存泄漏检查)
- `valgrind --leak-check=full ./main` (启动检查)
- `heap-check` (查看堆内存使用情况)

## 2. 常见错误
### 2.1 内存访问越界
- **现象**: 程序崩溃 (Segmentation fault)。
- **原因**: 访问了不属于程序的内存。
- **解决方案**: 检查数组索引，使用智能指针。

### 2.2 内存泄漏
- **现象**: 程序内存占用持续上升。
- **原因**: `new` 之后没有 `delete`。
- **解决方案**: 使用智能指针，遵循 RAII 模式。

## 3. 性能瓶颈分析
### 3.1 Gprof (性能剖析)
- `g++ -pg main.cpp -o main` (开启性能剖析)
- `./main` (运行)
- `gprof ./main gmon.out > profile.txt` (生成报告)

## 4. 优化策略
### 4.1 算法复杂度
- 优化算法的时间复杂度和空间复杂度。
- 优先选择 O(n log n) 算法（如 `std::sort`）。

### 4.2 缓存友好性
- 提高缓存命中率，使用连续内存（如 `std::vector` 而不是 `std::list`）。

### 4.3 并行化
- 使用 `std::thread` 或 `OpenMP` 提高性能。

## 5. 延伸阅读
- [CppGuide (性能优化章节)](https://github.com/balloonwj/CppGuide)
- [CS-Books (调试篇)](https://github.com/forthespada/CS-Books)

## 6. 更新日志
- **2026-04-05**: 初始创建，涵盖调试工具、常见错误、性能分析与优化。
