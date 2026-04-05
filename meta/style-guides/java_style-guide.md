# Java Style Guide | Java 开发规范

## 1. 命名规范
- **类名**: 统一使用 `PascalCase`。
- **变量、函数**: 统一使用 `camelCase`。
- **常量**: 统一使用 `UPPER_SNAKE_CASE`。
- **包名**: 统一使用 `lower.case.with.dot`。
- **禁止**: 禁止使用拼音，禁止缩写变量名。

## 2. 目录结构
采用 `domain/difficulty/scenario` 三级范式。
- 示例: `algorithms/basic/QuickSort.java`

## 3. 模块化要求
- 一个文件仅包含一个顶级公共类。
- 单个文件不得超过 300 行。
- 遵循 SOLID 原则。

## 4. 注释模板
JSDoc 风格：
```java
/**
 * 功能: 简述
 * @param a 参数a描述
 * @return 返回描述
 * @throws IllegalArgumentException 异常描述
 * 时间复杂度: O(n log n)
 */
public int sort(int[] a) { ... }
```

## 5. 异常与日志
- 统一使用 `log4j2` 或 `slf4j`。
- 异常信息记录到日志文件，禁止直接 `printStackTrace()`。
- 级别: ERROR/WARN/INFO/DEBUG，输出 JSON 格式。
