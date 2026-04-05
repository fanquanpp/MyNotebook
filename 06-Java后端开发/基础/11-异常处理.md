# 异常处理机制 (Exception Handling)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 异常体系结构、捕获处理、抛出异常及自定义异常。 | Exception hierarchy, try-catch-finally, throw/throws, and custom exceptions.

## 1. 异常体系 (Exception Hierarchy)
Java 中的异常顶级父类是 `Throwable`。
- **`Error`**: 严重错误 (如 `StackOverflowError`, `OutOfMemoryError`)，无法恢复。
- **`Exception`**: 应用程序可捕获并处理的异常。
  - **检查型异常 (Checked Exception)**: 编译时强制要求处理 (如 `IOException`)。
  - **运行时异常 (Runtime / Unchecked)**: 逻辑错误，不强制要求捕获 (如 `NullPointerException`, `ArithmeticException`)。

## 2. 异常处理 (Try-Catch-Finally)
```java
try {
    // 可能出错的代码
} catch (ArithmeticException e) {
    // 捕获特定异常
} catch (Exception e) {
    // 捕获所有异常
    e.printStackTrace();
} finally {
    // 无论是否出错，都会执行 (通常用于资源关闭)
}
```

## 3. 抛出异常 (Throw & Throws)
- **`throw`**: 在方法体内抛出一个具体的异常对象。
- **`throws`**: 在方法签名处声明该方法可能抛出的异常类型。
```java
public void readFile(String path) throws IOException {
    if (path == null) throw new NullPointerException("Path cannot be null");
}
```

## 4. 自定义异常 (Custom Exception)
继承 `Exception` (检查型) 或 `RuntimeException` (非检查型)。
```java
public class MyBusinessException extends Exception {
    public MyBusinessException(String message) {
        super(message);
    }
}
```

## 5. Try-with-resources (Java 7+)
自动管理实现了 `AutoCloseable` 接口的资源。
```java
try (BufferedReader br = new BufferedReader(new FileReader(path))) {
    // 使用资源
} // 自动关闭资源，无需 finally
```

---
### 更新日志 (Changelog)
- 2026-04-05: 补充 Try-with-resources 与异常处理最佳实践。
