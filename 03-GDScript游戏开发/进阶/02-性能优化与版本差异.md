# GDScript 性能优化与进阶技巧 (Performance & Advanced Tips)

> @Author: Anonymous
> @Category: GDScript Advanced
> @Description: 静态类型优化、内存管理、元编程及版本差异。 | Static typing optimization, memory, meta-programming, and versions.

## 1. 性能优化 (Performance)
- **静态类型优化**: 在 Godot 4 中，静态类型变量比动态类型更快。
- **减少每帧调用**: 避免在 `_process` 中进行昂贵的计算或查询。
- **对象池 (Object Pooling)**: 频繁创建/销毁节点开销巨大，应复用。
- **类型数组 (`PackedArray`)**: 比普通数组存储更紧凑、访问更高效。

## 2. 内存管理 (Memory)
- **引用计数 (`RefCounted`)**: 大部分 GDScript 对象自动管理内存。
- **手动释放 (`Node`)**: `queue_free()` 安全销毁节点。
- **循环引用**: 弱引用 (`weakref`) 避免内存泄漏。

## 3. 元编程与动态访问
- **`get()` / `set()`**: 动态访问属性。
- **`call()`**: 动态调用方法。
- **`Object.get_property_list()`**: 获取对象的所有属性定义。

## 4. 版本差异 (Godot 3 vs 4)
- 信号连接语法改变。
- `yield` 变为 `await`。
- `class_name` 现在是必需的。
- 类型系统极大增强。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 GDScript 性能优化与版本演进。
