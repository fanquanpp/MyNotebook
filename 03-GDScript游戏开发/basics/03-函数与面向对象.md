# 函数、类与面向对象 (Functions & OOP)

> @Author: Anonymous
> @Category: GDScript Basics
> @Description: 函数定义、类声明、继承、构造函数及 Lambda 表达式。 | Function definitions, classes, inheritance, constructors, and Lambdas.

## 1. 函数 (Functions)
```gdscript
func add(a: int, b: int) -> int:
    return a + b

# 默认参数
func greet(name: String = "Guest"):
    print("Hello " + name)
```

## 2. 类与对象 (Classes & Objects)
每个 `.gd` 文件本质上都是一个类。
- **`class_name`**: 给类命名，方便在其他地方直接使用。
- **`extends`**: 继承。
- **`_init()`**: 构造函数。

```gdscript
class_name Player extends CharacterBody2D

var speed := 300.0

func _init(n: String):
    print("Player initialized: ", n)
```

## 3. Lambda 表达式 (Godot 4+)
匿名函数，常用于临时回调。
```gdscript
var my_func = func(x): return x * x
print(my_func.call(5)) # 25
```

## 4. 静态方法 (Static Methods)
不依赖实例，通过类名直接调用。
```gdscript
static func get_version():
    return "1.0.0"
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 GDScript 函数与面向对象特性。
