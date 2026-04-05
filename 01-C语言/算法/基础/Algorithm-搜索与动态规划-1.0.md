<!--
文件名称：02-搜索与动态规划-学习笔记
原名称：无
用途描述：介绍常见搜索算法（顺序查找、二分查找、BFS、DFS）和动态规划（DP）的核心思想、实现示例及复杂度分析。
创建/更新：2026-04-05
-->

# 02-搜索与动态规划（Search & Dynamic Programming）

搜索算法是解决寻找目标的问题，而动态规划是解决具有重叠子问题和最优子结构性质的问题。

## 1. 核心概念

- **搜索**：遍历搜索空间，寻找满足条件的解。
- **动态规划 (DP)**：通过将大问题分解为相互关联的子问题来解决。核心是 **状态定义**、**状态转移方程** 和 **边界条件**。
- **复杂度对比**：

| 搜索算法 | 平均时间复杂度 | 适用场景 |
| :--- | :--- | :--- |
| **顺序查找** | $O(n)$ | 无序列表 |
| **二分查找** | $O(\log n)$ | 有序列表 |
| **BFS（广度优先）** | $O(V+E)$ | 最短路径（非加权） |
| **DFS（深度优先）** | $O(V+E)$ | 拓扑排序、连通性 |

## 2. 算法原理与实现

### 2.1 二分查找 (Binary Search)
- **原理**：每次将搜索范围缩小一半。
- **前提**：数组必须是有序的。

```c
int binarySearch(int arr[], int size, int target) {
    int left = 0, right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target) return mid;
        if (arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;
}
```

### 2.2 动态规划 (Dynamic Programming)
- **典型案例**：斐波那契数列、背包问题。
- **状态转移方程示例（斐波那契）**：$dp[i] = dp[i-1] + dp[i-2]$。

```c
// 斐波那契数列（空间优化版）
int fib(int n) {
    if (n <= 1) return n;
    int a = 0, b = 1, sum;
    for (int i = 2; i <= n; i++) {
        sum = a + b;
        a = b;
        b = sum;
    }
    return b;
}
```

## 3. 实战应用

- **BFS**：用于寻找无向图中的最短路径。
- **DFS**：用于寻找图中的所有可能路径，或处理树结构。
- **DP**：用于求最优解，如最短路、最大收益、最少找零等。

## 4. 最佳实践

- **DFS 注意递归深度**：防止栈溢出，必要时改用显式栈。
- **BFS 使用队列**：实现简单且直观。
- **DP 降维打击**：利用滚动数组优化空间复杂度。

## 5. 延伸阅读

- [Hello 算法 - 动态规划](https://www.hello-algo.com/chapter_dynamic_programming/) <!-- nofollow -->
- [LeetCode 101 - 动态规划](https://github.com/cgao96/leetcode_101) <!-- nofollow -->

## 6. 更新日志

- **2026-04-05**：初始版本，整理基础搜索与 DP。
