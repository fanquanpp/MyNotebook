# 运算符与表达式 (Operators & Expressions)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 算术、逻辑、位运算及成员/身份运算符详解。 | Detailed guide on Python operators, logic, bitwise, and membership.

## 1. 运算符分类 (Operator Categories)

### 1.1 算术运算符 (Arithmetic)
| 运算符 | 描述 | 示例 (a=10, b=3) |
|---|---|---|
| `+` | 加法 | `a + b = 13` |
| `-` | 减法 | `a - b = 7` |
| `*` | 乘法 | `a * b = 30` |
| `/` | 除法 | `a / b = 3.333` |
| `//` | 整除 | `a // b = 3` |
| `%` | 取模 | `a % b = 1` |
| `**` | 幂运算 | `a ** b = 1000` |

### 1.2 比较运算符 (Relational)
- `==`, `!=`, `>`, `<`, `>=`, `<=`

### 1.3 逻辑运算符 (Logical)
- `and`: 逻辑与 (短路特性)。
- `or`: 逻辑或 (短路特性)。
- `not`: 逻辑非。

### 1.4 位运算符 (Bitwise)
- `&`: 与 (AND)
- `|`: 或 (OR)
- `^`: 异或 (XOR)
- `~`: 取反 (NOT)
- `<<`: 左移
- `>>`: 右移

### 1.5 成员运算符 (Membership)
用于序列 (str, list, tuple, set, dict)。
- **`in`**: 存在。
- **`not in`**: 不存在。

### 1.6 身份运算符 (Identity)
比较内存地址。
- **`is`**: 指向同一个对象 (`id(a) == id(b)`)。
- **`is not`**: 指向不同对象。
- **注意**: 不要用 `is` 替代 `==`。`==` 比较值，`is` 比较引用。

## 2. 海象运算符 (Walrus - `:=`)
Python 3.8 引入。允许在表达式内进行赋值。
```python
if (n := len(items)) > 10:
    print(f"Total items: {n}")
```

## 3. 优先级 (Precedence)
1. **最高**: `**`
2. **乘除**: `*`, `/`, `//`, `%`
3. **加减**: `+`, `-`
4. **位移**: `<<`, `>>`
5. **位运算**: `&`, `^`, `|`
6. **比较**: `>`, `==`, `is`, `in` 等
7. **逻辑**: `not`, `and`, `or`

---
### 更新日志 (Changelog)
- 2026-04-05: 补充海象运算符与身份/成员运算细节。
