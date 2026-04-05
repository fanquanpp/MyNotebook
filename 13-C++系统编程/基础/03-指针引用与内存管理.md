# C++ 指针、引用与内存管理 (Pointers & Memory)

> @Author: Anonymous
> @Category: C++ Basics
> @Description: 指针、引用、动态内存分配、RAII 及智能指针。 | Pointers, references, dynamic memory, RAII, and smart pointers.

## 1. 指针与引用 (Pointers & References)
### 1.1 指针 (Pointers)
存储内存地址。
```cpp
int x = 10;
int* p = &x;
*p = 20; // 修改 x
```

### 1.2 引用 (References)
变量的别名。**必须初始化且不能重绑定**。
```cpp
int& r = x;
r = 30; // 修改 x
```

## 2. 内存管理 (Memory Management)
### 2.1 堆与栈
- **栈 (Stack)**: 自动管理，速度快，空间有限。
- **堆 (Heap)**: 手动管理 (`new`/`delete`)，空间大。

### 2.2 动态内存 (Manual)
```cpp
int* p = new int(10);
delete p; // 必须手动释放，否则内存泄漏
```

## 3. RAII 模式 (Resource Acquisition Is Initialization)
**核心思想**: 利用对象的生命周期管理资源（内存、文件、锁）。
- 构造函数获取资源，析构函数释放资源。

## 4. 智能指针 (Smart Pointers - C++11+)
位于 `<memory>` 库，自动管理堆内存。
- **`std::unique_ptr`**: 独占所有权，不可复制。
- **`std::shared_ptr`**: 共享所有权，引用计数。
- **`std::weak_ptr`**: 解决循环引用问题。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 C++ 指针与现代内存管理。
