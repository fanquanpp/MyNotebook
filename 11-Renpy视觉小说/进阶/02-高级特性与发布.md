# 高级特性与发布 (Advanced Features & Release)

> @Author: Anonymous
> @Category: Renpy Advanced
> @Description: 屏幕系统 (Screens)、Python 集成、回滚管理及构建发布。 | Screen system, Python integration, Rollback, and Distribution.

## 1. 屏幕系统 (Screen System)
使用 `screen` 语言定义 UI。
- **`text`**, **`imagebutton`**, **`vbox`**, **`hbox`**。
- **`action`**: 点击后的行为 (如 `Jump`, `Return`, `SetVariable`)。

## 2. Python 集成 (Python Integration)
- **`$`**: 单行 Python。
- **`python:` 块**: 多行 Python。
- **`init python:`**: 在初始化阶段运行的代码。

## 3. 存档与持久化 (Persistence)
- **`persistent`**: 跨存档保存的数据 (如 CG 解锁、二周目要素)。
```renpy
$ persistent.game_cleared = True
```

## 4. 构建与发布 (Build & Distribution)
- **多平台构建**: Ren'Py Launcher 一键生成各个平台的包。
- **资源混淆**: 自动加密脚本和资源。
- **多语言翻译 (Translation)**: 内置强大的翻译提取和管理工具。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 Ren'Py 高级特性与发布流程。
