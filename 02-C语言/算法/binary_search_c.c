/*
 * @Author:      Anonymous
 * @Algorithm:   二分搜索 (Binary Search)
 * @Language:    C (C99)
 * @Time Compl.: O(log n)
 * @Description: 在有序数组中通过不断折半来查找目标值。 | Find target value in a sorted array by repeatedly dividing the search interval in half.
 * @Teaching:    前提是数组必须有序，注意循环退出条件。 | The array must be sorted. Watch out for loop termination conditions.
 */

#include <stdio.h>
#include <assert.h>

/**
 * 二分搜索查找目标索引 | Find target index using Binary Search
 * @param arr 有序数组
 * @param n 数组长度
 * @param target 目标值
 * @return 目标值所在的索引，若未找到则返回 -1
 */
int binarySearch(int arr[], int n, int target) {
    int low = 0;
    int high = n - 1;
    
    while (low <= high) {
        int mid = low + (high - low) / 2;
        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    
    return -1;
}

// 单元测试 | Unit Test
void testBinarySearch() {
    int arr[] = {1, 2, 3, 4, 5, 6, 7};
    int n = sizeof(arr) / sizeof(arr[0]);
    assert(binarySearch(arr, n, 4) == 3);
    assert(binarySearch(arr, n, 8) == -1);
    
    int emptyArr[] = {};
    assert(binarySearch(emptyArr, 0, 1) == -1);
    
    printf("Binary Search (C) tests passed! | 二分搜索 (C) 测试通过！\n");
}

int main() {
    testBinarySearch();
    return 0;
}

// LeetCode: 704. Binary Search
