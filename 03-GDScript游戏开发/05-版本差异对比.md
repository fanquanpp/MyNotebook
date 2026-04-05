---
url: "https://docs.godotengine.org/en/4.6/tutorials/scripting/gdscript/gdscript_basics.html"
version: "4.5/4.6"
update_date: "2026-04-05"
tags: ["GDScript", "VersionDifferences", "Compatibility"]
---

<a id="title"></a>
# GDScript 版本差异

<a id="1"></a>
## 1 语法 (Syntax)

<a id="1.1"></a>
### 1.1 Godot 3 vs Godot 4

- **注解**: Godot 4 引入了 `@export`, `@onready` 等。
- **信号**: Godot 4 使用 `.emit()` 触发。
- **Await**: Godot 4 使用 `await` 取代了 `yield`。
- **Callable**: Godot 4 引入了 `Callable` 对象。

<a id="1.2"></a>
### 1.2 Godot 4.5 vs 4.6

- **优化增强**: 静态类型性能在 4.6 中得到进一步提升。
- **新 API**: 新增部分针对 Web 平台的底层接口。

<a id="2"></a>
## 2 场景 (Scenario)

- **迁移现有项目**：了解旧语法到新语法的映射。
- **跨版本协作**：在多版本项目共存时，注意语法兼容性。

<a id="3"></a>
## 3 示例 (Example)

```gdscript
# Godot 3 (旧)
# export(int) var health = 100
# onready var label = get_node("Label")
# yield(get_tree().create_timer(1.0), "timeout")

# Godot 4 (新)
@export var health: int = 100
@onready var label = $Label
await get_tree().create_timer(1.0).timeout
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **直接复制旧代码**：Godot 3 代码无法在 Godot 4 中直接运行。
2. **不习惯 Callable**：直接使用字符串连接信号在 4.x 中不是最佳实践。
3. **忽略注解变化**：遗忘 `@` 前缀会导致语法错误。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 自动化迁移工具

Godot 引擎自带的迁移助手可以转换大部分语法。

<a id="5.2"></a>
### 5.2 持续优化

4.x 分支处于活跃开发期，持续关注官方发布的迁移指南。

[Godot Docs](https://docs.godotengine.org/en/4.6/index.html)<!-- nofollow -->
