# C++ 基础语法与类型系统 (C++ Basics & Type System)

> @Author: Anonymous
> @Category: C++ Basics
> @Description: C++ 基础数据类型、控制流、输入输出及作用域。 | C++ primitive types, control flow, I/O, and scope.

## 1. 数据类型 (Data Types)
C++ 具有丰富的类型系统，分为基本类型和复合类型。

| 类型 | 描述 | 示例 |
|---|---|---|
| `int` | 整数 | `int x = 10;` |
| `double` | 浮点数 | `double y = 3.14;` |
| `char` | 字符 | `char c = 'A';` |
| `bool` | 布尔值 | `bool is_valid = true;` |
| `std::string` | 字符串 | `std::string s = "Hello C++";` |
| `void` | 空类型 | 用于函数返回或通用指针 |

### 1.1 类型修饰符
- `signed`, `unsigned`, `short`, `long`, `const`, `volatile`。

## 2. 控制流 (Control Flow)
### 2.1 条件判断
```cpp
if (condition) { ... }
else if (other) { ... }
else { ... }

switch (val) {
    case 1: ...; break;
    default: ...;
}
```

### 2.2 循环结构
- `for`, `while`, `do...while`。
- **范围 for (C++11)**:
  ```cpp
  std::vector<int> nums = {1, 2, 3};
  for (int n : nums) { std::cout << n; }
  ```

## 3. 输入输出 (I/O)
使用 `<iostream>` 库。
- `std::cout`: 标准输出。
- `std::cin`: 标准输入。
- `std::endl`: 换行并刷新缓冲区。

## 4. 命名空间 (Namespace)
用于防止命名冲突。
- `using namespace std;` (不建议在头文件中使用)。
- 推荐使用显式作用域: `std::cout`。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 C++ 基础语法。
