# 脚本与逻辑库 | Algorithms & Logic (Ren'Py)

本文档列出了 Ren'Py 开发中常用的脚本技巧与逻辑优化。

| 名称 (Name) | 源码文件 (Source) | 说明 (Description) |
| :--- | :--- | :--- |
| 打字机效果 | [typewriter_renpy.rpy](./typewriter_renpy.rpy) | 自定义 CPS 逐字显示逻辑 |
| 存档优化 | [save_load_optimization.rpy](./save_load_optimization.rpy) | 跨存档数据持久化 |

## 核心要点 | Key Points

### Python 交互
Ren'Py 深度集成 Python。使用 `init python` 块编写核心逻辑。

### ATL 动画
Animation and Transformation Language。用于处理立绘移动、缩放与渐变。
