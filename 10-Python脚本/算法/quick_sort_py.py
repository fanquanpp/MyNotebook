/*
 * @Author:      Anonymous
 * @Algorithm:   快速排序 (Quick Sort)
 * @Language:    Python 3.12
 * @Time Compl.: O(n log n) / O(n^2)
 * @Description: 通过分治法将数组分为较小和较大的两个子数组，递归排序。 | Divide and conquer algorithm that picks an element as pivot and partitions the given array around the picked pivot.
 * @Teaching:    理解基准值选择与分区操作是核心。 | Understanding pivot selection and partitioning is key.
 */

def quick_sort(arr):
    """
    快速排序主函数 | Main function for Quick Sort
    """
    if len(arr) <= 1:
        return arr
    
    pivot = arr[len(arr) // 2] # 选择中间作为基准 | Pick middle as pivot
    left = [x for x in arr if x < pivot] # 小于基准的部分 | Elements smaller than pivot
    middle = [x for x in arr if x == pivot] # 等于基准的部分 | Elements equal to pivot
    right = [x for x in arr if x > pivot] # 大于基准的部分 | Elements larger than pivot
    
    return quick_sort(left) + middle + quick_sort(right)

# 单元测试 | Unit Test
def test_quick_sort():
    assert quick_sort([3, 6, 8, 10, 1, 2, 1]) == [1, 1, 2, 3, 6, 8, 10]
    assert quick_sort([]) == []
    assert quick_sort([1]) == [1]
    print("Quick Sort tests passed! | 快速排序测试通过！")

if __name__ == "__main__":
    test_quick_sort()

# LeetCode: 912. Sort an Array
