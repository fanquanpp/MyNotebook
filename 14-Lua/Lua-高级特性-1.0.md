<!--
文件名称：02-Lua高级特性-学习笔记
原名称：无
用途描述：Lua 脚本语言的高级特性笔记，包含 Table、元表（Metatable）、协程（Coroutine）、模块系统。
创建/更新：2026-04-05
-->

# 02-Lua 高级特性（Lua Advanced Features）

Lua 提供了许多强大且灵活的高级特性。本节主要介绍 Lua 的核心数据结构及其元编程能力。

## 1. 核心概念

- **Table（表）**：Lua 的核心。它可以作为数组、哈希表、字典、甚至是类来使用。
- **Metatable（元表）**：元表是元编程的基础，用于扩展表的功能。
- **Coroutine（协程）**：协作式多任务。
- **Module（模块）**：模块系统，实现代码复用。

## 2. 语法基础

### 2.1 Table（表）深度解析

Lua 中唯一的内置数据容器。它是关联数组，下标可以是非 nil 的任何值。

```lua
local my_table = {}
my_table["name"] = "fanquanpp"
my_table[1] = 100
my_table[2] = 200

-- 数组（下标从 1 开始）
local fruits = {"apple", "banana", "cherry"}
print(fruits[1]) -- apple

-- 遍历
for k, v in pairs(my_table) do
    print(k, v)
end
```

### 2.2 Metatable（元表）

元表允许我们改变 table 的行为。例如，通过 `__add` 元方法实现两个 table 相加。

```lua
local t1 = {value = 10}
local t2 = {value = 20}

local mt = {
    __add = function(a, b)
        return a.value + b.value
    end
}

setmetatable(t1, mt)
setmetatable(t2, mt)

print(t1 + t2) -- 30
```

常见的元方法：
- `__index`：当访问不存在的键时触发。
- `__newindex`：当对不存在的键赋值时触发。
- `__tostring`：转换字符串时触发。

### 2.3 Coroutine（协程）

协程是 Lua 中的协作式线程。由程序员显式控制挂起（yield）和恢复（resume）。

```lua
local co = coroutine.create(function()
    print("协程开始")
    coroutine.yield("暂停一下")
    print("协程继续")
    return "协程结束"
end)

local status, result = coroutine.resume(co)
print(result) -- 暂停一下
local status, result = coroutine.resume(co)
print(result) -- 协程结束
```

### 2.4 Module（模块）

使用 `require` 关键字导入模块。

```lua
-- my_module.lua
local M = {}
function M.say_hello()
    print("Hello from module!")
end
return M

-- main.lua
local my_mod = require("my_module")
my_mod.say_hello()
```

## 3. 实战应用

### 3.1 常用代码片段

- **模拟类（面向对象）**：通过 `__index` 实现继承。

```lua
local Person = {name = "Base"}
function Person:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

local student = Person:new({name = "Alice"})
print(student.name) -- Alice
```

## 4. 最佳实践

- **利用 __index 实现继承**：这是 Lua 中实现 OOP 的标准方式。
- **协程控制流**：在异步编程中（如 OpenResty），协程是实现同步代码异步执行的关键。

## 5. 延伸阅读

- [Lua 元表教程](https://www.runoob.com/lua/lua-metatables.html) <!-- nofollow -->
- [Lua 协程教程](https://www.runoob.com/lua/lua-coroutine.html) <!-- nofollow -->

## 6. 更新日志

- **2026-04-05**：初始版本，包含 Table、元表、协程及模块。
