---
url: "https://github.com/renpy/renpy/blob/master/renpy/rollback.py"
version: "8.x/7.x"
update_date: "2026-04-05"
tags: ["RenPy", "Rollback", "Translation", "Multilingual"]
---

<a id="title"></a>
# Ren'Py 回滚机制与多语言支持

<a id="1"></a>
## 1 核心概念 (Core Concepts)

Ren'Py 独有的回滚（Rollback）机制记录了游戏的每一个状态。多语言支持（Translation）则允许开发者轻松提供本地化。

<a id="1.1"></a>
### 1.1 回滚实现 (Rollback)

`renpy/rollback.py` 管理着一个包含所有状态的栈。

<a id="1.2"></a>
### 1.2 多语言框架 (Translation)

`renpy/translation/` 模块负责从脚本中提取文本。

<a id="2"></a>
## 2 命令 (Commands)

<a id="2.1"></a>
### 2.1 定义翻译

```renpy
# 1: 提取原始文本
# 2: 定义翻译文本
translate zh_Hans eileen_123:
    e "你好，世界！"
```

<a id="2.2"></a>
### 2.2 切换语言

```renpy
# 1: 动作定义
# 2: 应用语言
textbutton "中文" action Language("zh_Hans")
```

<a id="3"></a>
## 3 配置 (Config)

<a id="3.1"></a>
### 3.1 回滚配置 (Rollback Config)

- `config.rollback_enabled`: 是否启用回滚。
- `config.rollback_length`: 回滚栈的最大长度。

<a id="4"></a>
## 4 实战 (Practice)

<a id="4.1"></a>
### 4.1 最小运行 Demo

[Ren'Py Translation Guide](https://www.renpy.org/doc/html/translation.html)<!-- nofollow -->

```renpy
# 1: 原始文本
# 2: 翻译块
label start:
    e "Welcome to the game!"

translate zh_Hans start_e123:
    e "欢迎来到这款游戏！"
```

<a id="5"></a>
## 5 疑难 (Troubleshooting)

<a id="5.1"></a>
### 5.1 回滚导致数据丢失

- **原因**：如果某些 Python 对象未正确参与回滚。
- **解决**：确保所有游戏逻辑变量都在 `default` 语句下声明。

<a id="5.2"></a>
### 5.2 翻译文本不显示

- **原因**：可能遗忘了 `translate` 语句后的 ID。
- **解决**：重新提取翻译。

[Ren'Py Rollback Source](https://github.com/renpy/renpy/blob/master/renpy/rollback.py)<!-- nofollow -->
