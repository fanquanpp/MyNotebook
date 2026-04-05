/*
 * @Author:      Anonymous
 * @Algorithm:   归并排序 (Merge Sort)
 * @Language:    C11
 * @Time Compl.: O(n log n)
 * @Description: 采用分治策略，将数组分成两半分别排序，然后合并。 | Divide and conquer strategy, split array in half, sort each, then merge.
 * @Teaching:    递归的分拆与合并逻辑。注意辅助空间的使用。 | Recursive splitting and merging logic. Note auxiliary space usage.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

/**
 * @brief 合并两个有序子数组
 */
void merge(int arr[], int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    // 创建临时数组 | Temporary arrays
    int *L = (int *)malloc(n1 * sizeof(int));
    int *R = (int *)malloc(n2 * sizeof(int));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0, j = 0, k = l;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k++] = L[i++];
        } else {
            arr[k++] = R[j++];
        }
    }

    // 复制剩余元素 | Copy remaining elements
    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];

    free(L);
    free(R);
}

/**
 * @brief 归并排序递归函数
 */
void mergeSort(int arr[], int l, int r) {
    if (l < r) {
        int m = l + (r - l) / 2;
        mergeSort(arr, l, m);
        mergeSort(arr, m + 1, r);
        merge(arr, l, m, r);
    }
}

/**
 * @brief 单元测试 | Unit Test
 */
void test_merge_sort() {
    int arr[] = {38, 27, 43, 3, 9, 82, 10};
    int n = sizeof(arr) / sizeof(arr[0]);
    int expected[] = {3, 9, 10, 27, 38, 43, 82};

    mergeSort(arr, 0, n - 1);

    for (int i = 0; i < n; i++) {
        assert(arr[i] == expected[i]);
    }
    printf("Merge Sort (C) tests passed! | 归并排序 (C) 测试通过！\n");
}

int main() {
    test_merge_sort();
    return 0;
}

// LeetCode: 912. Sort an Array
