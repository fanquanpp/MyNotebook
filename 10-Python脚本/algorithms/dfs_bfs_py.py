/*
 * @Author:      Anonymous
 * @Algorithm:   图的遍历 (DFS & BFS)
 * @Language:    Python 3.12
 * @Time Compl.: O(V + E) 其中 V 为节点数，E 为边数 | O(V + E) where V is vertices, E is edges
 * @Description: 深度优先搜索与广度优先搜索的图实现。 | Graph implementation of DFS and BFS.
 * @Teaching:    DFS 使用递归或栈，BFS 使用队列。注意维护 visited 集合以避免死循环。 | DFS uses recursion/stack, BFS uses queue. Use a visited set to avoid infinite loops.
 */

from collections import deque

class Graph:
    def __init__(self):
        self.adj = {} # 邻接表 | Adjacency List

    def add_edge(self, u, v):
        """添加有向边 | Add a directed edge"""
        if u not in self.adj:
            self.adj[u] = []
        self.adj[u].append(v)

    def dfs(self, start_node):
        """深度优先搜索 | Depth First Search"""
        visited = set()
        result = []
        self._dfs_recursive(start_node, visited, result)
        return result

    def _dfs_recursive(self, node, visited, result):
        visited.add(node)
        result.append(node)
        if node in self.adj:
            for neighbor in self.adj[node]:
                if neighbor not in visited:
                    self._dfs_recursive(neighbor, visited, result)

    def bfs(self, start_node):
        """广度优先搜索 | Breadth First Search"""
        visited = set()
        queue = deque([start_node])
        visited.add(start_node)
        result = []
        
        while queue:
            node = queue.popleft()
            result.append(node)
            if node in self.adj:
                for neighbor in self.adj[node]:
                    if neighbor not in visited:
                        visited.add(neighbor)
                        queue.append(neighbor)
        return result

# 单元测试 | Unit Test
def test_graph_traversal():
    g = Graph()
    g.add_edge(0, 1)
    g.add_edge(0, 2)
    g.add_edge(1, 2)
    g.add_edge(2, 0)
    g.add_edge(2, 3)
    g.add_edge(3, 3)
    
    assert g.dfs(2) == [2, 0, 1, 3]
    assert g.bfs(2) == [2, 0, 3, 1]
    print("DFS/BFS tests passed! | 图遍历测试通过！")

if __name__ == "__main__":
    test_graph_traversal()

# LeetCode: 200. Number of Islands, 133. Clone Graph
