/*
 * @Author:      Anonymous
 * @Algorithm:   图遍历 (DFS & BFS)
 * @Language:    Lua 5.4
 * @Time Compl.: O(V + E)
 * @Description: 在 Lua 中实现深度优先搜索与广度优先搜索。使用 Table 模拟邻接表。 | DFS and BFS implementation in Lua using Tables as adjacency lists.
 * @Teaching:    Lua 的 Table 是实现图结构的理想工具。BFS 需要一个队列（使用 table.insert/remove）。 | Lua Tables are ideal for graph structures. BFS requires a queue.
 */

local function create_graph()
    return {
        adj = {}
    }
end

local function add_edge(graph, u, v)
    if not graph.adj[u] then graph.adj[u] = {} end
    table.insert(graph.adj[u], v)
end

local function dfs(graph, start_node)
    local visited = {}
    local result = {}
    
    local function traverse(node)
        visited[node] = true
        table.insert(result, node)
        if graph.adj[node] then
            for _, neighbor in ipairs(graph.adj[node]) do
                if not visited[neighbor] then
                    traverse(neighbor)
                end
            end
        end
    end
    
    traverse(start_node)
    return result
end

local function bfs(graph, start_node)
    local visited = {}
    local result = {}
    local queue = {start_node}
    visited[start_node] = true
    
    while #queue > 0 do
        local node = table.remove(queue, 1)
        table.insert(result, node)
        
        if graph.adj[node] then
            for _, neighbor in ipairs(graph.adj[node]) do
                if not visited[neighbor] then
                    visited[neighbor] = true
                    table.insert(queue, neighbor)
                end
            end
        end
    end
    return result
end

-- 单元测试 | Unit Test
local function test_graph()
    local g = create_graph()
    add_edge(g, 1, 2)
    add_edge(g, 1, 3)
    add_edge(g, 2, 4)
    add_edge(g, 3, 4)
    
    local dfs_res = dfs(g, 1)
    local bfs_res = bfs(g, 1)
    
    -- 验证结果长度 | Verify length
    assert(#dfs_res == 4)
    assert(#bfs_res == 4)
    print("DFS/BFS (Lua) tests passed! | 图遍历 (Lua) 测试通过！")
end

test_graph()

return { dfs = dfs, bfs = bfs }
