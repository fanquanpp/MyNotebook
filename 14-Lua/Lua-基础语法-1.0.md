<!--
文件名称：01-Lua基础语法-学习笔记
原名称：无
用途描述：Lua 脚本语言的基础入门笔记，包含变量、数据类型、控制流、函数定义。
创建/更新：2026-04-05
-->

# 01-Lua 基础语法（Lua Basic Syntax）

Lua 是一种轻量、简单且功能强大的脚本语言。本节内容主要介绍 Lua 的基础语法。

## 1. 核心概念

- **概念定义**：Lua 是一种动态类型的脚本语言，由 C 编写，设计初衷是作为一种可嵌入的语言。
- **历史演进**：1993 年由巴西天主教大学的研究小组开发。
- **应用场景**：
    - **游戏开发**：Roblox、World of Warcraft。
    - **Redis 脚本**：利用 Lua 的原子性实现复杂的逻辑。
    - **Nginx/OpenResty**：高性能 Web 扩展开发。

## 2. 语法基础

### 2.1 变量

Lua 变量默认是全局的，局部变量需要使用 `local` 关键字（推荐）。

```lua
-- 全局变量
global_var = 10

-- 局部变量（推荐）
local local_var = "Hello, Lua"
```

### 2.2 数据类型

Lua 有 8 种基本类型：

| 类型 | 描述 |
| :--- | :--- |
| `nil` | 表示无效值（类似 null） |
| `boolean` | `true` 或 `false` |
| `number` | 双精度浮点数 |
| `string` | 字符串 |
| `function` | 函数（一等公民） |
| `userdata` | 表示任意 C 数据 |
| `thread` | 协程 |
| `table` | 关联数组（唯一的容器） |

```lua
local name = "fanquanpp"
local age = 25
local is_happy = true
local my_table = {1, 2, 3}
```

### 2.3 流程控制

#### 条件语句

```lua
if age < 18 then
    print("未成年")
elseif age < 60 then
    print("成年人")
else
    print("老年人")
end
```

#### 循环语句

```lua
-- While 循环
local i = 1
while i <= 5 do
    print(i)
    i = i + 1
end

-- For 循环 (start, end, step)
for i = 1, 10, 2 do
    print(i)
end

-- 迭代器（针对 Table）
local colors = {"red", "green", "blue"}
for index, value in ipairs(colors) do
    print(index, value)
end
```

### 2.4 函数

函数在 Lua 中是“一等公民”，可以作为变量传递。

```lua
-- 定义函数
local function add(a, b)
    return a + b
end

-- 调用函数
print(add(10, 20))

-- 匿名函数
local multiply = function(a, b)
    return a * b
end
```

## 3. 实战应用

### 3.1 常用代码片段

- **字符串拼接**：使用 `..` 操作符。
- **长度操作符**：使用 `#` 获取字符串或数组的长度。

```lua
local s1 = "Hello"
local s2 = "World"
print(s1 .. " " .. s2) -- Hello World

local list = {10, 20, 30}
print(#list) -- 3
```

## 4. 最佳实践

- **优先使用 local**：局部变量的访问速度比全局变量快，且能避免全局命名空间污染。
- **分号可选**：Lua 中语句结尾的分号是可选的，通常省略。
- **数组下标从 1 开始**：这是 Lua 的一个显著特点。

## 5. 延伸阅读

- [Lua 官方参考手册](https://www.lua.org/manual/5.4/) <!-- nofollow -->
- [Runoob Lua 教程](https://www.runoob.com/lua/lua-tutorial.html) <!-- nofollow -->

## 6. 更新日志

- **2026-04-05**：初始版本，包含基础语法核心内容。
