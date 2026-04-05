/*
 * @Author:      Anonymous
 * @Algorithm:   快速排序 (Quick Sort)
 * @Language:    Lua 5.4
 * @Time Compl.: O(n log n)
 * @Description: 在 Lua 中实现的原地快速排序。 | In-place Quick Sort implemented in Lua.
 * @Teaching:    Lua 数组下标从 1 开始。注意递归与分区逻辑。 | Lua array indices start from 1. Watch recursion and partition logic.
 */

local function partition(arr, low, high)
    local pivot = arr[high]
    local i = low - 1
    
    for j = low, high - 1 do
        if arr[j] < pivot then
            i = i + 1
            arr[i], arr[j] = arr[j], arr[i] -- 交换 | Swap
        end
    end
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1
end

local function quick_sort(arr, low, high)
    if low < high then
        local pi = partition(arr, low, high)
        quick_sort(arr, low, pi - 1)
        quick_sort(arr, pi + 1, high)
    end
    return arr
end

-- 单元测试 | Unit Test
local function test_quick_sort()
    local arr = {10, 7, 8, 9, 1, 5}
    quick_sort(arr, 1, #arr)
    
    local expected = {1, 5, 7, 8, 9, 10}
    for i = 1, #arr do
        assert(arr[i] == expected[i])
    end
    print("Quick Sort (Lua) tests passed! | 快速排序 (Lua) 测试通过！")
end

test_quick_sort()

-- LeetCode: 912. Sort an Array
return { quick_sort = quick_sort }
