/*
 * @Author:      Anonymous
 * @Algorithm:   冒泡排序 (Bubble Sort)
 * @Language:    GDScript 4.x
 * @Time Compl.: O(n^2)
 * @Description: 基础交换排序算法。 | Basic exchange sorting algorithm.
 * @Teaching:    理解嵌套循环与交换逻辑。 | Understanding nested loops and swap logic.
 */

extends Node

func _ready():
    var arr = [64, 34, 25, 12, 22, 11, 90]
    var sorted_arr = bubble_sort(arr)
    print("Sorted Array: ", sorted_arr)
    assert(sorted_arr == [11, 12, 22, 25, 34, 64, 90])
    print("Bubble Sort tests passed! | 冒泡排序测试通过！")

func bubble_sort(arr: Array) -> Array:
    """
    冒泡排序实现 | Bubble Sort implementation
    """
    var n = arr.size()
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                # 交换元素 | Swap elements
                var temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
    return arr

# LeetCode: 912. Sort an Array
