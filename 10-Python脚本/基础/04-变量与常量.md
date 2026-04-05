# 变量与常量 (Variables & Constants)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 变量定义、动态类型、作用域、生命周期及常量约定。 | Definitions, dynamic typing, scope, lifecycle, and constants.

## 1. 变量 (Variables)
变量是内存中存储数据的标签。

### 1.1 定义与赋值 (Assignment)
- **动态类型**: 变量不需要声明类型，可以在运行期间改变指向。
- **内存地址**: `id(var)` 可查看内存地址。
- **引用计数**: 当变量不再被引用时，GC 会自动回收。

```python
x = 10
x = "Hello" # 改变指向
a = b = c = 100 # 链式赋值
x, y = 1, 2 # 多重赋值 (解包)
```

### 1.2 变量的作用域 (Scope - LEGB)
Python 查找变量的顺序：
1. **Local (L)**: 局部作用域。
2. **Enclosing (E)**: 嵌套作用域 (如闭包)。
3. **Global (G)**: 全局作用域 (模块级别)。
4. **Built-in (B)**: 内置作用域 (如 `len`, `int`)。

- **`global`**: 在函数内修改全局变量。
- **`nonlocal`**: 在嵌套函数内修改闭包变量。

## 2. 常量 (Constants)
Python 中**没有内置的常量机制**。

### 2.1 约定 (Naming Convention)
使用**全大写字母**表示。
- **注意**: 这只是程序员间的约定，编译器并不会阻止修改。
```python
MAX_CONNECTIONS = 100
DEFAULT_TIMEOUT = 30
```

### 2.2 实现真正的常量 (Advanced)
通过类或自定义描述符实现。
```python
# 一个简单的实现方式
class _Const:
    class ConstError(TypeError): pass
    def __setattr__(self, name, value):
        if name in self.__dict__:
            raise self.ConstError(f"Can't rebind const ({name})")
        self.__dict__[name] = value

import sys
sys.modules[__name__] = _Const()
```

## 3. 变量交换 (Swapping)
```python
a, b = b, a # Pythonic way
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分变量作用域 LEGB 规则。
