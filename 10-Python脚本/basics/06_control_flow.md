# 控制流 (Control Flow)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 条件分支、循环结构、异常捕获及 Match-Case 特性。 | Conditional branches, loops, exceptions, and Match-Case features.

## 1. 条件分支 (Selection)

### 1.1 `if-elif-else`
```python
if x > 10:
    print("Greater than 10")
elif x < 5:
    print("Less than 5")
else:
    print("Between 5 and 10")
```

### 1.2 三元表达式 (Ternary)
```python
result = "Pass" if score >= 60 else "Fail"
```

### 1.3 `match-case` (Python 3.10+)
类似于其他语言的 `switch-case`，但功能更强大。
```python
match status:
    case 200:
        return "OK"
    case 404:
        return "Not Found"
    case _:
        return "Unknown Status"
```

## 2. 循环结构 (Iteration)

### 2.1 `for` 循环
- **遍历序列**: `for item in items:`
- **`range()`**: 生成数值序列。
- **`enumerate()`**: 同时获取索引和值。
- **`zip()`**: 同时遍历多个序列。

### 2.2 `while` 循环
```python
while count < 5:
    print(count)
    count += 1
```

### 2.3 循环控制 (Control)
- **`break`**: 立即退出当前循环。
- **`continue`**: 跳过本次循环，进入下一次迭代。
- **`pass`**: 空语句，用于占位。

### 2.4 `for-else` / `while-else` (独特特性)
如果循环正常执行结束 (没有被 `break` 触发)，则执行 `else` 代码块。
```python
for item in items:
    if item == target:
        break
else:
    print("Target not found")
```

---
### 更新日志 (Changelog)
- 2026-04-05: 细化控制流，引入 Match-Case 与 For-Else 特性。
