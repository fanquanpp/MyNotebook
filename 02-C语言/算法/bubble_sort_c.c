/*
 * @Author:      Anonymous
 * @Algorithm:   冒泡排序 (Bubble Sort)
 * @Language:    C11
 * @Time Compl.: O(n^2) / O(n) (Best)
 * @Description: 通过相邻元素比较并交换，将最大的元素“浮”到数组末尾。 | Sorting by repeatedly swapping adjacent elements if they are in wrong order.
 * @Teaching:    理解双层循环及优化标记 (swapped flag)。 | Understand nested loops and optimization flag.
 */

#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

/**
 * @brief 冒泡排序实现
 * @param arr 待排序数组
 * @param n 数组长度
 */
void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        bool swapped = false;
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // 交换 | Swap
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = true;
            }
        }
        // 如果一轮下来没有发生交换，说明数组已经有序 | Optimization
        if (!swapped) break;
    }
}

/**
 * @brief 单元测试 | Unit Test
 */
void test_bubble_sort() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);
    int expected[] = {11, 12, 22, 25, 34, 64, 90};

    bubbleSort(arr, n);

    for (int i = 0; i < n; i++) {
        assert(arr[i] == expected[i]);
    }
    printf("Bubble Sort (C) tests passed! | 冒泡排序 (C) 测试通过！\n");
}

int main() {
    test_bubble_sort();
    return 0;
}

// LeetCode: 912. Sort an Array
