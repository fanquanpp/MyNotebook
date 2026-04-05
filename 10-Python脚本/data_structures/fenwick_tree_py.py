/*
 * @Author:      Anonymous
 * @Algorithm:   树状数组 (Fenwick Tree / Binary Indexed Tree)
 * @Language:    Python 3.12
 * @Time Compl.: O(log n)
 * @Description: 相比线段树更节省空间且易于实现，主要用于区间和查询与单点更新。 | More space-efficient and easier to implement than Segment Tree, mainly for range sum queries and point updates.
 * @Teaching:    核心在于 lowbit(x) = x & (-x) 的位运算技巧。 | The core is the bitwise trick lowbit(x) = x & (-x).
 */

class FenwickTree:
    def __init__(self, n):
        self.n = n
        self.tree = [0] * (n + 1)

    def update(self, i, delta):
        """单点增加：给第 i 个元素增加 delta | Point add: add delta to the i-th element"""
        i += 1 # 转换为 1-indexed | Convert to 1-indexed
        while i <= self.n:
            self.tree[i] += delta
            i += i & (-i) # 移至父节点 | Move to next responsible node

    def query(self, i):
        """前缀和：查询前 i 个元素的和 | Prefix sum: sum of first i elements"""
        i += 1
        s = 0
        while i > 0:
            s += self.tree[i]
            i -= i & (-i) # 移至前一个不重叠的区间 | Move to previous interval
        return s

    def query_range(self, l, r):
        """区间和查询 | Range sum query"""
        return self.query(r) - self.query(l - 1)

# 单元测试 | Unit Test
def test_fenwick_tree():
    data = [1, 3, 5, 7, 9, 11]
    ft = FenwickTree(len(data))
    for i, val in enumerate(data):
        ft.update(i, val)
    
    assert ft.query_range(1, 3) == 15 # 3 + 5 + 7
    ft.update(1, 7) # 3 -> 10
    assert ft.query_range(1, 3) == 22 # 10 + 5 + 7
    print("Fenwick Tree tests passed! | 树状数组测试通过！")

if __name__ == "__main__":
    test_fenwick_tree()

# LeetCode: 307. Range Sum Query - Mutable, 315. Count of Smaller Numbers After Self
# 洛谷: P3374 【模板】树状数组 1
