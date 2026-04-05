# 程序结构与基本语法 (Program Structure & Basic Syntax)

> @Author: Anonymous
> @Category: C Basics
> @Description: C 程序的组成部分、注释规范、标识符规则及关键字。 | Components of C programs, comments, identifiers, and keywords.

## 1. 程序结构 (Program Structure)
一个典型的 C 语言源文件 (`.c`) 通常包含以下部分：

```c
/*
 * 预处理器指令：包含头文件
 * Preprocessor Directives: Include headers
 */
#include <stdio.h>

/*
 * 宏定义与常量
 * Macros and Constants
 */
#define PI 3.14159

/*
 * 全局变量声明
 * Global Variables
 */
int global_count = 0;

/*
 * 函数原型声明
 * Function Prototypes
 */
void print_hello();

/*
 * 主函数：程序的入口
 * Main Function: Entry point
 */
int main() {
    // 局部变量 | Local Variables
    int local_val = 10;
    
    // 执行语句 | Statements
    printf("Hello C! Value: %d\n", local_val);
    print_hello();
    
    // 返回值 | Return value (0 means success)
    return 0;
}

/*
 * 函数实现
 * Function Implementation
 */
void print_hello() {
    printf("Hello from function!\n");
}
```

## 2. 注释规范 (Comments)
- **单行注释**: 使用 `//` (C99+ 支持)。
- **多行注释**: 使用 `/* ... */`。
- **文档注释**: 虽然 C 语言本身没有内置文档工具，但通常采用类似 Doxygen 的格式。

## 3. 标识符 (Identifiers)
用于命名变量、函数、数组等。
- **规则**:
  - 只能由字母 (A-Z, a-z)、数字 (0-9) 和下划线 (_) 组成。
  - 第一个字符必须是字母或下划线。
  - 区分大小写 (`myVar` 和 `myvar` 是不同的)。
  - 不能使用关键字。
- **最佳实践**: 变量名使用 `snake_case` (如 `user_age`) 或 `camelCase` (如 `userAge`)。

## 4. 关键字 (Keywords)
C 语言共有 32 个基本关键字 (C89/90)，后续标准 (C99, C11) 有所增加。
- **常用分类**:
  - 类型: `int`, `char`, `float`, `double`, `void`, `long`, `short`, `signed`, `unsigned`
  - 控制流: `if`, `else`, `switch`, `case`, `default`, `for`, `while`, `do`, `break`, `continue`, `return`, `goto`
  - 存储类: `auto`, `register`, `static`, `extern`, `const`, `volatile`
  - 复合类型: `struct`, `union`, `enum`, `typedef`
  - 运算符相关: `sizeof`

## 5. 编译过程 (Compilation Process)
1. **预处理 (Preprocessing)**: 处理 `#include` 和 `#define`。
2. **编译 (Compilation)**: 将源代码转换为汇编代码。
3. **汇编 (Assembly)**: 将汇编代码转换为机器码（目标文件 `.o` / `.obj`）。
4. **链接 (Linking)**: 将目标文件与库文件合并，生成可执行文件。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化基础语法。
