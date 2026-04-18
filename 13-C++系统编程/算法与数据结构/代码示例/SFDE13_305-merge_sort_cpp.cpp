/*
 * @Author:      Anonymous
 * @Algorithm:   归并排序 (Merge Sort)
 * @Language:    C++ 17
 * @Time Compl.: O(n log n)
 * @Description: 稳定排序算法，采用分治策略，将数组递归拆分并合并。 | A stable sorting algorithm that uses a divide-and-conquer strategy to recursively split and merge the array.
 * @Teaching:    理解归并过程中的双指针操作是核心。 | Understanding the two-pointer operation during merging is key.
 */

#include <iostream>
#include <vector>
#include <cassert>

using namespace std;

// 合并两个有序子数组 | Merge two sorted subarrays
void merge(vector<int>& arr, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;
    
    vector<int> L(n1), R(n2);
    
    for (int i = 0; i < n1; i++) L[i] = arr[left + i];
    for (int j = 0; j < n2; j++) R[j] = arr[mid + 1 + j];
    
    int i = 0, j = 0, k = left;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k++] = L[i++];
        } else {
            arr[k++] = R[j++];
        }
    }
    
    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];
}

// 归并排序递归函数 | Recursive Merge Sort function
void mergeSort(vector<int>& arr, int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;
        mergeSort(arr, left, mid);
        mergeSort(arr, mid + 1, right);
        merge(arr, left, mid, right);
    }
}

// 单元测试 | Unit Test
void testMergeSort() {
    vector<int> arr = {12, 11, 13, 5, 6, 7};
    vector<int> expected = {5, 6, 7, 11, 12, 13};
    mergeSort(arr, 0, arr.size() - 1);
    assert(arr == expected);
    
    vector<int> emptyArr = {};
    mergeSort(emptyArr, 0, 0);
    assert(emptyArr.empty());
    
    cout << "Merge Sort tests passed! | 归并排序测试通过！" << endl;
}

int main() {
    testMergeSort();
    return 0;
}

// LeetCode: 912. Sort an Array
