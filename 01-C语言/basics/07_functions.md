# 函数详解 (Functions In-depth)

> @Author: Anonymous
> @Category: C Basics
> @Description: 函数定义、参数传递、作用域、递归及函数指针。 | Function definitions, parameter passing, scope, recursion, and function pointers.

## 1. 函数基本语法 (Basic Syntax)
函数是 C 语言中模块化的核心。

### 1.1 定义与声明 (Definition & Declaration)
- **声明 (Prototype)**: 告诉编译器函数的名称、返回类型和参数。
- **定义 (Definition)**: 实现具体的函数体逻辑。

```c
// 声明
int add(int, int);

// 实现
int add(int a, int b) {
    return a + b;
}
```

### 1.2 参数传递 (Parameter Passing)
- **传值调用 (Pass by Value)**: 复制实参的值，修改形参不影响实参。
- **传址调用 (Pass by Address)**: 传递地址（通过指针），可以在函数内修改实参。

## 2. 递归 (Recursion)
函数直接或间接地调用自身。
- **必要条件**:
  - **基准情况 (Base Case)**: 停止递归的条件。
  - **递归步 (Recursive Step)**: 趋向基准情况。

```c
// 计算阶乘
long factorial(int n) {
    if (n <= 1) return 1; // 基准情况
    return n * factorial(n - 1); // 递归调用
}
```

## 3. 作用域与存储类 (Scope & Storage)
- **局部变量**: 函数内部定义。
- **静态局部变量 (`static`)**: 变量生命周期延续到程序结束，但仅限该函数访问。
- **内联函数 (`inline`)**: 建议编译器将函数体直接嵌入调用处，减少函数调用开销。

## 4. 函数指针 (Function Pointers)
C 语言最强大的特性之一。
```c
// 定义指向返回 int, 参数为两个 int 的函数的指针
int (*ptr)(int, int) = add;

// 通过指针调用函数
int result = ptr(10, 20);
```

## 5. 可变参数函数 (Variadic Functions)
如 `printf`，使用 `<stdarg.h>` 实现。
```c
#include <stdarg.h>
double average(int num, ...) {
    va_list valist;
    double sum = 0.0;
    va_start(valist, num);
    for (int i = 0; i < num; i++) {
        sum += va_arg(valist, int);
    }
    va_end(valist);
    return sum / num;
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化函数知识。
