/*
 * @Author:      Anonymous
 * @Algorithm:   线段树 (Segment Tree)
 * @Language:    Python 3.12
 * @Time Compl.: 构建 O(n), 查询/更新 O(log n) | Build O(n), Query/Update O(log n)
 * @Description: 用于区间查询（如区间和、区间最值）与区间更新。 | Used for range queries (sum, min/max) and range updates.
 * @Teaching:    将区间递归二分为左右子区间，每个节点存储子区间的聚合信息。 | Recursively divide ranges into left/right sub-ranges, storing aggregated info in each node.
 */

class SegmentTree:
    def __init__(self, data):
        self.n = len(data)
        self.tree = [0] * (4 * self.n)
        if self.n > 0:
            self._build(data, 1, 0, self.n - 1)

    def _build(self, data, node, start, end):
        if start == end:
            self.tree[node] = data[start]
            return
        mid = (start + end) // 2
        self._build(data, 2 * node, start, mid)
        self._build(data, 2 * node + 1, mid + 1, end)
        self.tree[node] = self.tree[2 * node] + self.tree[2 * node + 1] # 示例：区间和 | Sum

    def update(self, idx, val):
        """单点更新 | Point update"""
        self._update(1, 0, self.n - 1, idx, val)

    def _update(self, node, start, end, idx, val):
        if start == end:
            self.tree[node] = val
            return
        mid = (start + end) // 2
        if start <= idx <= mid:
            self._update(2 * node, start, mid, idx, val)
        else:
            self._update(2 * node + 1, mid + 1, end, idx, val)
        self.tree[node] = self.tree[2 * node] + self.tree[2 * node + 1]

    def query(self, l, r):
        """区间查询 | Range query"""
        return self._query(1, 0, self.n - 1, l, r)

    def _query(self, node, start, end, l, r):
        if r < start or end < l:
            return 0
        if l <= start and end <= r:
            return self.tree[node]
        mid = (start + end) // 2
        p1 = self._query(2 * node, start, mid, l, r)
        p2 = self._query(2 * node + 1, mid + 1, end, l, r)
        return p1 + p2

# 单元测试 | Unit Test
def test_segment_tree():
    data = [1, 3, 5, 7, 9, 11]
    st = SegmentTree(data)
    assert st.query(1, 3) == 15 # 3 + 5 + 7
    st.update(1, 10)
    assert st.query(1, 3) == 22 # 10 + 5 + 7
    print("Segment Tree tests passed! | 线段树测试通过！")

if __name__ == "__main__":
    test_segment_tree()

# LeetCode: 307. Range Sum Query - Mutable
# 洛谷: P3372 【模板】线段树 1
