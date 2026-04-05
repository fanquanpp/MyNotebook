# 面向对象编程 (OOP Basics)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 类与对象、属性/方法、继承、多态及特殊方法 (Magic Methods)。 | Class, Object, Properties, Methods, Inheritance, and Magic Methods.

## 1. 类与实例 (Class & Instance)
Python 是一门纯粹的面向对象语言。

```python
class Person:
    # 类属性 | Class attribute
    species = "Human"
    
    # 构造方法 | Constructor
    def __init__(self, name, age):
        self.name = name  # 实例属性 | Instance attribute
        self.age = age
    
    # 实例方法 | Instance method
    def greet(self):
        return f"Hello, I am {self.name}"

# 实例化
p = Person("Alice", 30)
```

## 2. 属性与方法 (Properties & Methods)
- **`self`**: 指向当前实例。
- **类方法 (`@classmethod`)**: 接收 `cls` 作为参数，访问类属性。
- **静态方法 (`@staticmethod`)**: 不接收 `self` 或 `cls`，纯工具函数。
- **私有属性 (`__name`)**: 使用双下划线开头。

## 3. 继承与多态 (Inheritance & Polymorphism)
- **单/多继承**: `class Child(Parent1, Parent2):`
- **`super()`**: 调用父类方法。
- **鸭子类型 (Duck Typing)**: "如果它走起来像鸭子，叫起来也像鸭子，那它就是鸭子"。不关注类型，关注行为。

## 4. 特殊方法 (Magic Methods - `__method__`)
- **`__str__`**: `str(obj)` 返回的字符串。
- **`__repr__`**: 开发调试用的字符串。
- **`__len__`**: `len(obj)` 返回的长度。
- **`__getitem__`**: 支持 `obj[key]`。

## 5. 装饰器属性 (`@property`)
将方法伪装成属性。
```python
@property
def email(self):
    return f"{self.name}@example.com"
```

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 Python 面向对象基础与特殊方法。
