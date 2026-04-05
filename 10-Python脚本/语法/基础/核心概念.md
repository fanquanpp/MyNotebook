<a id="title"></a>
# Python 基础概念与语法

> fanquanpp 的个人学习笔记

创建时间：2026-04-05
最新更新时间：2026-04-05

<a id="1"></a>
## 1 引言

Python 是一种简单易学、功能强大的编程语言，广泛应用于 Web 开发、数据分析、人工智能、科学计算等领域。本笔记将详细介绍 Python 的基础概念和语法规则。

<a id="2"></a>
## 2 目录

- [1. Python 概述](#1-python 概述)
- [2. Python 基本语法](#2-python 基本语法)
- [3. 数据类型](#3-数据类型)
- [4. 变量和常量](#4-变量和常量)
- [5. 运算符与表达式](#5-运算符与表达式)
- [6. 控制流](#6-控制流)
- [7. 函数](#7-函数)
- [8. 列表与元组](#8-列表与元组)
- [9. 字典与集合](#9-字典与集合)
- [10. 字符串操作](#10-字符串操作)
- [11. 文件操作](#11-文件操作)
- [12. 面向对象编程](#12-面向对象编程)
- [13. 异常处理](#13-异常处理)
- [14. 模块与包](#14-模块与包)
- [15. 总结](#15-总结)
- [16. 参考资料](#16-参考资料)

<a id="3"></a>
## 3 . Python 概述

Python 是由 Guido van Rossum 于 1989 年创建的一种高级编程语言，它具有以下特点：

- 简单易学：语法简洁明了，代码可读性高
- 解释执行：无需编译，直接运行
- 跨平台：可在 Windows、macOS、Linux 等多种平台上运行
- 动态类型：变量无需声明类型
- 丰富的标准库：提供大量内置模块和函数
- 强大的第三方库：NumPy、Pandas、Django 等
- 支持多种编程范式：面向对象、函数式、过程式

Python 的应用领域包括：
- Web 开发（Django、Flask）
- 数据分析（Pandas、NumPy）
- 人工智能（TensorFlow、PyTorch）
- 科学计算（SciPy、Matplotlib）
- 自动化脚本
- 游戏开发（Pygame）

<a id="4"></a>
## 4 . Python 基本语法

<a id="4.1"></a>
### 4.1 程序结构

一个基本的 Python 程序结构如下：

```python
# 导入模块
import math

# 函数定义
def greet(name):
    """问候函数"""
    print(f"Hello, {name}!")

# 变量定义
name = "Alice"

# 函数调用
greet(name)

# 主程序
if __name__ == "__main__":
    print("This is the main program")
```

<a id="4.2"></a>
### 4.2 注释

```python
# 单行注释

"""
多行注释
可以跨越多行
"""

"""函数文档字符串
用于描述函数的功能、参数和返回值
"""
def add(a, b):
    return a + b
```

<a id="4.3"></a>
### 4.3 缩进

Python 使用缩进来表示代码块，通常使用 4 个空格：

```python
if True:
    print("True")
    if False:
        print("False")
    else:
        print("Else")
else:
    print("Not True")
```

<a id="5"></a>
## 5 . 数据类型

<a id="5.1"></a>
### 5.1 基本数据类型

| 类型 | 描述 | 示例 |
|------|------|------|
| int | 整数 | `x = 10` |
| float | 浮点数 | `x = 3.14` |
| bool | 布尔值 | `x = True` |
| str | 字符串 | `x = "Hello"` |
| NoneType | 空值 | `x = None` |

<a id="5.2"></a>
### 5.2 复合数据类型

| 类型 | 描述 | 示例 |
|------|------|------|
| list | 列表 | `x = [1, 2, 3]` |
| tuple | 元组 | `x = (1, 2, 3)` |
| dict | 字典 | `x = {"name": "Alice", "age": 30}` |
| set | 集合 | `x = {1, 2, 3}` |

<a id="6"></a>
## 6 . 变量和常量

<a id="6.1"></a>
### 6.1 变量定义

```python
# 基本变量定义
age = 25
name = "Alice"
salary = 5000.50
is_student = True

# 多变量赋值
x, y, z = 1, 2, 3

# 交换变量
a, b = b, a

# 链式赋值
x = y = z = 10
```

<a id="6.2"></a>
### 6.2 常量

Python 中没有真正的常量，通常使用大写字母表示常量：

```python
PI = 3.14159
MAX_AGE = 100
DEFAULT_NAME = "Guest"
```

<a id="7"></a>
## 7 . 运算符与表达式

<a id="7.1"></a>
### 7.1 算术运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| + | 加法 | `x + y` |
| - | 减法 | `x - y` |
| * | 乘法 | `x * y` |
| / | 除法 | `x / y` |
| // | 整除 | `x // y` |
| % | 取余 | `x % y` |
| ** | 幂运算 | `x ** y` |

<a id="7.2"></a>
### 7.2 比较运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| == | 等于 | `x == y` |
| != | 不等于 | `x != y` |
| > | 大于 | `x > y` |
| < | 小于 | `x < y` |
| >= | 大于等于 | `x >= y` |
| <= | 小于等于 | `x <= y` |

<a id="7.3"></a>
### 7.3 逻辑运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| and | 逻辑与 | `x and y` |
| or | 逻辑或 | `x or y` |
| not | 逻辑非 | `not x` |

<a id="7.4"></a>
### 7.4 赋值运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| = | 赋值 | `x = y` |
| += | 加赋值 | `x += y` |
| -= | 减赋值 | `x -= y` |
| *= | 乘赋值 | `x *= y` |
| /= | 除赋值 | `x /= y` |
| //= | 整除赋值 | `x //= y` |
| %= | 取余赋值 | `x %= y` |
| **= | 幂赋值 | `x **= y` |

<a id="7.5"></a>
### 7.5 成员运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| in | 成员关系 | `x in y` |
| not in | 非成员关系 | `x not in y` |

<a id="7.6"></a>
### 7.6 身份运算符

| 运算符 | 描述 | 示例 |
|--------|------|------|
| is | 身份相同 | `x is y` |
| is not | 身份不同 | `x is not y` |

<a id="8"></a>
## 8 . 控制流

<a id="8.1"></a>
### 8.1 条件语句

```python
# if 语句
if condition:
    # 代码块

# if-else 语句
if condition:
    # 代码块 1
else:
    # 代码块 2

# if-elif-else 语句
if condition1:
    # 代码块 1
elif condition2:
    # 代码块 2
else:
    # 代码块 3

# 三元运算符
result = value1 if condition else value2
```

<a id="8.2"></a>
### 8.2 循环语句

```python
# for 循环
for item in iterable:
    # 代码块

# for 循环与 range
for i in range(10):
    print(i)

# for 循环与 enumerate
for index, item in enumerate(items):
    print(index, item)

# while 循环
while condition:
    # 代码块

# 循环控制语句
break    # 跳出循环
continue # 跳过当前循环迭代
pass     # 空操作
```

<a id="9"></a>
## 9 . 函数

<a id="9.1"></a>
### 9.1 函数定义

```python
def function_name(parameters):
    """函数文档字符串"""
    # 函数体
    return value
```

<a id="9.2"></a>
### 9.2 函数示例

```python
# 基本函数
def add(a, b):
    """计算两数之和"""
    return a + b

# 带默认参数的函数
def greet(name, greeting="Hello"):
    return f"{greeting}, {name}!"

# 带可变参数的函数
def sum_numbers(*args):
    return sum(args)

# 带关键字参数的函数
def print_info(**kwargs):
    for key, value in kwargs.items():
        print(f"{key}: {value}")

# 匿名函数
double = lambda x: x * 2
print(double(5))  # 输出 10
```

<a id="9.3"></a>
### 9.3 递归函数

```python
def factorial(n):
    """计算阶乘"""
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)
```

<a id="10"></a>
## 10 . 列表与元组

<a id="10.1"></a>
### 10.1 列表操作

```python
# 列表定义
numbers = [1, 2, 3, 4, 5]

# 访问元素
print(numbers[0])      # 第一个元素
print(numbers[-1])     # 最后一个元素
print(numbers[1:3])    # 切片

# 修改元素
numbers[0] = 10

# 添加元素
numbers.append(6)       # 末尾添加
numbers.insert(0, 0)    # 指定位置插入
numbers.extend([7, 8])  # 扩展列表

# 删除元素
numbers.remove(3)       # 删除指定值
numbers.pop()           # 删除并返回最后一个元素
numbers.pop(0)          # 删除并返回指定位置元素
del numbers[0]          # 删除指定位置元素

# 列表方法
numbers.sort()          # 排序
numbers.reverse()       # 反转
numbers.clear()         # 清空

# 列表推导式
squares = [x**2 for x in range(10)]
even_numbers = [x for x in numbers if x % 2 == 0]
```

<a id="10.2"></a>
### 10.2 元组操作

```python
# 元组定义
person = ("Alice", 30, "female")

# 访问元素
print(person[0])        # 第一个元素
print(person[-1])       # 最后一个元素
print(person[1:3])      # 切片

# 元组是不可变的，不能修改元素
# person[0] = "Bob"  # 错误

# 元组方法
print(person.count(30))  # 计数
print(person.index("Alice"))  # 查找索引

# 元组拆包
name, age, gender = person
print(name, age, gender)
```

<a id="11"></a>
## 11 . 字典与集合

<a id="11.1"></a>
### 11.1 字典操作

```python
# 字典定义
person = {"name": "Alice", "age": 30, "gender": "female"}

# 访问元素
print(person["name"])     # 使用键访问
print(person.get("age"))   # 使用 get 方法访问
print(person.get("city", "Unknown"))  # 带默认值

# 修改元素
person["age"] = 31

# 添加元素
person["city"] = "New York"

# 删除元素
del person["gender"]     # 删除指定键值对
person.pop("age")        # 删除并返回指定键的值
person.clear()           # 清空字典

# 字典方法
print(person.keys())     # 获取所有键
print(person.values())   # 获取所有值
print(person.items())    # 获取所有键值对

# 字典推导式
squares = {x: x**2 for x in range(5)}
```

<a id="11.2"></a>
### 11.2 集合操作

```python
# 集合定义
numbers = {1, 2, 3, 4, 5}

# 添加元素
numbers.add(6)
numbers.update([7, 8])

# 删除元素
numbers.remove(3)        # 删除指定元素
numbers.discard(9)       # 删除指定元素，不存在则忽略
numbers.pop()            # 删除并返回任意元素
numbers.clear()          # 清空集合

# 集合运算
set1 = {1, 2, 3}
set2 = {3, 4, 5}
print(set1 | set2)       # 并集
print(set1 & set2)       # 交集
print(set1 - set2)       # 差集
print(set1 ^ set2)       # 对称差集

# 集合推导式
even_numbers = {x for x in range(10) if x % 2 == 0}
```

<a id="12"></a>
## 12 . 字符串操作

```python
# 字符串定义
text = "Hello, World!"

# 访问字符
print(text[0])          # 第一个字符
print(text[-1])         # 最后一个字符
print(text[7:12])       # 切片

# 字符串方法
print(text.upper())      # 转大写
print(text.lower())      # 转小写
print(text.title())      # 首字母大写
print(text.strip())      # 去除首尾空白
print(text.split(","))   # 分割字符串
print(",".join(["a", "b", "c"]))  # 连接字符串
print(text.replace("World", "Python"))  # 替换字符串
print(text.find("World"))  # 查找子字符串
print("World" in text)   # 检查子字符串

# 字符串格式化
name = "Alice"
age = 30
print(f"My name is {name} and I am {age} years old.")  # f-string
print("My name is {} and I am {} years old.".format(name, age))  # format 方法
print("My name is %s and I am %d years old." % (name, age))  # 旧式格式化
```

<a id="13"></a>
## 13 . 文件操作

```python
# 打开文件
with open("file.txt", "w") as f:
    f.write("Hello, World!\n")
    f.write("Welcome to Python.\n")

# 读取文件
with open("file.txt", "r") as f:
    content = f.read()
    print(content)

# 逐行读取
with open("file.txt", "r") as f:
    for line in f:
        print(line.strip())

# 追加内容
with open("file.txt", "a") as f:
    f.write("This is a new line.\n")
```

<a id="14"></a>
## 14 . 面向对象编程

<a id="14.1"></a>
### 14.1 类定义

```python
class Person:
    """人员类"""
    
    # 类属性
    species = "Homo sapiens"
    
    # 构造方法
    def __init__(self, name, age):
        self.name = name  # 实例属性
        self.age = age
    
    # 实例方法
    def greet(self):
        return f"Hello, my name is {self.name}."
    
    # 类方法
    @classmethod
    def get_species(cls):
        return cls.species
    
    # 静态方法
    @staticmethod
    def is_adult(age):
        return age >= 18

# 创建实例
person = Person("Alice", 30)
print(person.greet())
print(Person.get_species())
print(Person.is_adult(20))
```

<a id="14.2"></a>
### 14.2 继承

```python
class Employee(Person):
    """员工类"""
    
    def __init__(self, name, age, employee_id):
        super().__init__(name, age)  # 调用父类构造方法
        self.employee_id = employee_id
    
    # 重写方法
    def greet(self):
        return f"{super().greet()} I'm an employee with ID {self.employee_id}."
    
    # 新方法
    def work(self):
        return f"{self.name} is working."

# 创建子类实例
employee = Employee("Bob", 35, 1001)
print(employee.greet())
print(employee.work())
```

<a id="15"></a>
## 15 . 异常处理

```python
try:
    # 可能引发异常的代码
    result = 10 / 0
except ZeroDivisionError:
    # 处理特定异常
    print("除数不能为零")
except Exception as e:
    # 处理其他异常
    print(f"发生异常: {e}")
else:
    # 没有异常时执行
    print("操作成功")
finally:
    # 无论是否有异常都执行
    print("操作完成")

# 自定义异常
class MyException(Exception):
    pass

try:
    raise MyException("自定义异常")
except MyException as e:
    print(f"捕获到自定义异常: {e}")
```

<a id="16"></a>
## 16 . 模块与包

<a id="16.1"></a>
### 16.1 模块导入

```python
# 导入整个模块
import math
print(math.pi)

# 导入特定函数
from math import pi, sqrt
print(pi)
print(sqrt(16))

# 导入所有函数
from math import *

# 导入并别名
import math as m
print(m.pi)

# 导入自定义模块
import my_module
from my_module import my_function
```

<a id="16.2"></a>
### 16.2 包

```python
# 包结构
# my_package/
#     __init__.py
#     module1.py
#     module2.py

# 导入包
import my_package
from my_package import module1
from my_package.module2 import function2
```

<a id="17"></a>
## 17 . 总结

Python 是一种强大而灵活的编程语言，通过本笔记的学习，你应该已经掌握了 Python 的基础概念、基本语法、数据类型、控制流、函数、列表与元组、字典与集合、字符串操作、文件操作、面向对象编程、异常处理以及模块与包等核心知识点。

在实际应用中，你需要根据具体的开发需求，灵活运用 Python 的各种特性，创建出高效、可靠的程序。同时，你还需要关注 Python 的最佳实践，确保代码的质量和可维护性。

通过不断学习和实践，你将能够熟练使用 Python，创建出更加优秀的应用程序。

<a id="18"></a>
## 18 . 参考资料

- [Python 官方文档](https://docs.python.org/3/)
- [Python 教程](https://www.runoob.com/python3/python3-tutorial.html)
- [Python 编程：从入门到实践](https://www.amazon.com/Python-Crash-Course-Hands-Project-Based/dp/1593276036)

<a id="19"></a>
## 19 版本历史

| 日期 | 版本 | 变更内容 | 变更人 |
|------|------|----------|--------|
| 2026-04-05 | 1.0 | 初始创建 | fanquanpp |