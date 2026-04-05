---
url: "https://docs.godotengine.org/zh-cn/4.5/getting_started/scripting/gdscript/gdscript_basics.html"
version: "4.5/4.6"
update_date: "2026-04-05"
tags: ["GDScript", "Syntax", "Basics"]
---

<a id="title"></a>
# GDScript 基础语法

<a id="1"></a>
## 1 语法 (Syntax)

GDScript 是一种高级、动态类型编程语言。其语法类似于 Python，使用缩进来定义代码块。

<a id="1.1"></a>
### 1.1 变量声明

- **动态类型**：使用 `var` 关键字。

  ```gdscript
  var a = 5
  var s = "Hello"
  ```

- **静态类型**：使用 `: Type` 或 `:=`。

  ```gdscript
  var b: int = 10
  var c := 20 # 推断为 int
  ```

<a id="1.2"></a>
### 1.2 常量

使用 `const` 关键字。

```gdscript
const MAX_SPEED = 100
```

<a id="1.3"></a>
### 1.3 控制流

- **If/Else**:

  ```gdscript
  if x > 10:
      print("Large")
  elif x < 5:
      print("Small")
  else:
      print("Medium")
  ```

- **Match**:

  ```gdscript
  match x:
      1:
          print("One")
      2:
          print("Two")
      _:
          print("Default")
  ```

<a id="2"></a>
## 2 场景 (Scenario)

GDScript 主要用于处理游戏逻辑、控制节点行为、响应信号以及与 Godot 引擎 API 交互。

<a id="3"></a>
## 3 示例 (Example)

```gdscript
extends Node2D

var health := 100

func _ready():
    print("Player is ready!")

func take_damage(amount: int):
    health -= amount
    if health <= 0:
        die()

func die():
    queue_free()
```

<a id="4"></a>
## 4 陷阱 (Trap)

1. **强引用循环**：可能导致内存泄漏。
2. **动态类型性能**：在密集计算中较慢。
3. **缩进混用**：混用空格和制表符会导致错误。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 静态类型优化

在 Godot 4 中，静态类型不仅提供类型检查，还能提升运行效率。

<a id="5.2"></a>
### 5.2 Lambda 表达式

```gdscript
var my_lambda = func(x): print(x)
my_lambda.call("Hello from Lambda")
```

[Godot Docs](https://docs.godotengine.org/zh-cn/4.5/index.html)<!-- nofollow -->
