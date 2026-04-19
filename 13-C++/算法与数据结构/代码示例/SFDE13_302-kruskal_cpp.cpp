/*
 * @Author:      Anonymous
 * @Algorithm:   克鲁斯卡尔算法 (Kruskal's Algorithm)
 * @Language:    C++ 17
 * @Time Compl.: O(E log E)
 * @Description: 在加权无向图中查找最小生成树。使用结构体存储边并配合并查集判环。 | Find Minimum Spanning Tree in a weighted undirected graph using an edge struct and Union-Find.
 * @Teaching:    按边权排序并逐一合并。 | Sort by edge weight and union one by one.
 */

#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>

using namespace std;

struct Edge {
    int u, v, weight;
    bool operator<(const Edge& other) const {
        return weight < other.weight;
    }
};

class UnionFind {
public:
    UnionFind(int n) : parent(n), rank(n, 0) {
        iota(parent.begin(), parent.end(), 0);
    }
    
    int find(int i) {
        if (parent[i] == i) return i;
        return parent[i] = find(parent[i]);
    }
    
    bool unite(int i, int j) {
        int root_i = find(i);
        int root_j = find(j);
        if (root_i != root_j) {
            if (rank[root_i] < rank[root_j]) {
                parent[root_i] = root_j;
            } else if (rank[root_i] > rank[root_j]) {
                parent[root_j] = root_i;
            } else {
                parent[root_i] = root_j;
                rank[root_j]++;
            }
            return true;
        }
        return false;
    }
    
private:
    vector<int> parent;
    vector<int> rank;
};

pair<vector<Edge>, int> kruskal(int n, vector<Edge>& edges) {
    sort(edges.begin(), edges.end());
    
    UnionFind uf(n);
    vector<Edge> mst;
    int mst_weight = 0;
    
    for (const auto& edge : edges) {
        if (uf.unite(edge.u, edge.v)) {
            mst.push_back(edge);
            mst_weight += edge.weight;
        }
    }
    return {mst, mst_weight};
}

// 单元测试 | Unit Test
void testKruskal() {
    int n = 4;
    vector<Edge> edges = {{0, 1, 10}, {0, 2, 6}, {0, 3, 5}, {1, 3, 15}, {2, 3, 4}};
    
    auto result = kruskal(n, edges);
    if (result.second == 19 && result.first.size() == 3) {
        cout << "Kruskal's tests passed! | 克鲁斯卡尔算法测试通过！" << endl;
    }
}

int main() {
    testKruskal();
    return 0;
}

// LeetCode: 1584. Min Cost to Connect All Points
// 洛谷: P3366 【模板】最小生成树
