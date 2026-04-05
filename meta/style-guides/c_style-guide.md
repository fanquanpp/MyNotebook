# C Style Guide | C 开发规范

## 1. 命名规范
- **变量、函数、文件名**: 统一使用 `lower_case_with_underscore`。
- **宏、常量**: 统一使用 `UPPER_SNAKE_CASE`。
- **类型 (typedef)**: 统一使用 `snake_case_t` 后缀。
- **禁止**: 禁止使用拼音，禁止使用单字母变量名（除了 `i, j, k` 用于循环）。

## 2. 目录结构
采用 `domain/difficulty/scenario` 三级范式。
- 示例: `algorithms/basic/bubble_sort.c`

## 3. 模块化要求
- 每个 `.c` 文件必须有对应的 `.h` 文件（除了 `main.c`）。
- 单个文件不得超过 300 行。
- 接口必须在头文件中声明。

## 4. 注释模板
函数级注释：
```c
/**
 * 功能: 简述
 * 参数: param1 - 描述
 * 返回值: 描述
 * 时间复杂度: O(1)
 */
int add(int a, int b);
```

## 5. 异常与日志
- 检查所有系统调用的返回值。
- 错误信息输出到 `stderr`。
