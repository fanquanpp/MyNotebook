/*
 * @Author:      Anonymous
 * @Algorithm:   二分搜索 (Binary Search)
 * @Language:    Lua 5.4
 * @Time Compl.: O(log n)
 * @Description: 在有序数组中查找目标值。 | Find target value in a sorted array.
 * @Teaching:    Lua 数组下标从 1 开始。计算中间位置时使用 math.floor。 | Lua array indices start from 1. Use math.floor for mid calculation.
 */

local function binary_search(arr, target)
    local low = 1
    local high = #arr
    
    while low <= high do
        local mid = math.floor((low + high) / 2)
        if arr[mid] == target then
            return mid
        elseif arr[mid] < target then
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return -1
end

-- 单元测试 | Unit Test
local function test_binary_search()
    local arr = {1, 2, 3, 4, 5, 6, 7}
    assert(binary_search(arr, 4) == 4)
    assert(binary_search(arr, 8) == -1)
    assert(binary_search({}, 1) == -1)
    print("Binary Search (Lua) tests passed! | 二分搜索 (Lua) 测试通过！")
end

test_binary_search()

-- LeetCode: 704. Binary Search
return { binary_search = binary_search }
