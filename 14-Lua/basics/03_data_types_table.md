# 数据类型与 Table 详解 (Data Types & Tables)

> @Author: Anonymous
> @Category: Lua Basics
> @Description: Lua 8 种基础类型及核心数据结构 Table 的深度解析。 | Lua's 8 basic types and in-depth look at Tables.

## 1. 基础数据类型 (8 种)
1. **`nil`**: 无效值。
2. **`boolean`**: `true` / `false`。
3. **`number`**: 默认是双精度浮点数 (Lua 5.3 引入整型子类型)。
4. **`string`**: 字符串 (支持 `[[...]]` 多行)。
5. **`function`**: 函数是一等公民。
6. **`table`**: 核心数据结构。
7. **`thread`**: 协同程序 (Coroutine)。
8. **`userdata`**: C 语言数据结构。

## 2. Table 核心 (Tables)
Table 是 Lua 唯一的容器，可以表示一切。
### 2.1 作为数组 (Array)
- **注意**: Lua 数组索引**从 1 开始**。
```lua
local arr = {10, 20, 30}
print(arr[1]) -- 10
```

### 2.2 作为字典 (Map)
```lua
local dict = { name = "Lua", version = 5.4 }
print(dict.name) -- Lua
```

### 2.3 常用操作
- **获取长度**: `#table` (仅对数组部分有效)。
- **插入/删除**: `table.insert()`, `table.remove()`。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 Lua Table 机制与常用方法。
