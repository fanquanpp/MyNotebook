# 程序结构与基本语法 (Program Structure & Basic Syntax)

> @Author: Anonymous
> @Category: Python Basics
> @Description: Python 程序的组成、缩进规则、注释规范及标识符。 | Components of Python programs, indentation, comments, and identifiers.

## 1. 程序结构 (Program Structure)
Python 程序通常由模块导入、全局变量、函数定义和主逻辑组成。

```python
"""
模块文档字符串
Module-level docstring
"""
import math

# 全局变量 | Global variables
PI = math.pi

def calculate_area(radius):
    """
    计算圆面积 | Calculate area of a circle
    """
    return PI * (radius ** 2)

def main():
    # 局部变量 | Local variables
    r = 5
    area = calculate_area(r)
    print(f"Radius: {r}, Area: {area:.2f}")

# 标准入口点 | Entry point
if __name__ == "__main__":
    main()
```

## 2. 缩进规则 (Indentation)
Python 使用缩进（而非花括号 `{}`）来定义代码块。
- **强制要求**: 同一级别的代码块缩进量必须一致。
- **规范 (PEP 8)**: 使用 **4 个空格**，禁止混用空格和制表符 (Tab)。

## 3. 注释规范 (Comments)
- **单行注释**: 使用 `#`。
- **多行注释**: 虽然可以用 `'''` 或 `"""`，但 PEP 8 建议使用多个 `#`。
- **文档字符串 (Docstrings)**: 类、函数、模块的第一行，使用 `""" ... """`。

## 4. 标识符与关键字 (Identifiers & Keywords)
- **规则**:
  - 字母、数字、下划线组成。
  - **不能以数字开头**。
  - 区分大小写。
- **规范**:
  - **变量/函数**: `snake_case` (如 `user_name`)。
  - **类名**: `PascalCase` (如 `MyClass`)。
  - **常量**: `UPPER_SNAKE_CASE` (如 `MAX_COUNT`)。
  - **私有属性**: `_` 开头 (受保护) 或 `__` 开头 (私有)。

## 5. 语句换行 (Line Breaks)
- **显式换行**: 使用反斜杠 `\`。
- **隐式换行**: 在 `()`, `[]`, `{}` 内部可以直接换行。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 Python 基础语法规则。
