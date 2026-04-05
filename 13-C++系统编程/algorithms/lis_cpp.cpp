/*
 * @Author:      Anonymous
 * @Algorithm:   最长递增子序列 (Longest Increasing Subsequence / LIS)
 * @Language:    C++ 17
 * @Time Compl.: O(n log n)
 * @Description: 查找数组中递增子序列的最长长度。使用 lower_bound 优化。 | Find LIS length using lower_bound optimization.
 * @Teaching:    维护 tails 数组，每个元素存储对应长度递增子序列的最小末尾。 | Maintain tails array storing min end for each length.
 */

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int lis(vector<int>& nums) {
    if (nums.empty()) return 0;
    
    vector<int> tails;
    for (int x : nums) {
        auto it = lower_bound(tails.begin(), tails.end(), x);
        if (it == tails.end()) {
            tails.push_back(x);
        } else {
            *it = x;
        }
    }
    return tails.size();
}

// 单元测试 | Unit Test
void testLIS() {
    vector<int> nums = {10, 9, 2, 5, 3, 7, 101, 18};
    if (lis(nums) == 4) {
        cout << "LIS tests passed! | 最长递增子序列测试通过！" << endl;
    }
}

int main() {
    testLIS();
    return 0;
}

// LeetCode: 300. Longest Increasing Subsequence
