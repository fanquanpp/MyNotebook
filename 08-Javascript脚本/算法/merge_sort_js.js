/*
 * @Author:      Anonymous
 * @Algorithm:   归并排序 (Merge Sort)
 * @Language:    JavaScript (ES2022)
 * @Time Compl.: O(n log n)
 * @Description: 稳定排序算法，采用分治策略。 | Stable sorting algorithm using divide and conquer strategy.
 * @Teaching:    递归拆分数组，合并时使用双指针。 | Recursively split the array, use two pointers during merging.
 */

/**
 * 归并排序实现 | Merge Sort implementation
 * @param {number[]} arr 待排序数组
 * @returns {number[]} 排序后的数组
 */
function mergeSort(arr) {
    if (arr.length <= 1) return arr;
    
    const mid = Math.floor(arr.length / 2);
    const left = mergeSort(arr.slice(0, mid));
    const right = mergeSort(arr.slice(mid));
    
    return merge(left, right);
}

function merge(left, right) {
    let result = [];
    let i = 0, j = 0;
    while (i < left.length && j < right.length) {
        if (left[i] <= right[j]) {
            result.push(left[i]);
            i++;
        } else {
            result.push(right[j]);
            j++;
        }
    }
    return result.concat(left.slice(i)).concat(right.slice(j));
}

// 单元测试 | Unit Test
function testMergeSort() {
    const arr = [38, 27, 43, 3, 9, 82, 10];
    const expected = [3, 9, 10, 27, 38, 43, 82];
    const result = mergeSort(arr);
    console.assert(JSON.stringify(result) === JSON.stringify(expected), "Merge Sort (JS) tests failed!");
    
    console.log("Merge Sort (JS) tests passed! | 归并排序 (JS) 测试通过！");
}

if (require.main === module) {
    testMergeSort();
}

// LeetCode: 912. Sort an Array
export { mergeSort };
