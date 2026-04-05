# 数据类型详解 (Data Types In-depth)

> @Author: Anonymous
> @Category: C Basics
> @Description: C 语言的基本类型、派生类型、空类型及其内存布局。 | In-depth look at C's basic, derived, and void types, and memory layout.

## 1. 基本数据类型 (Basic Types)
C 语言的基础类型主要分为整型和浮点型。

| 类型 (Type) | 关键字 (Keyword) | 典型大小 (Typical Size) | 格式说明符 (Format Specifier) | 说明 (Notes) |
|---|---|---|---|---|
| 字符型 | `char` | 1 字节 | `%c` / `%d` | 通常用于存储 ASCII 字符。 |
| 短整型 | `short` | 2 字节 | `%hd` | 用于节省内存。 |
| 整型 | `int` | 4 字节 | `%d` | 现代 32/64 位系统中最常用的整型。 |
| 长整型 | `long` | 4 或 8 字节 | `%ld` | 范围大于 `int`。 |
| 超长整型 | `long long` | 8 字节 | `%lld` | C99 引入，保证至少 64 位。 |
| 单精度浮点 | `float` | 4 字节 | `%f` | 精确到 6-7 位有效数字。 |
| 双精度浮点 | `double` | 8 字节 | `%lf` | 精确到 15-16 位有效数字，默认类型。 |

## 2. 修饰符 (Type Modifiers)
- **`signed`**: 有符号数（默认），支持正负。
- **`unsigned`**: 无符号数，仅支持 0 和正数，正数范围翻倍。
- **`const`**: 声明后不可修改的变量（只读）。
- **`volatile`**: 告诉编译器不要对该变量进行优化（常见于驱动开发或多线程）。

## 3. 内存大小与 `sizeof` (Memory & `sizeof`)
不同硬件架构（16位, 32位, 64位）下，数据类型的大小可能不同。可以使用 `sizeof` 运算符动态获取。

```c
#include <stdio.h>

int main() {
    printf("char size: %zu byte\n", sizeof(char));
    printf("int size: %zu bytes\n", sizeof(int));
    printf("long size: %zu bytes\n", sizeof(long));
    printf("double size: %zu bytes\n", sizeof(double));
    return 0;
}
```

## 4. 派生数据类型 (Derived Types)
- **数组 (Arrays)**: 相同类型数据的有序集合。
- **指针 (Pointers)**: 存储内存地址的变量。
- **结构体 (Structures)**: 不同类型数据的组合（用户定义）。
- **联合体 (Unions)**: 共用同一块内存的不同类型组合。
- **枚举 (Enumerations)**: 为整数常量定义有意义的名称。

## 5. 空类型 (Void Type)
- **`void`**: 表示“无类型”。
- **用途**:
  - 指定函数的返回类型（无返回值）。
  - 指定函数的参数列表（无参数）。
  - 声明通用指针 `void *`（可以指向任何类型）。

## 6. 类型转换 (Type Conversion)
- **隐式转换 (Implicit)**: 编译器自动完成（从小到大，如 `int` 转 `double`）。
- **显式转换 (Explicit / Casting)**: 手动转换（可能导致数据丢失）。
  ```c
  double pi = 3.14;
  int rounded_pi = (int)pi; // 结果为 3
  ```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化数据类型知识。
