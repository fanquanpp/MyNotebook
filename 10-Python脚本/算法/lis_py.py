/*
 * @Author:      Anonymous
 * @Algorithm:   最长递增子序列 (Longest Increasing Subsequence / LIS)
 * @Language:    Python 3.12
 * @Time Compl.: O(n log n) 使用二分查找优化 | O(n log n) with binary search optimization
 * @Description: 查找数组中递增子序列的最长长度。不需要元素连续。 | Find the length of the longest increasing subsequence in an array. Elements don't need to be contiguous.
 * @Teaching:    核心在于维护一个辅助数组 tails，其中 tails[i] 表示长度为 i+1 的递增子序列的最小尾部元素。 | Core is maintaining an auxiliary array tails, where tails[i] is the smallest tail of an increasing subsequence of length i+1.
 */

import bisect

def lis(nums):
    """
    计算数组的最长递增子序列长度 | Calculate LIS length of an array
    :param nums: 输入数组 | Input array
    """
    if not nums:
        return 0
        
    # tails[i] 表示长度为 i+1 的递增子序列的最小末尾元素 | tails[i] is the smallest end element of LIS of length i+1
    tails = []
    
    for x in nums:
        # 查找插入位置 | Find insertion position
        idx = bisect.bisect_left(tails, x)
        
        # 如果 x 大于所有已知的递增子序列末尾，则增加 LIS 长度 | If x is larger than all known LIS ends, increase LIS length
        if idx == len(tails):
            tails.append(x)
        # 否则更新已有的长度为 idx+1 的递增子序列末尾，使其更小 | Else update the end of LIS of length idx+1 to be smaller
        else:
            tails[idx] = x
            
    return len(tails)

# 单元测试 | Unit Test
def test_lis():
    nums = [10, 9, 2, 5, 3, 7, 101, 18]
    # LIS: [2, 3, 7, 18] or [2, 5, 7, 18], length 4
    assert lis(nums) == 4
    assert lis([0, 1, 0, 3, 2, 3]) == 4
    assert lis([7, 7, 7, 7, 7, 7, 7]) == 1
    print("LIS tests passed! | 最长递增子序列测试通过！")

if __name__ == "__main__":
    test_lis()

# LeetCode: 300. Longest Increasing Subsequence, 673. Number of Longest Increasing Subsequence
# 洛谷: P3374 【模板】树状数组 1 (也可用于 LIS)
