/*
 * @Author:      Anonymous
 * @Algorithm:   0/1 背包问题 (0/1 Knapsack Problem)
 * @Language:    Python 3.12
 * @Time Compl.: O(nW) 其中 n 为物品数量，W 为背包容量 | O(nW) where n is items, W is capacity
 * @Description: 在背包容量限制下，选择物品使得总价值最大。每个物品只能选一次。 | Select items to maximize value given a capacity. Each item can only be picked once.
 * @Teaching:    核心在于状态转移方程：dp[i][j] = max(dp[i-1][j], dp[i-1][j-w[i]] + v[i])。可通过滚动数组优化空间至 O(W)。 | Core is the state transition: dp[i][j] = max(dp[i-1][j], dp[i-1][j-w[i]] + v[i]). Space can be optimized to O(W) with rolling arrays.
 */

def knapsack_01(capacity, weights, values):
    """
    计算最大价值 | Calculate maximum value
    :param capacity: 背包容量 | Knapsack capacity
    :param weights: 物品重量 | Item weights
    :param values: 物品价值 | Item values
    """
    n = len(weights)
    # 空间优化：一维数组 | Space optimization: 1D array
    dp = [0] * (capacity + 1)
    
    for i in range(n):
        # 逆序遍历以确保每个物品只被选择一次 | Iterate backwards to ensure each item is picked once
        for w in range(capacity, weights[i] - 1, -1):
            dp[w] = max(dp[w], dp[w - weights[i]] + values[i])
            
    return dp[capacity]

# 单元测试 | Unit Test
def test_knapsack():
    weights = [1, 3, 4, 5]
    values = [1, 4, 5, 7]
    capacity = 7
    # 物品组合: 3 + 4 = 7, 价值: 4 + 5 = 9
    # 物品组合: 1 + 5 = 6, 价值: 1 + 7 = 8
    # 物品组合: 1 + 3 = 4, 价值: 1 + 4 = 5
    # 物品组合: 物品 1 (1, 1), 物品 3 (4, 5), 物品 4 (5, 7)
    # 背包容量为 7 时，最大价值为物品 1 和物品 4 的组合 (1+5=6重量, 1+7=8价值) 或物品 2 和物品 3 的组合 (3+4=7重量, 4+5=9价值)
    assert knapsack_01(capacity, weights, values) == 9
    print("Knapsack 0/1 tests passed! | 0/1 背包测试通过！")

if __name__ == "__main__":
    test_knapsack()

# LeetCode: 416. Partition Equal Subset Sum, 494. Target Sum
# 洛谷: P1048 [NOIP2005 普及组] 采药
