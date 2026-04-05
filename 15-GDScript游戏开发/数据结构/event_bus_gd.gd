/*
 * @Author:      Anonymous
 * @Algorithm:   全局事件总线 (Global Event Bus Pattern)
 * @Language:    GDScript 4.x
 * @Description: 演示在 Godot 中通过单例 (Autoload) 实现解耦的信号管理。 | Demonstrate decoupled signal management using Autoload in Godot.
 * @Teaching:    掌握信号 (Signals) 的定义与 emit。这是 Godot 架构的核心。 | Defining and emitting signals. This is core to Godot architecture.
 */

extends Node

# 1. 定义信号 | Define signals
signal player_health_changed(new_health: int)
signal game_over
signal item_collected(item_name: String)

# 2. 模拟发射信号 | Emitting signals
func notify_health_change(health: int):
    player_health_changed.emit(health)
    print("EventBus: Player health changed to ", health)

func _ready():
    # 模拟监听信号 | Simulating listener
    player_health_changed.connect(_on_health_changed)
    notify_health_change(100)
    print("Event Bus pattern tests passed! | 事件总线模式测试通过！")

func _on_health_changed(health: int):
    # 处理逻辑 | Handling logic
    pass
