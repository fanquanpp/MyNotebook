/*
 * @Author:      Anonymous
 * @Algorithm:   链表 (Linked List)
 * @Language:    Lua 5.4
 * @Description: 在 Lua 中实现简单的单向链表。 | Single Linked List implementation in Lua.
 * @Teaching:    使用 Table 的引用特性实现节点连接。 | Use Table references for node connections.
 */

local Node = {}
Node.__index = Node

function Node.new(data)
    return setmetatable({data = data, next = nil}, Node)
end

local LinkedList = {}
LinkedList.__index = LinkedList

function LinkedList.new()
    return setmetatable({head = nil}, LinkedList)
end

function LinkedList:append(data)
    local new_node = Node.new(data)
    if not self.head then
        self.head = new_node
        return
    end
    local curr = self.head
    while curr.next do
        curr = curr.next
    end
    curr.next = new_node
end

function LinkedList:to_table()
    local res = {}
    local curr = self.head
    while curr do
        table.insert(res, curr.data)
        curr = curr.next
    end
    return res
end

-- 单元测试 | Unit Test
local function test_ll()
    local ll = LinkedList.new()
    ll:append(10)
    ll:append(20)
    ll:append(30)
    
    local t = ll:to_table()
    assert(t[1] == 10 and t[2] == 20 and t[3] == 30)
    print("Linked List (Lua) tests passed! | 链表 (Lua) 测试通过！")
end

test_ll()

return LinkedList
