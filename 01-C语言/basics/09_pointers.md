# 指针深度解析 (Pointers In-depth)

> @Author: Anonymous
> @Category: C Basics
> @Description: 指针概念、指针运算、数组与指针、函数指针及多级指针。 | Pointer concepts, arithmetic, array-pointer, function-pointer, and multi-level pointers.

## 1. 指针基础 (Pointer Basics)
指针是存储内存地址的变量。

### 1.1 定义与初始化 (Definition & Initialization)
```c
int a = 10;
int *p = &a; // p 存储 a 的地址
// *p 表示解引用 (Dereference)，即访问 a 的值
printf("Value: %d\n", *p); // 10
```

### 1.2 空指针 (NULL)
未初始化的指针应设为 `NULL`。
```c
int *p = NULL;
if (p != NULL) {
    // 安全使用
}
```

## 2. 指针运算 (Pointer Arithmetic)
指针支持加法、减法及比较。
- `p + n`: 移动到后面第 `n` 个元素的地址。
- `p - n`: 移动到前面第 `n` 个元素的地址。
- **注意**: 移动步长取决于指针指向的数据类型大小 (`sizeof(type)`)。

## 3. 指针与数组 (Pointers & Arrays)
数组名即首元素地址。
```c
int arr[3] = {1, 2, 3};
int *p = arr;
printf("%d", *(p + 1)); // 2
```

## 4. 指针数组 vs. 数组指针 (Array of Pointers vs. Pointer to Array)
- **指针数组**: `int *p[10]` (一个数组，存了 10 个指针)。
- **数组指针**: `int (*p)[10]` (一个指针，指向存了 10 个整数的数组)。

## 5. 多级指针 (Multi-level Pointers)
指向指针的指针。
```c
int a = 10;
int *p = &a;
int **pp = &p; // 二级指针
printf("%d", **pp); // 10
```

## 6. 函数指针 (Function Pointers)
存储函数入口地址的指针。
```c
int (*func_ptr)(int, int);
func_ptr = add;
int res = func_ptr(5, 5);
```

## 7. 常见误区 (Pitfalls)
- **野指针 (Wild Pointer)**: 指向随机内存或已释放内存。
- **内存泄漏 (Memory Leak)**: `malloc` 后未 `free`。
- **解引用 NULL**: 会导致段错误 (Segmentation Fault)。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化指针知识。
