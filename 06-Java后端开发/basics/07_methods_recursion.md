# 方法详解 (Methods In-depth)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 方法定义、参数传递、重载、递归及可变参数。 | Method definitions, parameter passing, overloading, recursion, and variadic arguments.

## 1. 方法基本语法 (Basic Syntax)
方法是执行特定任务的命名代码块。

### 1.1 定义 (Definition)
```java
/*
 * 修饰符 返回值类型 方法名(参数列表) {
 *     // 方法体
 *     return 返回值;
 * }
 */
public int add(int a, int b) {
    return a + b;
}
```

### 1.2 调用 (Invocation)
- **非静态方法**: 必须通过对象实例调用。
- **静态方法 (`static`)**: 通过类名直接调用 (如 `Math.abs(-10)`)。

## 2. 参数传递 (Parameter Passing)
Java 中**只有值传递 (Pass by Value)**。
- **基本类型**: 传递值的副本，修改形参不影响实参。
- **引用类型**: 传递地址的副本，修改形参指向的对象属性**会影响**原对象，但修改形参本身指向新对象**不会影响**原引用。

## 3. 方法重载 (Overloading)
在同一个类中，方法名相同，但**参数列表不同** (个数、类型、顺序)。
- **注意**: 返回值类型和修饰符不作为重载依据。

```java
public int add(int a, int b) { return a + b; }
public double add(double a, double b) { return a + b; }
```

## 4. 递归 (Recursion)
方法调用自身。
- **基准情况 (Base Case)**: 防止死循环。
- **递归步 (Recursive Step)**: 趋向基准情况。
```java
// 计算 n 的阶乘
public int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}
```

## 5. 可变参数 (Variadic Arguments)
使用 `...` (Java 5 引入)，本质是数组。
- **注意**: 必须是最后一个参数，且每个方法只能有一个。
```java
public void printAll(String... names) {
    for (String name : names) {
        System.out.println(name);
    }
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化方法重载与递归细节。
