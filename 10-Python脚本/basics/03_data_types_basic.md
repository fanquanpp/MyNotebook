# 基础数据类型 (Basic Data Types)

> @Author: Anonymous
> @Category: Python Basics
> @Description: Python 核心内置类型：数字、字符串、布尔及 None。 | Core built-in types: Numbers, Strings, Booleans, and None.

## 1. 数字 (Numbers)
Python 3 只有三种数值类型：
- **`int` (整型)**: 任意精度整数。在 Python 3 中不再有 `long`。
- **`float` (浮点型)**: 双精度浮点数。
- **`complex` (复数)**: 形如 `3 + 4j`。

### 常用操作
```python
x = 10 / 3  # 浮点除: 3.333...
y = 10 // 3 # 整除: 3
z = 10 % 3  # 取模: 1
p = 2 ** 3  # 幂运算: 8
```

## 2. 字符串 (Strings - `str`)
不可变的序列类型，存储 Unicode 字符。
- **定义**: `'...'`, `"..."`, `'''...'''` (支持换行)。
- **切片 (Slicing)**: `s[start:stop:step]`。
- **格式化**:
  - `f-string` (Python 3.6+): `f"Hello {name}"` (推荐)。
  - `format()`: `"{} {}".format(a, b)`。
  - `%` 运算符: `"%s %d" % (name, age)`。

## 3. 布尔 (Booleans - `bool`)
`True` 和 `False`。
- **布尔上下文**: 所有的 Python 对象都可以转换为布尔值。
- **Falsy 值**: `None`, `False`, `0`, `0.0`, `""`, `[]`, `()`, `{}`, `set()`。

## 4. 空值 (NoneType - `None`)
表示变量没有值。常用于函数默认参数或占位。
- **注意**: `None` 不等于 `0`, `False` 或空字符串。

## 5. 类型转换 (Type Casting)
```python
int("123")    # 123
float(10)     # 10.0
str(3.14)     # "3.14"
bool(0)       # False
```

---
### 更新日志 (Changelog)
- 2026-04-05: 细化 Python 基本数据类型及常用操作。
