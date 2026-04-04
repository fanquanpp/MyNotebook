---
url: "https://docs.godotengine.org/en/4.6/tutorials/scripting/gdscript/gdscript_advanced.html"
version: "4.5/4.6"
update_date: "2026-04-05"
tags: ["GDScript", "Advanced", "Features"]
---

<a id="title"></a>
# GDScript 进阶特性

<a id="1"></a>
## 1 语法 (Syntax)

<a id="1.1"></a>
### 1.1 静态类型 (Static Typing)

在 Godot 4 中，静态类型被深度优化。

```gdscript
var health: int = 100
var name := "Godot" # 推断类型
```

<a id="1.2"></a>
### 1.2 信号 (Signals)

信号是 Godot 观察者模式的基础。

```gdscript
signal health_changed(new_health)

func update_health(amount: int):
    health -= amount
    health_changed.emit(health)
```

<a id="1.3"></a>
### 1.3 枚举 (Enums)

```gdscript
enum State {IDLE, RUNNING, DEAD}
var current_state = State.IDLE
```

<a id="2"></a>
## 2 场景 (Scenario)

- **UI 更新**：通过信号将数据模型与视图解耦。
- **状态机**：利用枚举和 `match` 语句构建。
- **异步处理**：使用 `await` 处理协程。

<a id="3"></a>
## 3 示例 (Example)

```gdscript
extends Sprite2D

func _process(delta):
    if Input.is_action_just_pressed("ui_accept"):
        await get_tree().create_timer(1.0).timeout
        print("Delayed message")

func _init():
    print("Instance initialized")
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **信号未断开**：在删除节点前如果未自动断开连接。
2. **Await 挂起**：在循环中使用 `await` 时可能永远挂起。
3. **弱引用失效**：`weakref` 必须定期检查。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 注解 (Annotations)

Godot 4 引入了多种注解，如 `@export`, `@onready`。

```gdscript
@export var speed: float = 200.0
@onready var label = $Label
```

<a id="5.2"></a>
### 5.2 元编程

使用 `get()`, `set()`, `call()` 动态访问属性和方法。

[Godot Docs](https://docs.godotengine.org/en/4.6/index.html)<!-- nofollow -->
