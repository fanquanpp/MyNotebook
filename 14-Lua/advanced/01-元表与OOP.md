# 元表与高级特性 (Metatables & Advanced)

> @Author: Anonymous
> @Category: Lua Advanced
> @Description: 元表、元方法、面向对象模拟及协程。 | Metatables, Metamethods, OOP simulation, and Coroutines.

## 1. 元表 (Metatables)
元表允许我们改变 Table 的行为 (如重载运算符)。
```lua
local t1 = { value = 10 }
local t2 = { value = 20 }
local meta = {
    __add = function(a, b)
        return a.value + b.value
    end
}
setmetatable(t1, meta)
print(t1 + t2) -- 30
```

## 2. 面向对象模拟 (OOP)
Lua 通过 `table` + `metatable` 模拟类。
- **`__index`**: 查找键失败时的回退机制。
```lua
local MyClass = {}
function MyClass:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end
```

## 3. 协程 (Coroutines)
轻量级线程。
- `coroutine.create()` / `resume()` / `yield()`。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化元表机制与协程原理。
