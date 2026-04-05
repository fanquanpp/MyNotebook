/*
 * @Author:      Anonymous
 * @Algorithm:   快速排序 (Quick Sort)
 * @Language:    C (C99)
 * @Time Compl.: O(n log n)
 * @Description: 在原数组上通过划分 (Partition) 操作进行排序。使用 C 标准库 qsort 的手写实现。 | Partition-based in-place sorting. Manual implementation of qsort-like behavior.
 * @Teaching:    掌握分区 (Partition) 操作。注意递归栈溢出风险。 | Mastering Partition operation. Watch for recursion stack overflow.
 */

#include <stdio.h>
#include <assert.h>

// 交换两个元素 | Swap two elements
void swap(int* a, int* b) {
    int t = *a;
    *a = *b;
    *b = t;
}

// 分区操作 | Partition operation
int partition(int arr[], int low, int high) {
    int pivot = arr[high]; // 选择最后一个元素作为基准 | Pick last element as pivot
    int i = (low - 1);
    
    for (int j = low; j <= high - 1; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

// 快速排序递归函数 | Recursive Quick Sort function
void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

// 单元测试 | Unit Test
void testQuickSort() {
    int arr[] = {10, 7, 8, 9, 1, 5};
    int n = sizeof(arr) / sizeof(arr[0]);
    quickSort(arr, 0, n - 1);
    
    int expected[] = {1, 5, 7, 8, 9, 10};
    for (int i = 0; i < n; i++) {
        assert(arr[i] == expected[i]);
    }
    printf("Quick Sort (C) tests passed! | 快速排序 (C) 测试通过！\n");
}

int main() {
    testQuickSort();
    return 0;
}

// LeetCode: 912. Sort an Array
