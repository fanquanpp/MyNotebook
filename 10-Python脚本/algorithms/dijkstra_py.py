/*
 * @Author:      Anonymous
 * @Algorithm:   狄克斯特拉算法 (Dijkstra's Algorithm)
 * @Language:    Python 3.12
 * @Time Compl.: O(E log V) 使用优先队列 | O(E log V) with priority queue
 * @Description: 在加权图中查找单源最短路径。要求边权为非负。 | Find single-source shortest path in a weighted graph. Weights must be non-negative.
 * @Teaching:    核心在于贪心策略：每次选取距离起点最近且未访问过的节点。 | Core is the greedy strategy: always pick the unvisited node closest to the source.
 */

import heapq

def dijkstra(graph, start):
    """
    计算从起点到所有其他节点的最短路径 | Calculate shortest path from source to all other nodes
    :param graph: 邻接表 {u: [(v, weight), ...]} | Adjacency list
    :param start: 起点 | Source node
    """
    # 存储最短距离 | Store shortest distances
    distances = {node: float('infinity') for node in graph}
    distances[start] = 0
    
    # 优先队列 (距离, 节点) | Priority queue (distance, node)
    pq = [(0, start)]
    
    while pq:
        current_distance, current_node = heapq.heappop(pq)
        
        # 节点已经有更短的路径，跳过 | Skip if we've already found a shorter path
        if current_distance > distances[current_node]:
            continue
            
        if current_node in graph:
            for neighbor, weight in graph[current_node]:
                distance = current_distance + weight
                
                # 如果找到更短的路径 | If found a shorter path
                if distance < distances[neighbor]:
                    distances[neighbor] = distance
                    heapq.heappush(pq, (distance, neighbor))
                    
    return distances

# 单元测试 | Unit Test
def test_dijkstra():
    graph = {
        'A': [('B', 1), ('C', 4)],
        'B': [('A', 1), ('C', 2), ('D', 5)],
        'C': [('A', 4), ('B', 2), ('D', 1)],
        'D': [('B', 5), ('C', 1)]
    }
    
    distances = dijkstra(graph, 'A')
    assert distances['A'] == 0
    assert distances['B'] == 1
    assert distances['C'] == 3
    assert distances['D'] == 4
    print("Dijkstra tests passed! | 狄克斯特拉算法测试通过！")

if __name__ == "__main__":
    test_dijkstra()

# LeetCode: 743. Network Delay Time, 1514. Path with Maximum Probability
# 洛谷: P3371 【模板】单源最短路径（弱化版）
