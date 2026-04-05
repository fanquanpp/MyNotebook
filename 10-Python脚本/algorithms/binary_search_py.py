/*
 * @Author:      Anonymous
 * @Algorithm:   二分搜索 (Binary Search)
 * @Language:    Python 3.12
 * @Time Compl.: O(log n)
 * @Description: 在有序数组中通过不断折半来查找目标值。 | Find target value in a sorted array by repeatedly dividing the search interval in half.
 * @Teaching:    前提是数组必须有序，注意循环退出条件。 | The array must be sorted. Watch out for loop termination conditions.
 */

def binary_search(arr, target):
    """
    二分搜索查找目标索引 | Find target index using Binary Search
    """
    low, high = 0, len(arr) - 1
    
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
            
    return -1

# 单元测试 | Unit Test
def test_binary_search():
    assert binary_search([1, 2, 3, 4, 5, 6, 7], 4) == 3
    assert binary_search([1, 2, 3, 4, 5, 6, 7], 8) == -1
    assert binary_search([], 1) == -1
    print("Binary Search tests passed! | 二分搜索测试通过！")

if __name__ == "__main__":
    test_binary_search()

# LeetCode: 704. Binary Search
