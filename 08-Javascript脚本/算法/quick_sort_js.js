// 快速排序算法实现
// 分治思想的高效排序算法

/**
 * 快速排序函数
 * @param {Array} arr - 待排序的数组
 * @returns {Array} - 排序后的数组
 */
function quickSort(arr) {
    // 基本情况：数组长度小于等于 1 时已经有序
    if (arr.length <= 1) {
        return arr;
    }

    // 选择基准元素（这里选择最后一个元素）
    const pivot = arr[arr.length - 1];
    const left = []; // 小于基准元素的数组
    const right = []; // 大于基准元素的数组

    // 遍历数组，将元素分为两部分
    for (let i = 0; i < arr.length - 1; i++) {
        if (arr[i] < pivot) {
            left.push(arr[i]);
        } else {
            right.push(arr[i]);
        }
    }

    // 递归排序左右两部分，然后合并结果
    return [...quickSort(left), pivot, ...quickSort(right)];
}

/**
 * 原地快速排序函数
 * @param {Array} arr - 待排序的数组
 * @param {number} left - 左边界
 * @param {number} right - 右边界
 * @returns {Array} - 排序后的数组
 */
function quickSortInPlace(arr, left = 0, right = arr.length - 1) {
    if (left < right) {
        // 获取分区点
        const pivotIndex = partition(arr, left, right);
        
        // 递归排序左半部分
        quickSortInPlace(arr, left, pivotIndex - 1);
        // 递归排序右半部分
        quickSortInPlace(arr, pivotIndex + 1, right);
    }
    return arr;
}

/**
 * 分区函数
 * @param {Array} arr - 待分区的数组
 * @param {number} left - 左边界
 * @param {number} right - 右边界
 * @returns {number} - 基准元素的最终位置
 */
function partition(arr, left, right) {
    // 选择基准元素（这里选择最后一个元素）
    const pivot = arr[right];
    // 分区点索引
    let i = left - 1;

    // 遍历数组，将小于基准元素的元素移到左侧
    for (let j = left; j < right; j++) {
        if (arr[j] < pivot) {
            i++;
            // 交换元素
            [arr[i], arr[j]] = [arr[j], arr[i]];
        }
    }

    // 将基准元素移到正确的位置
    [arr[i + 1], arr[right]] = [arr[right], arr[i + 1]];
    return i + 1;
}

// 测试快速排序
if (require.main === module) {
    console.log('测试快速排序:');
    const arr = [10, 7, 8, 9, 1, 5, 2, 3, 6, 4];
    
    // 测试非原地快速排序
    const sortedArr = quickSort(arr);
    console.log('非原地快速排序结果:', sortedArr);
    
    // 测试原地快速排序
    const arr2 = [10, 7, 8, 9, 1, 5, 2, 3, 6, 4];
    quickSortInPlace(arr2);
    console.log('原地快速排序结果:', arr2);
    
    // 测试边界情况
    const emptyArr = [];
    console.log('空数组排序:', quickSort(emptyArr));
    
    const singleArr = [5];
    console.log('单元素数组排序:', quickSort(singleArr));
    
    const sortedArr2 = [1, 2, 3, 4, 5];
    console.log('已排序数组排序:', quickSort(sortedArr2));
    
    const reverseArr = [5, 4, 3, 2, 1];
    console.log('逆序数组排序:', quickSort(reverseArr));
}

module.exports = { quickSort, quickSortInPlace };