/*
 * @Author:      Anonymous
 * @Algorithm:   线段树 (Segment Tree)
 * @Language:    C++ 17
 * @Time Compl.: 构建 O(n), 查询/更新 O(log n)
 * @Description: 用于区间查询（如区间和、区间最值）与区间更新。 | Used for range queries (sum, min/max) and range updates.
 * @Teaching:    递归二分区间。存储 Aggregate 信息。 | Recursively divide intervals. Store aggregate info.
 */

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

template<typename T>
class SegmentTree {
public:
    SegmentTree(const vector<T>& data) {
        n = data.size();
        tree.resize(4 * n);
        if (n > 0) build(data, 1, 0, n - 1);
    }
    
    void update(int idx, T val) {
        update(1, 0, n - 1, idx, val);
    }
    
    T query(int l, int r) {
        return query(1, 0, n - 1, l, r);
    }
    
private:
    int n;
    vector<T> tree;
    
    void build(const vector<T>& data, int node, int start, int end) {
        if (start == end) {
            tree[node] = data[start];
            return;
        }
        int mid = (start + end) / 2;
        build(data, 2 * node, start, mid);
        build(data, 2 * node + 1, mid + 1, end);
        tree[node] = tree[2 * node] + tree[2 * node + 1];
    }
    
    void update(int node, int start, int end, int idx, T val) {
        if (start == end) {
            tree[node] = val;
            return;
        }
        int mid = (start + end) / 2;
        if (idx <= mid) update(2 * node, start, mid, idx, val);
        else update(2 * node + 1, mid + 1, end, idx, val);
        tree[node] = tree[2 * node] + tree[2 * node + 1];
    }
    
    T query(int node, int start, int end, int l, int r) {
        if (r < start || end < l) return 0;
        if (l <= start && end <= r) return tree[node];
        int mid = (start + end) / 2;
        return query(2 * node, start, mid, l, r) + query(2 * node + 1, mid + 1, end, l, r);
    }
};

// 单元测试 | Unit Test
void testSegmentTree() {
    vector<int> data = {1, 3, 5, 7, 9, 11};
    SegmentTree<int> st(data);
    if (st.query(1, 3) == 15) { // 3 + 5 + 7
        st.update(1, 10);
        if (st.query(1, 3) == 22) { // 10 + 5 + 7
            cout << "Segment Tree tests passed! | 线段树测试通过！" << endl;
        }
    }
}

int main() {
    testSegmentTree();
    return 0;
}

// LeetCode: 307. Range Sum Query - Mutable
// 洛谷: P3372 【模板】线段树 1
