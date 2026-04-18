/*
 * @Author:      Anonymous
 * @Algorithm:   最长公共子序列 (Longest Common Subsequence / LCS)
 * @Language:    C++ 17
 * @Time Compl.: O(nm)
 * @Description: 查找两个序列中公共部分的最长长度。 | Find LCS length of two sequences.
 * @Teaching:    2D DP 状态转移。 | 2D DP state transition.
 */

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

int lcs(string X, string Y) {
    int m = X.length();
    int n = Y.length();
    
    vector<vector<int>> dp(m + 1, vector<int>(n + 1, 0));
    
    for (int i = 1; i <= m; i++) {
        for (int j = 1; j <= n; j++) {
            if (X[i-1] == Y[j-1]) {
                dp[i][j] = dp[i-1][j-1] + 1;
            } else {
                dp[i][j] = max(dp[i-1][j], dp[i][j-1]);
            }
        }
    }
    return dp[m][n];
}

// 单元测试 | Unit Test
void testLCS() {
    string X = "ABCBDAB";
    string Y = "BDCABA";
    if (lcs(X, Y) == 4) {
        cout << "LCS tests passed! | 最长公共子序列测试通过！" << endl;
    }
}

int main() {
    testLCS();
    return 0;
}

// LeetCode: 1143. Longest Common Subsequence
