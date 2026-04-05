/*
 * @Author:      Anonymous
 * @Algorithm:   普里姆算法 (Prim's Algorithm)
 * @Language:    Python 3.12
 * @Time Compl.: O(E log V) 使用优先队列 | O(E log V) with priority queue
 * @Description: 在加权无向图中查找最小生成树。从一个起始顶点开始并逐步向外扩展。 | Find Minimum Spanning Tree in a weighted undirected graph. Start from a vertex and grow the tree outward.
 * @Teaching:    核心在于贪心策略：每次选取距离已生成的树最近且不在树中的节点。 | Core is the greedy strategy: always pick the node closest to the tree and not in the tree.
 */

import heapq

def prim(n, graph):
    """
    计算最小生成树 | Calculate Minimum Spanning Tree
    :param n: 节点数 | Number of vertices
    :param graph: 邻接表 {u: [(v, weight), ...]} | Adjacency list
    """
    mst = []
    mst_weight = 0
    visited = set()
    
    # 优先队列 (距离, 节点, 父节点) | Priority queue (distance, node, parent)
    pq = [(0, 0, -1)]
    
    while pq and len(visited) < n:
        weight, u, parent = heapq.heappop(pq)
        
        # 节点已经在树中，跳过 | Skip if node already in tree
        if u in visited:
            continue
            
        visited.add(u)
        mst_weight += weight
        if parent != -1:
            mst.append((parent, u, weight))
            
        if u in graph:
            for neighbor, edge_weight in graph[u]:
                if neighbor not in visited:
                    heapq.heappush(pq, (edge_weight, neighbor, u))
                    
    return mst, mst_weight

# 单元测试 | Unit Test
def test_prim():
    # 节点: 0, 1, 2, 3
    # 边: {u: [(v, weight), ...]}
    graph = {
        0: [(1, 10), (2, 6), (3, 5)],
        1: [(0, 10), (3, 15)],
        2: [(0, 6), (3, 4)],
        3: [(0, 5), (1, 15), (2, 4)]
    }
    
    mst, mst_weight = prim(4, graph)
    assert mst_weight == 19
    assert len(mst) == 3
    print("Prim's tests passed! | 普里姆算法测试通过！")

if __name__ == "__main__":
    test_prim()

# LeetCode: 1584. Min Cost to Connect All Points
# 洛谷: P3366 【模板】最小生成树
