# 变量与常量 (Variables & Constants)

> @Author: Anonymous
> @Category: C Basics
> @Description: 变量的定义、生命周期、作用域以及常量的多种实现方式。 | Definitions, lifecycle, scope of variables, and ways to define constants.

## 1. 变量 (Variables)
变量是存储数据的具名内存空间。

### 1.1 定义与初始化 (Definition & Initialization)
```c
int a;          // 声明
a = 10;         // 赋值
int b = 20;     // 声明并初始化
int x, y = 5;   // y 被初始化，x 未定义 (初值随机)
```

### 1.2 变量的作用域 (Scope)
- **局部变量 (Local)**: 定义在函数或块 `{}` 内部，仅在内部有效。
- **全局变量 (Global)**: 定义在所有函数之外，整个程序生命周期内有效。
- **形式参数 (Formal Parameters)**: 函数定义中的变量。

### 1.3 存储类 (Storage Classes)
- **`auto`**: 默认存储类，局部变量。
- **`static`**: 
  - **局部静态**: 函数退出后不销毁，保留原值。
  - **全局静态**: 仅限当前文件访问（隐藏）。
- **`extern`**: 引用在其他文件中定义的全局变量。
- **`register`**: 建议编译器将变量存入 CPU 寄存器（仅限局部变量，已逐渐由编译器自动处理）。

## 2. 常量 (Constants)
常量是在程序运行期间其值不可更改的量。

### 2.1 字面常量 (Literals)
- **整数**: `100`, `0x1F` (16进制), `010` (8进制)。
- **浮点**: `3.14`, `2.5e-3`。
- **字符**: `'A'`, `'\n'` (转义字符)。
- **字符串**: `"Hello C"`。

### 2.2 宏定义常量 (#define)
预处理器指令，不占用内存，只是文本替换。
```c
#define MAX_BUFFER 1024
```

### 2.3 `const` 常量
占用内存，具有类型检查。
```c
const int DAYS_IN_WEEK = 7;
```

### 2.4 枚举常量 (enum)
为一组相关的整数常量定义名称。
```c
enum Days { SUN, MON, TUE, WED, THU, FRI, SAT };
```

## 3. 左值与右值 (L-values & R-values)
- **左值 (L-value)**: 指向内存位置的表达式（可位于等号左侧）。
- **右值 (R-value)**: 存储在内存中某些地址的数值（不能位于等号左侧）。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分变量与常量详解。
