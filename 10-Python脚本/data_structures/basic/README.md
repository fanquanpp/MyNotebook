# Python 基础数据结构 | Python Basic Data Structures

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 入门：列表与元组 | Entry: List & Tuple](#1-入门列表与元组--entry-list--tuple)
- [2. 进阶：字典与集合 | Intermediate: Dict & Set](#2-进阶字典与集合--intermediate-dict--set)
- [3. 实战：栈与队列 | Practical: Stack & Queue](#3-实战栈与队列--practical-stack--queue)
- [4. 总结 | Summary](#4-总结--summary)
- [5. 延伸阅读 | Further Reading](#5-延伸阅读--further-reading)

---

## 1. 入门：列表与元组 | Entry: List & Tuple
### 示例 1.1: 列表推导式
```python
# 执行环境: Python 3.10+
squares = [x**2 for x in range(10)]
print(squares)
```
<!-- expected_output
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
-->

### 示例 1.2: 元组解包
```python
p = (1, 2, 3)
x, y, z = p
print(f"x: {x}, y: {y}, z: {z}")
```
<!-- expected_output
x: 1, y: 2, z: 3
-->

### 示例 1.3: 列表切片
```python
nums = [0, 1, 2, 3, 4, 5]
print(nums[1:4])
```
<!-- expected_output
[1, 2, 3]
-->

### 示例 1.4: 列表排序
```python
fruits = ["banana", "apple", "cherry"]
fruits.sort()
print(fruits)
```
<!-- expected_output
['apple', 'banana', 'cherry']
-->

### 示例 1.5: 列表嵌套
```python
matrix = [[1, 2], [3, 4]]
print(matrix[1][0])
```
<!-- expected_output
3
-->

## 2. 进阶：字典与集合 | Intermediate: Dict & Set
### 示例 2.1: 字典推导式
```python
d = {x: x**2 for x in range(5)}
print(d)
```
<!-- expected_output
{0: 0, 1: 1, 2: 4, 3: 9, 4: 16}
-->

### 示例 2.2: 字典合并 (Python 3.9+)
```python
d1 = {"a": 1, "b": 2}
d2 = {"b": 3, "c": 4}
print(d1 | d2)
```
<!-- expected_output
{'a': 1, 'b': 3, 'c': 4}
-->

### 示例 2.3: 集合交集并集
```python
s1 = {1, 2, 3}
s2 = {2, 3, 4}
print(f"Union: {s1 | s2}, Intersect: {s1 & s2}")
```
<!-- expected_output
Union: {1, 2, 3, 4}, Intersect: {2, 3}
-->

### 示例 2.4: Defaultdict 自动初始化
```python
from collections import defaultdict
d = defaultdict(int)
d["key"] += 1
print(d["key"])
```
<!-- expected_output
1
-->

### 示例 2.5: Namedtuple 命名元组
```python
from collections import namedtuple
Point = namedtuple('Point', ['x', 'y'])
p = Point(11, y=22)
print(f"p.x: {p.x}, p.y: {p.y}")
```
<!-- expected_output
p.x: 11, p.y: 22
-->

## 3. 实战：栈与队列 | Practical: Stack & Queue
### 示例 3.1: 使用 List 实现栈 (LIFO)
```python
stack = []
stack.append(1)
stack.append(2)
print(stack.pop())
```
<!-- expected_output
2
-->

### 示例 3.2: 使用 Deque 实现队列 (FIFO)
```python
from collections import deque
queue = deque(["a", "b", "c"])
queue.append("d")
print(queue.popleft())
```
<!-- expected_output
a
-->

### 示例 3.3: 优先级队列 (Heapq)
```python
import heapq
h = []
heapq.heappush(h, (5, 'write code'))
heapq.heappush(h, (7, 'release product'))
heapq.heappush(h, (1, 'fix bugs'))
print(heapq.heappop(h))
```
<!-- expected_output
(1, 'fix bugs')
-->

### 示例 3.4: 链表 (简单实现)
```python
class Node:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

head = Node(1, Node(2))
print(head.next.val)
```
<!-- expected_output
2
-->

### 示例 3.5: Counter 计数器
```python
from collections import Counter
c = Counter('abracadabra')
print(c.most_common(3))
```
<!-- expected_output
[('a', 5), ('b', 2), ('r', 2)]
-->

## 4. 总结 | Summary
Python 的内置数据结构极其丰富。合理选择 `list`, `dict`, `set`, `tuple` 及 `collections` 模块中的高级结构，可以显著降低代码复杂度并提升运行效率。

## 5. 延伸阅读 | Further Reading
- [Python 数据结构官方指南 (Data Structures)](https://docs.python.org/3/tutorial/datastructures.html) <!-- nofollow -->
- [Python Collections 模块 (Collections)](https://docs.python.org/3/library/collections.html) <!-- nofollow -->
- [Python Heapq 堆排序 (Heapq)](https://docs.python.org/3/library/heapq.html) <!-- nofollow -->
- [Data Structures in Python | DataCamp](https://www.datacamp.com/tutorial/python-data-structures) <!-- nofollow -->
- [Python Dictionary Tutorial | Real Python](https://realpython.com/python-dicts/) <!-- nofollow -->
- [Stack and Queue in Python | GeeksforGeeks](https://www.geeksforgeeks.org/stack-and-queue-in-python/) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 初始化基础数据结构文档，补全 15 个跨级别示例。
