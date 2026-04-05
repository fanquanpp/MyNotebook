/*
 * @Author:      Anonymous
 * @Algorithm:   堆排序 (Heap Sort)
 * @Language:    Python 3.12
 * @Time Compl.: O(n log n)
 * @Description: 利用二叉堆性质进行排序。首先构建最大堆，然后依次交换堆顶与末尾。 | Sorting using binary heap properties. Build a max-heap and swap the top with the end.
 * @Teaching:    堆化的过程 (Heapify) 是核心。 | The core is the Heapify process.
 */

def heapify(arr, n, i):
    largest = i
    l = 2 * i + 1
    r = 2 * i + 2
    
    if l < n and arr[i] < arr[l]:
        largest = l
    if r < n and arr[largest] < arr[r]:
        largest = r
        
    if largest != i:
        arr[i], arr[largest] = arr[largest], arr[i]
        heapify(arr, n, largest)

def heap_sort(arr):
    n = len(arr)
    # 构建最大堆 | Build max-heap
    for i in range(n // 2 - 1, -1, -1):
        heapify(arr, n, i)
        
    # 一个个交换 | Extract elements
    for i in range(n - 1, 0, -1):
        arr[i], arr[0] = arr[0], arr[i]
        heapify(arr, i, 0)
    return arr

# 单元测试 | Unit Test
def test_heap_sort():
    assert heap_sort([12, 11, 13, 5, 6, 7]) == [5, 6, 7, 11, 12, 13]
    assert heap_sort([]) == []
    assert heap_sort([1]) == [1]
    print("Heap Sort tests passed! | 堆排序测试通过！")

if __name__ == "__main__":
    test_heap_sort()

# LeetCode: 912. Sort an Array
