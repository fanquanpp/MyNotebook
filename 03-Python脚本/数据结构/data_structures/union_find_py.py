/*
 * @Author:      Anonymous
 * @Algorithm:   并查集 (Union-Find / DSU)
 * @Language:    Python 3.12
 * @Time Compl.: O(α(n)) 近乎常数时间 | O(α(n)) amortized near-constant
 * @Description: 维护一组不相交的集合，支持合并与查询。通过路径压缩与按秩合并优化。 | Maintain disjoint sets, support union and find operations. Optimized with path compression and union by rank.
 * @Teaching:    路径压缩 (Path Compression) 使树趋于扁平，按秩合并 (Union by Rank) 保持平衡。 | Path compression flattens the tree, Union by rank maintains balance.
 */

class UnionFind:
    def __init__(self, n):
        self.parent = list(range(n)) # 每个元素的父节点 | Each element's parent
        self.rank = [0] * n # 用于平衡树的高度 | Used to balance tree height

    def find(self, i):
        """查找根节点，带路径压缩 | Find root with path compression"""
        if self.parent[i] == i:
            return i
        self.parent[i] = self.find(self.parent[i]) # 路径压缩 | Path compression
        return self.parent[i]

    def union(self, i, j):
        """合并两个集合，带按秩合并 | Union two sets with union by rank"""
        root_i = self.find(i)
        root_j = self.find(j)
        
        if root_i != root_j:
            # 按秩合并：将秩较小的树合并到秩较大的树下 | Union by rank
            if self.rank[root_i] < self.rank[root_j]:
                self.parent[root_i] = root_j
            elif self.rank[root_i] > self.rank[root_j]:
                self.parent[root_j] = root_i
            else:
                self.parent[root_i] = root_j
                self.rank[root_j] += 1
            return True
        return False

# 单元测试 | Unit Test
def test_union_find():
    uf = UnionFind(5)
    uf.union(0, 1)
    uf.union(1, 2)
    assert uf.find(0) == uf.find(2)
    assert uf.find(3) != uf.find(0)
    uf.union(3, 4)
    uf.union(2, 4)
    assert uf.find(0) == uf.find(4)
    print("Union-Find tests passed! | 并查集测试通过！")

if __name__ == "__main__":
    test_union_find()

# LeetCode: 547. Number of Provinces, 200. Number of Islands
# 洛谷: P3367 【模板】并查集
