<a id="title"></a>
# Ren'Py 基础概念与语法

> fanquanpp 的个人学习笔记

创建时间：2026-04-05
最新更新时间：2026-04-05

<a id="1"></a>
## 1 引言

Ren'Py 是一个用于创建视觉小说和互动叙事游戏的引擎，它基于 Python，提供了简单易用的语法和丰富的功能。本笔记将详细介绍 Ren'Py 的基础概念和语法规则。

<a id="2"></a>
## 2 目录

- [1. Ren'Py 基础概念](#1-renpy 基础概念)
- [2. Ren'Py 基本语法](#2-renpy 基本语法)
- [3. 标签与跳转](#3-标签与跳转)
- [4. 角色与对话](#4-角色与对话)
- [5. 菜单与选择](#5-菜单与选择)
- [6. 变量与条件](#6-变量与条件)
- [7. 屏幕与界面](#7-屏幕与界面)
- [8. 动画与过渡](#8-动画与过渡)
- [9. 总结](#9-总结)
- [10. 参考资料](#10-参考资料)

<a id="3"></a>
## 3 . Ren'Py 基础概念

Ren'Py 是一个视觉小说引擎，具有以下特点：

- 基于 Python，易于扩展
- 提供专门的脚本语言，简化视觉小说开发
- 内置丰富的 UI 组件和动画效果
- 支持多平台发布（Windows、macOS、Linux、Android、iOS）
- 活跃的社区和丰富的资源

<a id="4"></a>
## 4 . Ren'Py 基本语法

<a id="4.1"></a>
### 4.1 脚本结构

Ren'Py 脚本文件通常以`.rpy`为扩展名，基本结构如下：

```renpy
# 脚本注释

# 定义角色
define e = Character("Eileen")

# 标签
label start:
    # 对话
    e "Hello, welcome to Ren'Py!"
    
    # 菜单
    menu:
        "Option 1":
            e "You chose option 1."
        "Option 2":
            e "You chose option 2."
    
    # 结束
    return
```

<a id="4.2"></a>
### 4.2 注释

```renpy
# 单行注释

# 多行注释
# 可以这样写
# 或者使用
"""
多行字符串作为注释
"""
```

<a id="5"></a>
## 5 . 标签与跳转

<a id="5.1"></a>
### 5.1 标签定义

```renpy
label start:
    # 内容
    return

label chapter1:
    # 内容
    return

label chapter2:
    # 内容
    return
```

<a id="5.2"></a>
### 5.2 跳转语句

```renpy
# 基本跳转
jump chapter1

# 条件跳转
if flag:
    jump good_end
else:
    jump bad_end

# 调用标签（可返回）
call chapter1
# 从 chapter1 返回后继续执行
```

<a id="6"></a>
## 6 . 角色与对话

<a id="6.1"></a>
### 6.1 角色定义

```renpy
# 基本角色定义
define e = Character("Eileen")

# 带颜色的角色
define e = Character("Eileen", color="#ff0000")

# 带图像的角色
define e = Character("Eileen", image="eileen")
```

<a id="6.2"></a>
### 6.2 对话语句

```renpy
# 基本对话
e "Hello, how are you?"

# 多行对话
e """This is a
multi-line
conversation."""

#  narrator 对话（无角色名称）
"Hello, this is the narrator speaking."
```

<a id="7"></a>
## 7 . 菜单与选择

<a id="7.1"></a>
### 7.1 基本菜单

```renpy
menu:
    "Option 1":
        e "You chose option 1."
    "Option 2":
        e "You chose option 2."
    "Option 3":
        e "You chose option 3."
```

<a id="7.2"></a>
### 7.2 条件菜单选项

```renpy
menu:
    "Option 1":
        e "You chose option 1."
    "Option 2" if flag:
        e "You chose option 2."
    "Option 3":
        e "You chose option 3."
```

<a id="7.3"></a>
### 7.3 带返回值的菜单

```renpy
$ choice = menu:
    "Option 1":
        "one"
    "Option 2":
        "two"
    "Option 3":
        "three"

e "You chose: [choice]"
```

<a id="8"></a>
## 8 . 变量与条件

<a id="8.1"></a>
### 8.1 变量定义

```renpy
# 定义变量
$ score = 0
$ player_name = "Player"
$ is_game_over = False

# 修改变量
$ score += 10
$ player_name = "Alice"
```

<a id="8.2"></a>
### 8.2 条件语句

```renpy
if score > 100:
    e "You win!"
elif score > 50:
    e "Good job!"
else:
    e "Keep trying!"

# 嵌套条件
if flag:
    if score > 50:
        e "Great!"
    else:
        e "Nice try."
else:
    e "Maybe next time."
```

<a id="8.3"></a>
### 8.3 循环语句

```renpy
# for 循环
$ for i in range(5):
    e "Count: [i]"

# while 循环
$ i = 0
$ while i < 5:
    e "Count: [i]"
    $ i += 1
```

<a id="9"></a>
## 9 . 屏幕与界面

<a id="9.1"></a>
### 9.1 屏幕定义

```renpy
screen main_menu():
    # 背景
    add "background.png"
    
    # 按钮
    vbox:
        align (0.5, 0.5)
        textbutton "Start Game" action Start()
        textbutton "Load Game" action ShowMenu("load")
        textbutton "Options" action ShowMenu("preferences")
        textbutton "Quit" action Quit()
```

<a id="9.2"></a>
### 9.2 显示屏幕

```renpy
# 显示屏幕
show screen main_menu

# 隐藏屏幕
hide screen main_menu

# 调用屏幕（模态）
call screen choice_menu
```

<a id="9.3"></a>
### 9.3 屏幕交互

```renpy
screen choice_menu():
    vbox:
        align (0.5, 0.5)
        text "What do you want to do?"
        textbutton "Go left" action Return("left")
        textbutton "Go right" action Return("right")
        textbutton "Stay" action Return("stay")

# 调用屏幕并获取返回值
$ choice = call screen choice_menu
e "You chose to go [choice]."
```

<a id="10"></a>
## 10 . 动画与过渡

<a id="10.1"></a>
### 10.1 图像显示

```renpy
# 显示图像
show eileen happy

# 隐藏图像
hide eileen

# 替换图像
show eileen sad
```

<a id="10.2"></a>
### 10.2 过渡效果

```renpy
# 基本过渡
show eileen happy with dissolve

# 自定义过渡
show eileen sad with fade

# 场景过渡
scene bg room with zoom
```

<a id="10.3"></a>
### 10.3 动画

```renpy
# 定义动画
image eileen wave:
    "eileen_wave1.png"
    0.2
    "eileen_wave2.png"
    0.2
    "eileen_wave1.png"
    0.2
    repeat

# 显示动画
show eileen wave
```

<a id="11"></a>
## 11 . 总结

Ren'Py 是一个功能强大的视觉小说引擎，通过本笔记的学习，你应该已经掌握了 Ren'Py 的基础概念、基本语法、标签与跳转、角色与对话、菜单与选择、变量与条件、屏幕与界面以及动画与过渡等核心知识点。

在实际应用中，你需要根据具体的游戏开发需求，灵活运用 Ren'Py 的各种特性，创建出引人入胜的视觉小说作品。同时，你还需要关注 Ren'Py 的最佳实践，确保代码的质量和可维护性。

通过不断学习和实践，你将能够熟练使用 Ren'Py，创建出更加优秀的视觉小说作品。

<a id="12"></a>
## 12 . 参考资料

- [Ren'Py 官方文档](https://www.renpy.org/doc/html/)
- [Ren'Py 本地文档](file:///C:/Apan/Renpy/renpy-8.5.2-sdk/doc/index.html)
- [Ren'Py 官方网站](https://www.renpy.org/)
- [Ren'Py 教程](https://www.renpy.org/doc/html/tutorials.html)

<a id="13"></a>
## 13 版本历史

| 日期 | 版本 | 变更内容 | 变更人 |
|------|------|----------|--------|
| 2026-04-05 | 1.0 | 初始创建 | fanquanpp |