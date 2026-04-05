/*
 * @Author:      Anonymous
 * @Algorithm:   克鲁斯卡尔算法 (Kruskal's Algorithm)
 * @Language:    Python 3.12
 * @Time Compl.: O(E log E) 或 O(E log V) | O(E log E) or O(E log V)
 * @Description: 在加权无向图中查找最小生成树。按边权排序并利用并查集判环。 | Find Minimum Spanning Tree in a weighted undirected graph. Sort edges by weight and use Union-Find for cycle detection.
 * @Teaching:    核心在于贪心策略：优先选取权值最小且不形成环的边。 | Core is the greedy strategy: always pick the edge with the smallest weight that doesn't form a cycle.
 */

class UnionFind:
    def __init__(self, n):
        self.parent = list(range(n))
        self.rank = [0] * n

    def find(self, i):
        if self.parent[i] == i:
            return i
        self.parent[i] = self.find(self.parent[i])
        return self.parent[i]

    def union(self, i, j):
        root_i = self.find(i)
        root_j = self.find(j)
        if root_i != root_j:
            if self.rank[root_i] < self.rank[root_j]:
                self.parent[root_i] = root_j
            elif self.rank[root_i] > self.rank[root_j]:
                self.parent[root_j] = root_i
            else:
                self.parent[root_i] = root_j
                self.rank[root_j] += 1
            return True
        return False

def kruskal(n, edges):
    """
    计算最小生成树 | Calculate Minimum Spanning Tree
    :param n: 节点数 | Number of vertices
    :param edges: 边列表 [(u, v, weight), ...] | List of edges
    """
    # 按边权升序排序 | Sort edges in ascending order of weight
    edges.sort(key=lambda x: x[2])
    
    uf = UnionFind(n)
    mst = []
    mst_weight = 0
    
    for u, v, weight in edges:
        # 如果 u 和 v 不在同一个连通分量中，则添加这条边 | If u and v are not in the same component, add this edge
        if uf.union(u, v):
            mst.append((u, v, weight))
            mst_weight += weight
            
    return mst, mst_weight

# 单元测试 | Unit Test
def test_kruskal():
    # 节点: 0, 1, 2, 3
    # 边: (u, v, weight)
    edges = [
        (0, 1, 10),
        (0, 2, 6),
        (0, 3, 5),
        (1, 3, 15),
        (2, 3, 4)
    ]
    
    mst, mst_weight = kruskal(4, edges)
    assert mst_weight == 19
    assert len(mst) == 3
    print("Kruskal's tests passed! | 克鲁斯卡尔算法测试通过！")

if __name__ == "__main__":
    test_kruskal()

# LeetCode: 1584. Min Cost to Connect All Points
# 洛谷: P3366 【模板】最小生成树
