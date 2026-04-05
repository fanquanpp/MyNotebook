# GDScript 基础语法 (GDScript Fundamentals)

> @Author: Anonymous
> @Category: GDScript Basics
> @Description: 变量声明、数据类型、控制流及运算符。 | Variable declarations, data types, control flow, and operators.

## 1. 变量与常量 (Variables & Constants)
### 1.1 变量声明
- **动态类型**: `var x = 10`
- **静态类型 (Godot 4 推荐)**: `var y: int = 20` 或 `var z := 30` (自动推断)。

### 1.2 常量
使用 `const` 关键字，一旦定义不可修改。
```gdscript
const GRAVITY = 9.8
```

## 2. 数据类型 (Data Types)
### 2.1 基本类型
- `int`, `float`, `bool`, `String`。
### 2.2 引擎内置类型 (Built-in)
- `Vector2` / `Vector3`: 坐标与方向。
- `Color`: 颜色 (RGBA)。
- `Rect2`: 矩形区域。
### 2.3 容器类型
- `Array`: 动态数组。
- `Dictionary`: 键值对映射。

## 3. 控制流 (Control Flow)
### 3.1 条件判断
```gdscript
if score > 100:
    print("Win")
elif score > 50:
    print("Good")
else:
    print("Try again")
```

### 3.2 模式匹配 (Match)
类似于其他语言的 switch。
```gdscript
match state:
    "idle": play_idle()
    "run": play_run()
    _: print("Unknown")
```

### 3.3 循环
- `for i in range(10):`
- `for element in my_array:`
- `while condition:`

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 GDScript 基础语法。
