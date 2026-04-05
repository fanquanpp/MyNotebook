# Python 基础算法 | Python Basic Algorithms

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 入门：数值与字符串 | Entry: Numbers & Strings](#1-入门数值与字符串--entry-numbers--strings)
- [2. 进阶：排序与搜索 | Intermediate: Sort & Search](#2-进阶排序与搜索--intermediate-sort--search)
- [3. 实战：应用案例 | Practical: Case Studies](#3-实战应用案例--practical-case-studies)
- [4. 总结 | Summary](#4-总结--summary)
- [5. 延伸阅读 | Further Reading](#5-延伸阅读--further-reading)

---

## 1. 入门：数值与字符串 | Entry: Numbers & Strings
### 示例 1.1: 斐波那契数列
```python
# 执行环境: Python 3.10+
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

print(list(fibonacci(5)))
```
<!-- expected_output
[0, 1, 1, 2, 3]
-->

### 示例 1.2: 阶乘计算
```python
def factorial(n):
    return 1 if n == 0 else n * factorial(n - 1)

print(factorial(5))
```
<!-- expected_output
120
-->

### 示例 1.3: 字符串反转
```python
s = "Python"
print(s[::-1])
```
<!-- expected_output
nohtyP
-->

### 示例 1.4: 质数判断
```python
def is_prime(n):
    if n < 2: return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0: return False
    return True

print(is_prime(7))
```
<!-- expected_output
True
-->

### 示例 1.5: 列表去重
```python
nums = [1, 2, 2, 3, 4, 4, 5]
print(list(set(nums)))
```
<!-- expected_output
[1, 2, 3, 4, 5]
-->

## 2. 进阶：排序与搜索 | Intermediate: Sort & Search
### 示例 2.1: 冒泡排序
```python
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

print(bubble_sort([64, 34, 25, 12, 22]))
```
<!-- expected_output
[12, 22, 25, 34, 64]
-->

### 示例 2.2: 二分查找
```python
def binary_search(arr, x):
    low, high = 0, len(arr) - 1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] < x: low = mid + 1
        elif arr[mid] > x: high = mid - 1
        else: return mid
    return -1

print(binary_search([1, 2, 3, 4, 5], 4))
```
<!-- expected_output
3
-->

### 示例 2.3: 快速排序 (List Comprehension)
```python
def quicksort(arr):
    if len(arr) <= 1: return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quicksort(left) + middle + quicksort(right)

print(quicksort([3, 6, 8, 10, 1, 2, 1]))
```
<!-- expected_output
[1, 1, 2, 3, 6, 8, 10]
-->

### 示例 2.4: 统计词频
```python
from collections import Counter
text = "apple banana apple orange banana apple"
print(Counter(text.split()))
```
<!-- expected_output
Counter({'apple': 3, 'banana': 2, 'orange': 1})
-->

### 示例 2.5: 矩阵转置
```python
matrix = [[1, 2], [3, 4], [5, 6]]
print([list(row) for row in zip(*matrix)])
```
<!-- expected_output
[[1, 3, 5], [2, 4, 6]]
-->

## 3. 实战：应用案例 | Practical: Case Studies
### 示例 3.1: 文件批量重命名
```python
import os
# os.rename('old.txt', 'new.txt') # 仅作演示
print("Mock: Renaming files in /tmp")
```
<!-- expected_output
Mock: Renaming files in /tmp
-->

### 示例 3.2: 简单爬虫 (HTTP Get)
```python
import urllib.request
# with urllib.request.urlopen('http://python.org/') as f:
#     print(f.read(100))
print("Mock: Fetching python.org...")
```
<!-- expected_output
Mock: Fetching python.org...
-->

### 示例 3.3: JSON 处理
```python
import json
data = {"name": "Python", "year": 1991}
print(json.dumps(data, indent=2))
```
<!-- expected_output
{
  "name": "Python",
  "year": 1991
}
-->

### 示例 3.4: 正则表达式匹配
```python
import re
email = "user@example.com"
print(bool(re.match(r"[^@]+@[^@]+\.[^@]+", email)))
```
<!-- expected_output
True
-->

### 示例 3.5: 日期差计算
```python
from datetime import date
d1 = date(2024, 1, 1)
d2 = date(2024, 4, 5)
print((d2 - d1).days)
```
<!-- expected_output
95
-->

## 4. 总结 | Summary
Python 算法开发的魅力在于其强大的标准库与简洁的语法。掌握基本算法思想（分治、递归、迭代）是编写高质量脚本的关键。

## 5. 延伸阅读 | Further Reading
- [Python 官方算法文档 (Algorithms)](https://docs.python.org/3/library/algorithms.html) <!-- nofollow -->
- [GeeksforGeeks Python 算法 (GeeksforGeeks)](https://www.geeksforgeeks.org/python-programming-language/python-algorithms/) <!-- nofollow -->
- [LeetCode Python 题解 (LeetCode)](https://leetcode.com/tag/python/) <!-- nofollow -->
- [Algorithm Visualizer](https://algorithm-visualizer.org/) <!-- nofollow -->
- [Python 算法实战 (Real Python)](https://realpython.com/tutorials/algorithms/) <!-- nofollow -->
- [The Algorithms - Python (GitHub)](https://github.com/TheAlgorithms/Python) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 初始化基础算法文档，补全 15 个跨级别示例。
