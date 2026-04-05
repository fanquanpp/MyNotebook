# 算法库 | Algorithms Library (GDScript)

> 此目录包含 Godot 引擎中常用的算法实现，采用 GDScript 语言编写。

## 算法列表 | Algorithm List

| 算法名称 (Algorithm) | 源码文件 (Source) | 难度 (Difficulty) | 说明 (Description) |
| :--- | :--- | :--- | :--- |
| 冒泡排序 | [bubble_sort_gd.gd](./bubble_sort_gd.gd) | 基础 | 基础排序示例 |
| A* 路径搜索 | [astar_gd.gd](./astar_gd.gd) | 中级 | 经典的网格路径寻优 |

## 可视化 | Visualization

### A* 搜索过程
```mermaid
graph LR
    Start(Start Node) --> Open(Open Set)
    Open --> Heuristic{Heuristic Check}
    Heuristic --> Close(Closed Set)
    Close --> End(End Node)
```

---
### 更新日志 (Changelog)
- 2026-04-06: 更新优化 README.md 文件，完善内容结构和格式
