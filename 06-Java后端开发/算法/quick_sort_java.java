/*
 * @Author:      Anonymous
 * @Algorithm:   快速排序 (Quick Sort)
 * @Language:    Java 17
 * @Time Compl.: O(n log n)
 * @Description: 原地分区排序算法。 | In-place partition-based sorting algorithm.
 * @Teaching:    掌握分区 (Partition) 逻辑。注意递归栈深度。 | Mastering Partition logic. Watch for recursion stack depth.
 */

import java.util.Arrays;

public class quick_sort_java {
    /**
     * 快速排序入口 | Quick Sort Entry
     */
    public static void quickSort(int[] arr, int low, int high) {
        if (low < high) {
            int pi = partition(arr, low, high);
            quickSort(arr, low, pi - 1);
            quickSort(arr, pi + 1, high);
        }
    }

    private static int partition(int[] arr, int low, int high) {
        int pivot = arr[high];
        int i = (low - 1);
        for (int j = low; j < high; j++) {
            if (arr[j] < pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        int temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;
        return i + 1;
    }

    // 单元测试 | Unit Test
    public static void main(String[] args) {
        int[] arr = {10, 7, 8, 9, 1, 5};
        quickSort(arr, 0, arr.length - 1);
        int[] expected = {1, 5, 7, 8, 9, 10};
        assert Arrays.equals(arr, expected);

        System.out.println("Quick Sort (Java) tests passed! | 快速排序 (Java) 测试通过！");
    }
}

// LeetCode: 912. Sort an Array
