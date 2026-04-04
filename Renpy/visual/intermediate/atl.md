---
url: "https://github.com/renpy/renpy/blob/master/renpy/atl.py"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "ATL", "Animations", "Transforms"]
---

<a id="title"></a>
# Ren'Py 动画与变换语言 (ATL)

<a id="1"></a>
## 1 核心概念 (Core Concepts)

ATL (Animation and Transformation Language) 是 Ren'Py 的专用 DSL。其底层实现由 `ATLTransform` 类负责。

<a id="1.1"></a>
### 1.1 属性插值 (Interpolation)

ATL 支持在两个值之间进行线性或其他方式的插值。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 基本变换

```renpy
# 1: 定义变换
# 2: 应用变换
transform my_move:
    xalign 0.0
    linear 2.0 xalign 1.0

show eileen at my_move
```

<a id="2.2"></a>
### 2.2 并行与循环 (Parallel & Repeat)

```renpy
# 1: 循环动画
# 2: 并行执行
image eileen_moving:
    "eileen_base"
    xalign 0.0
    linear 1.0 xalign 1.0
    repeat

transform pulse:
    parallel:
        linear 1.0 zoom 1.2
        linear 1.0 zoom 1.0
        repeat
    parallel:
        linear 2.0 alpha 0.5
        linear 2.0 alpha 1.0
        repeat
```

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 Warpers (缓动函数)

ATL 提供多种内置缓动函数（如 `linear`, `ease`），在 `atl.py` 中定义。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 动态变换示例

[ATL documentation](https://www.renpy.org/doc/html/atl.html)<!-- nofollow -->

```renpy
# 1: 组合动画
# 2: 响应事件
transform bounce:
    yalign 1.0
    linear 0.2 yalign 0.9
    linear 0.2 yalign 1.0
    pause 1.0
    repeat
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 ATL 不生效

- **原因**：可能被后续的 `show` 命令覆盖。
- **解决**：确保 `at` 子句正确应用。

<a id="5.2"></a>
### 5.2 内存泄漏

- **原因**：过于复杂的循环动画。
- **解决**：精简动画层级。

[Ren'Py ATL Source](https://github.com/renpy/renpy/blob/master/renpy/atl.py)<!-- nofollow -->
