/*
 * @Author:      Anonymous
 * @Algorithm:   最长公共子序列 (Longest Common Subsequence / LCS)
 * @Language:    Python 3.12
 * @Time Compl.: O(nm) 其中 n, m 为字符串长度 | O(nm) where n, m are string lengths
 * @Description: 查找两个序列中公共部分的最长长度。不需要字符连续。 | Find the length of the longest subsequence common to two sequences. Characters don't need to be contiguous.
 * @Teaching:    状态转移：若字符相等，lcs(i,j) = 1 + lcs(i-1,j-1)；若不相等，lcs(i,j) = max(lcs(i-1,j), lcs(i,j-1))。 | State transition: if chars equal, lcs(i,j) = 1 + lcs(i-1,j-1); if not, lcs(i,j) = max(lcs(i-1,j), lcs(i,j-1)).
 */

def lcs(X, Y):
    """
    计算两个序列的最长公共子序列长度 | Calculate LCS length of two sequences
    :param X: 第一个序列 | First sequence
    :param Y: 第二个序列 | Second sequence
    """
    m = len(X)
    n = len(Y)
    
    # 初始化 DP 表 | Initialize DP table
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    
    # 填表 | Fill DP table
    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if X[i-1] == Y[j-1]:
                dp[i][j] = dp[i-1][j-1] + 1
            else:
                dp[i][j] = max(dp[i-1][j], dp[i][j-1])
                
    return dp[m][n]

# 单元测试 | Unit Test
def test_lcs():
    X = "ABCBDAB"
    Y = "BDCABA"
    # LCS: "BCBA", "BDAB", "BCAB", length 4
    assert lcs(X, Y) == 4
    assert lcs("AGGTAB", "GXTXAYB") == 4
    print("LCS tests passed! | 最长公共子序列测试通过！")

if __name__ == "__main__":
    test_lcs()

# LeetCode: 1143. Longest Common Subsequence, 583. Delete Operation for Two Strings
# 洛谷: P1439 【模板】最长公共子序列
