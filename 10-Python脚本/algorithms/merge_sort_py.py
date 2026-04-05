/*
 * @Author:      Anonymous
 * @Algorithm:   归并排序 (Merge Sort)
 * @Language:    Python 3.12
 * @Time Compl.: O(n log n)
 * @Description: 稳定排序算法，采用分治策略。 | Stable sorting algorithm using divide and conquer strategy.
 * @Teaching:    递归拆分数组，合并时使用双指针。 | Recursively split the array, use two pointers during merging.
 */

def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    
    return merge(left, right)

def merge(left, right):
    result = []
    i = j = 0
    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    result.extend(left[i:])
    result.extend(right[j:])
    return result

# 单元测试 | Unit Test
def test_merge_sort():
    assert merge_sort([38, 27, 43, 3, 9, 82, 10]) == [3, 9, 10, 27, 38, 43, 82]
    assert merge_sort([]) == []
    assert merge_sort([1]) == [1]
    print("Merge Sort tests passed! | 归并排序测试通过！")

if __name__ == "__main__":
    test_merge_sort()

# LeetCode: 912. Sort an Array
