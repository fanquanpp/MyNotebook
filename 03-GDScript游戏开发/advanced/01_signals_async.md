# 信号、异步与注解 (Signals, Async & Annotations)

> @Author: Anonymous
> @Category: GDScript Advanced
> @Description: 观察者模式、信号连接、Await 协程及 Godot 4+ 注解体系。 | Signals, Await, Coroutines, and Annotations.

## 1. 信号 (Signals)
信号是 Godot 观察者模式的基础。
### 1.1 定义与发射 (Definition & Emission)
```gdscript
signal health_changed(new_health)

func take_damage(amount: int):
    health -= amount
    health_changed.emit(health)
```

### 1.2 连接 (Connection)
- **代码连接**: `node.health_changed.connect(on_health_changed)`。
- **解耦**: 信号允许将数据层 (Model) 与视图层 (UI) 分离。

## 2. 异步处理 (Asynchronous - `await`)
Godot 4 移除了 `yield`，使用 `await` 处理。
```gdscript
func delayed_action():
    await get_tree().create_timer(1.0).timeout
    print("Action done after 1 second")
```

## 3. 注解 (Annotations - Godot 4+)
用于向编译器或编辑器提供额外信息。
- **`@export`**: 将变量暴露到编辑器 Inspector。
- **`@onready`**: 在 `_ready()` 执行前自动初始化变量。
- **`@tool`**: 让脚本在编辑器模式下运行。
- **`@rpc`**: 定义远程过程调用 (多人游戏)。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 GDScript 信号与异步特性。
