---
url: "https://github.com/renpy/renpy/blob/master/renpy/sl2/slast.py"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "ScreenLanguage", "UI", "SL2"]
---

<a id="title"></a>
# Ren'Py 屏幕语言 (SL2)

<a id="1"></a>
## 1 核心概念 (Core Concepts)

Screen Language (SL2) 是 Ren'Py 提供的 UI 开发工具。其核心在 `renpy/sl2/slast.py` 中解析。

<a id="1.1"></a>
### 1.1 状态管理 (SLContext)

`SLContext` 对象在执行时跟踪作用域、样式前缀、子显示对象等。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 定义屏幕 (screen)

```renpy
# 1: 定义屏幕
# 2: 布局与控件
screen my_screen():
    vbox:
        align (0.5, 0.5)
        text "Welcome to the game!"
        textbutton "Start" action Start()
```

<a id="2.2"></a>
### 2.2 属性与动作 (Properties & Actions)

- **Properties**: `align`, `background`, `style_prefix`.
- **Actions**: `Start()`, `Show()`, `Hide()`, `Jump()`.

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 样式前缀 (style_prefix)

用于简化样式应用，自动为屏幕内的组件查找对应的样式名。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 最小运行 Demo

[Screen Language reference](https://www.renpy.org/doc/html/screens.html)<!-- nofollow -->

```renpy
# 1: 屏幕定义
# 2: 响应点击
screen health_bar(current_hp, max_hp):
    bar value current_hp range max_hp:
        xsize 400
        ysize 40
        align (0.05, 0.05)

label start:
    show screen health_bar(80, 100)
    "Your health is displayed."
    return
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 屏幕刷新不及时

- **原因**：Ren'Py 屏幕是高度优化的。
- **解决**：使用 `renpy.restart_interaction()`。

<a id="5.2"></a>
### 5.2 按钮无法点击

- **原因**：可能是被其他透明层遮挡。
- **解决**：检查 `zorder`。

[Ren'Py Screen Source](https://github.com/renpy/renpy/blob/master/renpy/sl2/)<!-- nofollow -->
