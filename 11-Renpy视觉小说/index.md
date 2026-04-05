# Ren'Py 视觉小说开发学习路线图 | Ren'Py Learning Roadmap

本文档展示了 Ren'Py 视觉小说引擎的学习路径。

## 1. 学习顺序 | Learning Order

```mermaid
graph TD
    A[剧本基础 (Say/Menu) | Scripting Basics] --> B[角色与立绘 | Characters & Images]
    B --> C[ATL 动画语言 | ATL Animation]
    C --> D[变量与条件判断 | Logic & Variables]
    D --> E[Python 脚本集成 | Python Integration]
    E --> F[Screen 界面系统 | Screens UI]
    F --> G[多语言与存档优化 | Localization & Save Optimization]
```

## 2. 详细路径 | Detailed Path

| 阶段 (Stage) | 知识点 (Topic) | 预计耗时 (Estimated Time) | 前置要求 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 入门 | [Ren'Py 基础体系](./basics/README.md) | 10h | 无 |
| 进阶 | [ATL 动画实战](./advanced/01-ATL动画语言.md) | 15h | Ren'Py 基础 |
| 实战 | [高级特性与发布](./advanced/02-高级特性与发布.md) | 10h | Python 基础 |

## 3. 学习提示 | Tips
- **代码整洁**：将 Python 逻辑尽量放在 `init python` 块中。
- **性能**：大量立绘切换时使用 `image` 语句预定义以优化加载速度。
- **UI**：Screen 语言是 Ren'Py 最强大的部分，值得深入研究。
