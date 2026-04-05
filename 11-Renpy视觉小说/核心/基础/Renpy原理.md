---
url: "https://github.com/renpy/renpy/blob/master/renpy/script.py"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "CoreConcepts", "ScriptLanguage"]
---

<a id="title"></a>
# Ren'Py 核心概念与脚本语言

<a id="1"></a>
## 1 核心概念 (Core Concepts)

Ren'Py 脚本是基于 Python 的 DSL。其执行流程由 `Script` 类管理，`.rpy` 文件会被编译为 `.rpyc` 字节码。

<a id="1.1"></a>
### 1.1 节点与 AST

Ren'Py 将脚本解析为 AST。每个语句（如 `say`, `menu`, `jump`）都是 AST 中的一个节点。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 基础对话 (Say)

```renpy
# 1: 定义角色
# 2: 角色对话
define e = Character("Eileen")
e "Hello, world!"
```

<a id="2.2"></a>
### 2.2 标签与跳转 (Labels & Jumps)

```renpy
# 1: 定义标签
# 2: 跳转到标签
label start:
    "Game starts here."
    jump chapter_1

label chapter_1:
    "This is chapter 1."
```

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 脚本搜索路径

Ren'Py 默认搜索 `game/` 目录下的所有 `.rpy` 和 `.rpym` 文件。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 最小运行 Demo

[Ren'Py Quickstart Demo](https://www.renpy.org/doc/html/quickstart.html)<!-- nofollow -->

```renpy
# 1: 角色定义
# 2: 游戏入口
define p = Character("Player")

label start:
    p "I am ready to start my adventure."
    return
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 标签未找到 (LabelNotFound)

- **原因**：跳转到了一个不存在的 `label`。
- **解决**：检查拼写，确保文件已正确加载。

<a id="5.2"></a>
### 5.2 缩进错误

- **原因**：Ren'Py 严格依赖缩进。
- **解决**：统一使用 4 个空格。

[Ren'Py Source](https://github.com/renpy/renpy)<!-- nofollow -->
