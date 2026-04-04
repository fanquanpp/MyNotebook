---
url: "https://docs.godotengine.org/en/4.6/tutorials/best_practices/introduction_to_best_practices.html"
version: "4.5/4.6"
update_date: "2026-04-05"
tags: ["GDScript", "BestPractices", "Performance"]
---

<a id="title"></a>
# GDScript 最佳实践与性能优化

<a id="1"></a>
## 1 语法 (Syntax)

<a id="1.1"></a>
### 1.1 静态类型提示

为了获得最佳性能，请尽可能使用静态类型。

<a id="1.2"></a>
### 1.2 数组与字典初始化

在循环外部初始化，并尽可能复用。

```gdscript
var list := []
list.resize(100) # 预分配空间
```

<a id="1.3"></a>
### 1.3 矢量化操作

使用 Godot 引擎内置的矢量运算（如 `Vector2`, `Vector3`）。

<a id="2"></a>
## 2 场景 (Scenario)

- **物理处理**：在 `_physics_process(delta)` 中执行物理代码。
- **UI 更新**：在数据变更时通过信号更新。
- **实例化**：使用 `ObjectPool` 减少频繁的实例化。

<a id="3"></a>
## 3 示例 (Example)

```gdscript
extends Node3D

var pool := []

func get_bullet():
    if pool.is_empty():
        return Bullet.new()
    return pool.pop_back()

func recycle_bullet(bullet):
    pool.push_back(bullet)
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **逐帧计算过多**：在 `_process` 中执行重度计算。
2. **不合理的资源加载**：在运行时频繁调用 `load()`。
3. **大循环内使用 Await**：性能极其低下。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 GDExtension

对于计算密集型逻辑，考虑使用 GDExtension（C++ / Rust / C#）。

<a id="5.2"></a>
### 5.2 线程安全

使用 `WorkerThreadPool` 或手动管理 `Thread`。

[Godot Best Practices](https://docs.godotengine.org/en/4.6/tutorials/best_practices/index.html)<!-- nofollow -->
