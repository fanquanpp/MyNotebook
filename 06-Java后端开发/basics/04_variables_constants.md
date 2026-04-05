# 变量与常量 (Variables & Constants)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 变量定义、生命周期、作用域、存储类及常量。 | Definitions, lifecycle, scope of variables, and constants.

## 1. 变量 (Variables)
变量是内存中存储数据的容器，其值可以在运行期间改变。

### 1.1 定义与初始化 (Definition & Initialization)
```java
// 声明
int age;
// 赋值
age = 18;
// 声明并初始化
double salary = 5000.50;
// 多个变量定义 (不建议在一行定义多个不同含义的变量)
int x, y = 5, z;
```

### 1.2 变量的作用域 (Scope)
根据定义位置的不同，Java 变量可分为：
1. **局部变量 (Local Variables)**: 定义在方法、构造器或块 `{}` 内部。
   - 必须**初始化后**才能使用。
   - 生命周期：从定义处到所在块结束。
2. **成员变量 (Instance Variables)**: 定义在类中，方法之外。
   - 有默认初始值 (如 `int` 为 0, `boolean` 为 `false`, 对象为 `null`)。
   - 生命周期：随对象的创建而存在，随对象的销毁而消失。
3. **静态变量 (Class Variables / Static)**: 使用 `static` 修饰，在类中定义。
   - 生命周期：随类的加载而存在，所有对象共享。

## 2. 常量 (Constants)
常量是指在程序运行期间其值不可更改的量。

### 2.1 字面常量 (Literals)
- **整数**: `100`, `123L` (long)
- **浮点**: `3.14`, `3.14F` (float)
- **字符**: `'A'`, `'\n'` (转义)
- **字符串**: `"Hello Java"`
- **布尔**: `true`, `false`
- **空**: `null`

### 2.2 `final` 常量
使用 `final` 关键字修饰。一旦赋值，不可修改。
- **命名规范**: 全大写，单词间下划线分隔。
```java
public static final double PI = 3.1415926535;
final int MAX_ATTEMPTS = 3;
```

## 3. `var` 类型推断 (Local Variable Type Inference)
Java 10 引入，仅限**局部变量**且必须**声明时初始化**。
```java
var name = "Java 17"; // 自动推断为 String
var count = 10;       // 自动推断为 int
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分变量作用域与常量详解。
