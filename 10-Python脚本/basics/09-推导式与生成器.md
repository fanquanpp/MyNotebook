# 推导式与生成器 (Comprehensions & Generators)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 列表/字典推导式、迭代器、生成器及 Lazy Evaluation。 | Comprehensions, Iterators, Generators, and Lazy Evaluation.

## 1. 推导式 (Comprehensions)
Pythonic 的方式创建容器。
- **列表推导式**: `[x**2 for x in range(10) if x % 2 == 0]`
- **字典推导式**: `{k: v for k, v in items if v > 0}`
- **集合推导式**: `{x for x in data if x > 0}`

## 2. 迭代器 (Iterators)
实现了 `__iter__` 和 `__next__` 协议的对象。
- **`iter(obj)`**: 获取迭代器。
- **`next(it)`**: 获取下一个元素。

## 3. 生成器 (Generators)
**核心思想**: 惰性求值 (Lazy Evaluation)，节省内存。
### 3.1 生成器表达式 (Generator Expression)
使用圆括号 `()`。
```python
gen = (x**2 for x in range(1000000))
# 不会立即计算，只有遍历时才产生数据。
```

### 3.2 生成器函数 (`yield`)
使用 `yield` 关键字。
```python
def fib(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b
```

## 4. 优势
- **节省内存**: 仅在需要时计算。
- **无限序列**: 可以表示理论上无限的序列。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化生成器与惰性计算。
