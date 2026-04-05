# 数组详解 (Arrays In-depth)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 一维、二维数组、动态/静态初始化、内存布局及常用工具类。 | One-dimensional, 2D arrays, initialization, memory layout, and Utilities.

## 1. 一维数组 (One-Dimensional Arrays)
一组相同类型数据的有序集合，大小固定。

### 1.1 定义与初始化 (Initialization)
- **静态初始化**: `int[] arr = {1, 2, 3};`
- **动态初始化**: `int[] arr = new int[5];` (有默认初始值)。

### 1.2 访问与遍历 (Access & Traversal)
- 索引从 `0` 到 `length - 1`。
- **`arr.length`**: 获取数组长度。
- **增强型 for (for-each)**: `for (int n : arr) { ... }`

## 2. 二维数组 (Two-Dimensional Arrays)
数组的数组，常用于矩阵。
```java
int[][] matrix = {
    {1, 2, 3},
    {4, 5, 6}
};
// 动态定义不规则数组 (Jagged Arrays)
int[][] jagged = new int[3][];
jagged[0] = new int[2];
jagged[1] = new int[5];
```

## 3. 数组的内存布局 (Memory Layout)
- **栈 (Stack)**: 存放数组引用变量 (`arr`)。
- **堆 (Heap)**: 存放数组实体 (实际存储数据的连续内存块)。

## 4. 常见问题
- **`ArrayIndexOutOfBoundsException`**: 索引越界。
- **`NullPointerException`**: 引用为 `null` 时访问。

## 5. `Arrays` 工具类 (`java.util.Arrays`)
- **`Arrays.toString(arr)`**: 转为字符串输出。
- **`Arrays.sort(arr)`**: 排序。
- **`Arrays.binarySearch(arr, key)`**: 二分查找。
- **`Arrays.copyOf(arr, newLen)`**: 复制。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化数组内存布局与常用工具。
