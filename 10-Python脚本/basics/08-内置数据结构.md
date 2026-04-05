# 内置数据结构 (Built-in Data Structures)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 列表、元组、集合、字典的底层实现与常用操作。 | Detailed guide on List, Tuple, Set, and Dictionary.

## 1. 列表 (List - `list`)
**特点**: 有序、可变、允许重复。
- **实现**: 动态数组。
- **常用方法**: `append()`, `insert()`, `pop()`, `remove()`, `sort()`, `reverse()`。
- **切片**: `nums[1:4]`, `nums[::-1]` (反转)。

## 2. 元组 (Tuple - `tuple`)
**特点**: 有序、不可变、允许重复。
- **场景**: 作为字典的键、函数返回多个值。
- **解包 (Unpacking)**: `a, b = (1, 2)`。
- **注意**: 只有一个元素的元组必须带逗号: `(1,)`。

## 3. 字典 (Dictionary - `dict`)
**特点**: 无序 (Python 3.7+ 保证插入顺序)、键唯一、键必须不可变 (Hashable)。
- **实现**: 哈希表 (Hash Table)。
- **常用方法**: `get(key, default)`, `keys()`, `values()`, `items()`, `update()`。

## 4. 集合 (Set - `set`)
**特点**: 无序、不重复、元素必须不可变。
- **实现**: 只有键的哈希表。
- **常用方法**: `add()`, `remove()`, `discard()`。
- **集合运算**: `&` (交), `|` (并), `-` (差), `^` (对称差)。

## 5. 类型对比 (Comparison)

| 类型 | 有序 | 可变 | 重复 | 性能 (查找) |
|---|---|---|---|---|
| `list` | Yes | Yes | Yes | $O(n)$ |
| `tuple` | Yes | No | Yes | $O(n)$ |
| `dict` | Yes* | Yes | No (Key) | $O(1)$ |
| `set` | No | Yes | No | $O(1)$ |

---
### 更新日志 (Changelog)
- 2026-04-05: 细化内置容器性能对比。
