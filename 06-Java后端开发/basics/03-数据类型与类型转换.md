# 数据类型与类型转换 (Data Types & Type Conversion)

> @Author: Anonymous
> @Category: Java Basics
> @Description: Java 基本类型、引用类型及类型转换的底层机制。 | Java primitive, reference types, and conversion mechanisms.

## 1. 数据类型分类 (Classification)
Java 是强类型语言，数据类型分为两类：
1. **基本数据类型 (Primitive Types)**: 存放在栈中。
2. **引用数据类型 (Reference Types)**: 类、接口、数组。存放在堆中，栈中存其引用（地址）。

## 2. 基本数据类型 (8 种)

| 类别 (Category) | 类型 (Type) | 占用字节 (Bytes) | 默认值 (Default) | 取值范围 (Range) |
|---|---|---|---|---|
| **整数** | `byte` | 1 | 0 | -128 ~ 127 |
| | `short` | 2 | 0 | -32,768 ~ 32,767 |
| | `int` | 4 | 0 | -2^31 ~ 2^31-1 (约 21亿) |
| | `long` | 8 | 0L | -2^63 ~ 2^63-1 |
| **浮点数** | `float` | 4 | 0.0f | 单精度 (加 F) |
| | `double` | 8 | 0.0d | 双精度 (默认) |
| **字符** | `char` | 2 | '\u0000' | Unicode 字符 |
| **布尔** | `boolean` | 1 (依赖 JVM) | false | true / false |

## 3. 类型转换 (Type Conversion)

### 3.1 自动类型转换 (Implicit)
**规则**: 小容量类型向大容量类型自动提升。
- **路径**: `byte` → `short` → `int` → `long` → `float` → `double`
- **注意**: `char` 也可以自动转为 `int` (对应 ASCII/Unicode 码)。

### 3.2 强制类型转换 (Explicit)
**规则**: 大容量向小容量转换，必须手动强制。可能导致**数据溢出**或**精度丢失**。
- **语法**: `(目标类型) 表达式`

```java
double pi = 3.14159;
int num = (int) pi; // 结果为 3 (精度丢失)

int i = 130;
byte b = (byte) i; // 结果为 -126 (数据溢出)
```

## 4. 特殊注意事项
1. **整数默认 `int`**: 若要声明 `long` 类型，数值后需加 `L`。
2. **浮点数默认 `double`**: 若要声明 `float` 类型，数值后需加 `F`。
3. **运算提升**: 在运算中，`byte`, `short`, `char` 会先提升为 `int` 再计算。
4. **字符串拼接**: 使用 `+` 运算符时，若有一方为字符串，则整体变为字符串连接。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 Java 数据类型与转换细节。
