<a id="title"></a>
# GDScript 基础概念与语法

> fanquanpp 的个人学习笔记

创建时间：2026-04-05
最新更新时间：2026-04-05

<a id="1"></a>
## 1 引言

GDScript 是 Godot 游戏引擎的官方脚本语言，专为游戏开发设计，具有简洁易学的语法和强大的功能。本笔记将详细介绍 GDScript 的基础概念和语法规则。

<a id="2"></a>
## 2 目录

- [1. GDScript 基础概念](#1-gdscript 基础概念)
- [2. GDScript 基本语法](#2-gdscript 基本语法)
- [3. 数据类型](#3-数据类型)
- [4. 变量和常量](#4-变量和常量)
- [5. 控制流](#5-控制流)
- [6. 函数](#6-函数)
- [7. 类与对象](#7-类与对象)
- [8. 信号与连接](#8-信号与连接)
- [9. 总结](#9-总结)
- [10. 参考资料](#10-参考资料)

<a id="3"></a>
## 3 . GDScript 基础概念

GDScript 是一种动态类型的脚本语言，专为 Godot 游戏引擎设计，具有以下特点：

- 语法类似 Python，易于学习
- 与 Godot 引擎深度集成
- 支持面向对象编程
- 提供游戏开发所需的专用功能
- 性能优化适合游戏开发

<a id="4"></a>
## 4 . GDScript 基本语法

<a id="4.1"></a>
### 4.1 代码结构

GDScript 文件通常以`.gd`为扩展名，基本结构如下：

```gdscript
# 脚本注释

extends Node  # 继承自 Node 类

# 变量定义
var score = 0
var player_name = "Player"

# 函数定义
func _ready():
    # 节点就绪时调用
    print("Hello, GDScript!")

func _process(delta):
    # 每帧调用
    pass
```

<a id="4.2"></a>
### 4.2 注释

```gdscript
# 单行注释

# 多行注释
# 可以这样写
# 或者使用
"""
多行字符串作为注释
"""
```

<a id="5"></a>
## 5 . 数据类型

<a id="5.1"></a>
### 5.1 基本数据类型

| 类型 | 描述 | 示例 |
|------|------|------|
| int | 整数 | `var x = 10` |
| float | 浮点数 | `var y = 3.14` |
| bool | 布尔值 | `var is_true = true` |
| String | 字符串 | `var name = "Godot"` |
| Vector2 | 二维向量 | `var position = Vector2(10, 20)` |
| Vector3 | 三维向量 | `var position_3d = Vector3(10, 20, 30)` |
| Color | 颜色 | `var red = Color(1, 0, 0)` |
| Array | 数组 | `var numbers = [1, 2, 3, 4, 5]` |
| Dictionary | 字典 | `var player_data = {"name": "Player", "score": 100}` |

<a id="5.2"></a>
### 5.2 类型推断

GDScript 支持类型推断，但也可以显式指定类型：

```gdscript
# 类型推断
var age = 25  # 自动推断为 int

# 显式类型
var name: String = "Godot"
var position: Vector2 = Vector2(0, 0)
```

<a id="6"></a>
## 6 . 变量和常量

<a id="6.1"></a>
### 6.1 变量

```gdscript
# 局部变量
func _ready():
    var local_var = "local"
    print(local_var)

# 成员变量
var member_var = "member"

# 静态变量
static var static_var = "static"
```

<a id="6.2"></a>
### 6.2 常量

```gdscript
const PI = 3.14159
const MAX_HEALTH = 100
```

<a id="7"></a>
## 7 . 控制流

<a id="7.1"></a>
### 7.1 条件语句

```gdscript
if score > 100:
    print("You win!")
elif score > 50:
    print("Good job!")
else:
    print("Keep trying!")
```

<a id="7.2"></a>
### 7.2 循环语句

```gdscript
# for 循环
for i in range(5):
    print(i)

# while 循环
var i = 0
while i < 5:
    print(i)
    i += 1

# 循环控制
for i in range(10):
    if i == 5:
        break  # 跳出循环
    if i % 2 == 0:
        continue  # 跳过当前迭代
    print(i)
```

<a id="8"></a>
## 8 . 函数

<a id="8.1"></a>
### 8.1 函数定义

```gdscript
func greet(name: String) -> String:
    return "Hello, " + name

func calculate_damage(attack: float, defense: float) -> float:
    var damage = attack - defense
    return max(damage, 0)
```

<a id="8.2"></a>
### 8.2 默认参数

```gdscript
func greet(name: String = "World") -> String:
    return "Hello, " + name
```

<a id="8.3"></a>
### 8.3 可变参数

```gdscript
func sum_numbers(vararg numbers: int) -> int:
    var total = 0
    for number in numbers:
        total += number
    return total
```

<a id="9"></a>
## 9 . 类与对象

<a id="9.1"></a>
### 9.1 类定义

```gdscript
class_name Character

var name: String
var health: int = 100

func _init(name: String, health: int = 100):
    self.name = name
    self.health = health

func take_damage(amount: int):
    health -= amount
    if health <= 0:
        die()

func die():
    print(name, " has died!")
```

<a id="9.2"></a>
### 9.2 继承

```gdscript
class_name Player extends Character

var score: int = 0

func _init(name: String):
    ._init(name)  # 调用父类构造函数

func add_score(points: int):
    score += points
    print(name, " now has ", score, " points")
```

<a id="10"></a>
## 10 . 信号与连接

<a id="10.1"></a>
### 10.1 信号定义

```gdscript
# 在类中定义信号
signal hit(damage: int)
signal game_over

# 发送信号
func take_damage(amount: int):
    health -= amount
    emit_signal("hit", amount)
    if health <= 0:
        emit_signal("game_over")
```

<a id="10.2"></a>
### 10.2 信号连接

```gdscript
# 在代码中连接信号
func _ready():
    var player = Player.new("Player")
    player.connect("hit", self, "on_player_hit")
    player.connect("game_over", self, "on_game_over")

# 信号处理函数
func on_player_hit(damage: int):
    print("Player took ", damage, " damage")

func on_game_over():
    print("Game over!")
```

<a id="11"></a>
## 11 . 总结

GDScript 是一种专为游戏开发设计的脚本语言，具有简洁易学的语法和强大的功能。通过本笔记的学习，你应该已经掌握了 GDScript 的基础概念、基本语法、数据类型、控制流、函数、类与对象以及信号与连接等核心知识点。

在实际应用中，你需要根据具体的游戏开发需求，灵活运用 GDScript 的各种特性，创建出功能丰富、性能优良的游戏。同时，你还需要关注 GDScript 的最佳实践，确保代码的质量和可维护性。

通过不断学习和实践，你将能够熟练使用 GDScript，创建出更加优秀的游戏作品。

<a id="12"></a>
## 12 . 参考资料

- [Godot 官方文档](https://docs.godotengine.org/en/4.6/)
- [GDScript 参考](https://docs.godotengine.org/en/4.6/tutorials/scripting/gdscript/gdscript_basics.html)

<a id="13"></a>
## 13 版本历史

| 日期 | 版本 | 变更内容 | 变更人 |
|------|------|----------|--------|
| 2026-04-05 | 1.0 | 初始创建 | fanquanpp |