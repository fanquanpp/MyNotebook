---
url: "https://github.com/renpy/renpy/blob/master/renpy/exports/__init__.py"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "Builtin", "Exports", "API"]
---

<a id="title"></a>
# Ren'Py 内建函数与 API

<a id="1"></a>
## 1 核心概念 (Core Concepts)

Ren'Py 在 `renpy.exports` 模块下导出了一系列供脚本调用的 API。

<a id="1.1"></a>
### 1.1 函数分类

- **Action Exports**: 控制游戏逻辑。
- **Media Exports**: 管理音视频。
- **Persistent Exports**: 持久化全局数据。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 常用内置函数

```renpy
# 1: 显示图像
# 2: 播放音乐
# 3: 跳转
label test:
    $ renpy.show("eileen")
    $ renpy.music.play("bgm.ogg")
    $ renpy.jump("next_scene")
```

<a id="2.2"></a>
### 2.2 属性检查

```renpy
# 1: 检查是否存在
# 2: 动态获取
if renpy.has_label("chapter_2"):
    jump chapter_2
```

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 renpy.config

全局配置字典，控制游戏的基础行为。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 最小运行 Demo

[Ren'Py Python API](https://www.renpy.org/doc/html/python.html)<!-- nofollow -->

```renpy
# 1: Python 代码块
# 2: 调用 API
init python:
    def check_score(s):
        if s > 10:
            renpy.jump("high_score")
        else:
            renpy.jump("low_score")

label start:
    $ check_score(15)
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 函数未定义

- **原因**：某些 API 可能在较旧版本中不可用。
- **解决**：检查 Ren'Py 版本。

<a id="5.2"></a>
### 5.2 变量作用域冲突

- **原因**：在 Python 块中修改 Ren'Py 变量。
- **解决**：使用 `store.variable_name`。

[Ren'Py Exports Source](https://github.com/renpy/renpy/blob/master/renpy/exports/)<!-- nofollow -->
