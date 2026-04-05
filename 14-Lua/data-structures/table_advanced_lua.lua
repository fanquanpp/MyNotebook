/*
 * @Author:      Anonymous
 * @Algorithm:   Table 高级用法 (Advanced Table Usage)
 * @Language:    Lua 5.4
 * @Description: 演示 Lua Table 作为数组、字典、集合以及模拟面向对象。 | Demonstrate Table as Array, Dictionary, Set, and OOP simulation.
 * @Teaching:    Table 是 Lua 唯一的数据结构。理解元表 (Metatable) 是进阶核心。 | Table is the only data structure in Lua. Metatables are key for advanced usage.
 */

-- 1. 作为集合 | Table as a Set
local function create_set(list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
end

-- 2. 模拟栈 | Table as a Stack
local stack = {}
table.insert(stack, "A")
table.insert(stack, "B")
local top = table.remove(stack) -- "B"

-- 3. 模拟类 | Simulating a Class
local Player = {}
Player.__index = Player

function Player.new(name)
    local instance = setmetatable({}, Player)
    instance.name = name
    return instance
end

function Player:say_hello()
    print("Hello, I am " .. self.name)
end

-- 单元测试 | Unit Test
local function test_table()
    -- Set test
    local s = create_set({1, 2, 2, 3})
    assert(s[1] == true and s[4] == nil)
    
    -- OOP test
    local p = Player.new("LuaMaster")
    assert(p.name == "LuaMaster")
    -- p:say_hello()
    
    print("Table Advanced (Lua) tests passed! | Table 高级用法测试通过！")
end

test_table()

return { Player = Player, create_set = create_set }
