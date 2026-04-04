---
url: "https://github.com/renpy/renpy/blob/master/renpy/common/00build.rpy"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "Build", "Release", "Configuration"]
---

<a id="title"></a>
# Ren'Py 构建与发布流程

<a id="1"></a>
## 1 核心概念 (Core Concepts)

Ren'Py 的构建流程由 `00build.rpy` 和 Launcher 管理。它将脚本、资源文件打包成多种平台的执行文件。

<a id="1.1"></a>
### 1.1 构建系统 (Build System)

`renpy/common/00build.rpy` 定义了哪些文件应该被打包。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 定义构建选项

```renpy
# 1: 包含模式
# 2: 排除模式
init python:
    # 包含所有图像和音频
    build.classify("game/**.png", "all")
    build.classify("game/**.jpg", "all")
    build.classify("game/**.ogg", "all")

    # 排除所有备份和源文件
    build.classify("**.bak", None)
    build.classify("**.rpy", None)
```

<a id="2.2"></a>
### 2.2 构建动作

在 Launcher 中选择 "Build Distributions" 开始打包流程。

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 存档与更新

- `config.save_directory`: 指定游戏保存文件的目录名。
- `config.version`: 当前游戏版本号。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 最小构建 Demo

[Ren'Py Build Guide](https://www.renpy.org/doc/html/build.html)<!-- nofollow -->

```renpy
# 1: 基础配置
# 2: 打包设置
define config.name = "My Visual Novel"
define config.version = "1.0.0"

init python:
    build.archive("images", "all")
    build.classify("game/images/**.png", "images")
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 构建失败

- **原因**：可能由于文件路径过长。
- **解决**：缩短文件名。

<a id="5.2"></a>
### 5.2 存档冲突

- **原因**：多个项目使用了相同的 `save_directory`。
- **解决**：确保每个项目的 `config.save_directory` 是唯一的。

[Ren'Py Build Source](https://github.com/renpy/renpy/blob/master/renpy/common/00build.rpy)<!-- nofollow -->
