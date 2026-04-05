# 异常处理 (Error & Exception Handling)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 异常体系结构、Try-Except-Finally 捕获及自定义异常。 | Exception hierarchy, try-except-finally, and custom exceptions.

## 1. 异常体系 (Exception Hierarchy)
Python 中所有异常都派生自 `BaseException`。
- **`SystemExit`**, **`KeyboardInterrupt`**: 关键异常。
- **`Exception`**: 应用程序可捕获的顶级父类。
  - **`TypeError`**: 类型错误。
  - **`ValueError`**: 值错误。
  - **`IndexError`**: 索引越界。
  - **`KeyError`**: 字典键不存在。
  - **`FileNotFoundError`**: 文件未找到。

## 2. 捕获处理 (Try-Except)
```python
try:
    res = 10 / 0
except ZeroDivisionError as e:
    # 捕获特定异常
    print(f"Error: {e}")
except (TypeError, ValueError):
    # 捕获多种异常
    pass
else:
    # 无异常时执行
    print("Success")
finally:
    # 无论是否有异常都执行
    print("Cleanup")
```

## 3. 抛出异常 (Raise)
```python
if age < 0:
    raise ValueError("Age cannot be negative")
```

## 4. 断言 (Assert)
用于调试和内部检查。
```python
assert score >= 0, "Score must be non-negative"
```

## 5. 自定义异常 (Custom Exception)
继承 `Exception` 类。
```python
class MyBusinessError(Exception):
    def __init__(self, msg, code):
        super().__init__(msg)
        self.code = code
```

---
### 更新日志 (Changelog)
- 2026-04-05: 补充异常体系与自定义异常细节。
