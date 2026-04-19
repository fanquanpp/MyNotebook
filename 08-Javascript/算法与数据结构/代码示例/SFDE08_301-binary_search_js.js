// 二分查找算法实现
// 有序数组的高效查找算法

/**
 * 二分查找函数
 * @param {Array} arr - 有序数组
 * @param {*} target - 要查找的目标值
 * @returns {number} - 目标值在数组中的索引，未找到返回 -1
 */
function binarySearch(arr, target) {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        // 计算中间位置
        const mid = Math.floor((left + right) / 2);

        // 找到目标值
        if (arr[mid] === target) {
            return mid;
        }

        // 目标值在左半部分
        if (arr[mid] > target) {
            right = mid - 1;
        } else {
            // 目标值在右半部分
            left = mid + 1;
        }
    }

    // 未找到目标值
    return -1;
}

/**
 * 递归版本的二分查找
 * @param {Array} arr - 有序数组
 * @param {*} target - 要查找的目标值
 * @param {number} left - 左边界
 * @param {number} right - 右边界
 * @returns {number} - 目标值在数组中的索引，未找到返回 -1
 */
function binarySearchRecursive(arr, target, left = 0, right = arr.length - 1) {
    // 基本情况：未找到目标值
    if (left > right) {
        return -1;
    }

    // 计算中间位置
    const mid = Math.floor((left + right) / 2);

    // 找到目标值
    if (arr[mid] === target) {
        return mid;
    }

    // 目标值在左半部分
    if (arr[mid] > target) {
        return binarySearchRecursive(arr, target, left, mid - 1);
    } else {
        // 目标值在右半部分
        return binarySearchRecursive(arr, target, mid + 1, right);
    }
}

// 测试二分查找
if (require.main === module) {
    console.log('测试二分查找:');
    const arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
    
    // 测试存在的元素
    console.log(`查找 7: ${binarySearch(arr, 7)}`);
    console.log(`递归查找 7: ${binarySearchRecursive(arr, 7)}`);
    
    // 测试不存在的元素
    console.log(`查找 8: ${binarySearch(arr, 8)}`);
    console.log(`递归查找 8: ${binarySearchRecursive(arr, 8)}`);
    
    // 测试边界情况
    console.log(`查找第一个元素 1: ${binarySearch(arr, 1)}`);
    console.log(`查找最后一个元素 19: ${binarySearch(arr, 19)}`);
}

module.exports = { binarySearch, binarySearchRecursive };