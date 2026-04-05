/*
 * @Author:      Anonymous
 * @Algorithm:   二分查找 (Binary Search)
 * @Language:    Java 17
 * @Time Compl.: O(log n)
 * @Description: 在有序数组中通过不断折半来查找目标值。 | Find target value in a sorted array by repeatedly dividing the search interval in half.
 * @Teaching:    前提是数组必须有序，注意循环退出条件。 | The array must be sorted. Watch out for loop termination conditions.
 */

public class binary_search_java {
    /**
     * 二分搜索查找目标索引 | Find target index using Binary Search
     * @param arr 有序数组
     * @param target 目标值
     * @return 目标值所在的索引，若未找到则返回 -1
     */
    public static int binarySearch(int[] arr, int target) {
        int low = 0;
        int high = arr.length - 1;
        
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
    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5, 6, 7};
        assert binarySearch(arr, 4) == 3;
        assert binarySearch(arr, 8) == -1;
        
        int[] emptyArr = {};
        assert binarySearch(emptyArr, 1) == -1;
        
        System.out.println("Binary Search tests passed! | 二分搜索测试通过！");
    }
}

// LeetCode: 704. Binary Search
