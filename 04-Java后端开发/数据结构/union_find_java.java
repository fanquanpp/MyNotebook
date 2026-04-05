/*
 * @Author:      Anonymous
 * @Algorithm:   并查集 (Union-Find / DSU)
 * @Language:    Java 17
 * @Time Compl.: O(α(n))
 * @Description: 集合合并与查找。通过路径压缩与按秩合并优化。 | Disjoint Set Union with path compression and union by rank.
 * @Teaching:    路径压缩使查找更高效。按秩合并保持树平衡。 | Path compression for efficient find. Union by rank for balance.
 */

public class union_find_java {
    private int[] parent;
    private int[] rank;

    public union_find_java(int n) {
        parent = new int[n];
        rank = new int[n];
        for (int i = 0; i < n; i++) {
            parent[i] = i;
            rank[i] = 0;
        }
    }

    public int find(int i) {
        if (parent[i] == i) return i;
        return parent[i] = find(parent[i]); // 路径压缩 | Path Compression
    }

    public boolean union(int i, int j) {
        int rootI = find(i);
        int rootJ = find(j);
        
        if (rootI != rootJ) {
            // 按秩合并 | Union by rank
            if (rank[rootI] < rank[rootJ]) {
                parent[rootI] = rootJ;
            } else if (rank[rootI] > rank[rootJ]) {
                parent[rootJ] = rootI;
            } else {
                parent[rootI] = rootJ;
                rank[rootJ]++;
            }
            return true;
        }
        return false;
    }

    // 单元测试 | Unit Test
    public static void main(String[] args) {
        union_find_java uf = new union_find_java(5);
        uf.union(0, 1);
        uf.union(1, 2);
        assert uf.find(0) == uf.find(2);
        assert uf.find(3) != uf.find(0);
        uf.union(3, 4);
        uf.union(2, 4);
        assert uf.find(0) == uf.find(4);
        System.out.println("Union-Find (Java) tests passed! | 并查集 (Java) 测试通过！");
    }
}

// LeetCode: 547. Number of Provinces, 200. Number of Islands
