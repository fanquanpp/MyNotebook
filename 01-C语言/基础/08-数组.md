# 数组详解 (Arrays In-depth)

> @Author: Anonymous
> @Category: C Basics
> @Description: 一维、多维数组、字符数组、数组与指针的关系及内存布局。 | One-dimensional, multi-dimensional, character arrays, and array-pointer relationships.

## 1. 一维数组 (One-Dimensional Arrays)
一组相同类型的连续存储单元。

### 1.1 定义与初始化 (Definition & Initialization)
```c
int arr[5]; // 声明
int arr[5] = {1, 2, 3, 4, 5}; // 初始化
int arr[] = {10, 20, 30}; // 自动推断大小
int arr[10] = {0}; // 全部初始化为 0
```

### 1.2 访问与越界 (Access & Out-of-bounds)
- 下标从 `0` 开始到 `size - 1`。
- **注意**: C 语言不检查数组下标越界，越界访问可能导致程序崩溃或数据损坏。

## 2. 多维数组 (Multi-Dimensional Arrays)
### 2.1 二维数组 (2D Arrays)
可以看作矩阵。
```c
int matrix[2][3] = {
    {1, 2, 3},
    {4, 5, 6}
};
// 内存布局: 1 2 3 4 5 6 (行优先存储)
```

## 3. 字符数组与字符串 (Character Arrays & Strings)
字符串是末尾带 `\0` (空字符) 的字符数组。
```c
char str[] = "Hello"; // 自动包含 '\0'，大小为 6
char str2[10] = {'H', 'e', 'l', 'l', 'o', '\0'};
```

## 4. 数组与指针的关系 (Arrays vs. Pointers)
- **数组名**: 是数组首元素的地址 (`arr` 等同于 `&arr[0]`)。
- **退化 (Decay)**: 数组作为函数参数传递时，会退化为指针。
```c
void print_arr(int *p, int size);
// 调用: print_arr(arr, 5);
```

## 5. 变长数组 (VLA - Variable Length Arrays)
C99 引入，允许在运行时确定数组大小（仅限局部变量）。
```c
void func(int n) {
    int arr[n]; // 数组大小由变量 n 决定
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化数组知识。
