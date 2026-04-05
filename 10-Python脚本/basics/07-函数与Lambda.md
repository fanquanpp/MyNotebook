# 函数详解 (Functions In-depth)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 函数定义、参数传递、匿名函数、装饰器及作用域。 | Function definitions, parameters, lambda, decorators, and scope.

## 1. 函数基本语法 (Basic Syntax)
函数是封装逻辑的可重用代码块。

### 1.1 定义与调用 (Definition & Invocation)
```python
def greet(name, msg="Hello"):
    """
    函数文档字符串 | Docstring
    """
    return f"{msg}, {name}!"

# 调用
print(greet("Alice"))
```

### 1.2 参数传递 (Parameter Passing)
Python 中只有**引用传递** (Pass by Object Reference)。
- **不可变对象 (int, str, tuple)**: 修改形参不会影响实参。
- **可变对象 (list, dict, set)**: 修改形参的内容**会影响**实参。

## 2. 参数类型 (Parameter Types)
1. **位置参数 (Positional)**: 必须按顺序传递。
2. **关键字参数 (Keyword)**: `name="Alice"`。
3. **默认参数 (Default)**: `msg="Hello"`。
   - **陷阱**: 不要使用可变对象 (如 `[]`) 作为默认参数。
4. **可变参数 (`*args`)**: 接收位置参数元组。
5. **关键字可变参数 (`**kwargs`)**: 接收键值对字典。

## 3. 匿名函数 (Lambda)
语法: `lambda arguments: expression`
- **特点**: 单行、简单、无需 `return`。
```python
add = lambda x, y: x + y
print(add(5, 5)) # 10
```

## 4. 装饰器 (Decorators)
**核心思想**: 在不改变原函数代码的前提下增加额外功能。
```python
def timer(func):
    def wrapper(*args, **kwargs):
        # 执行前
        res = func(*args, **kwargs)
        # 执行后
        return res
    return wrapper

@timer
def my_func(): ...
```

## 5. 高阶函数 (Higher-Order Functions)
接收函数作为参数或返回函数的函数。
- **`map()`**: 对序列每个元素执行函数。
- **`filter()`**: 根据函数结果过滤元素。
- **`reduce()`**: 累积计算 (需 `from functools import reduce`)。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化装饰器与参数传递细节。
