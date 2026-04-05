# 控制流 (Control Flow)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 条件分支、循环结构、跳转语句及 Java 12+ 新特性。 | Conditional branches, loops, jumps, and Java 12+ Switch features.

## 1. 条件分支 (Selection)

### 1.1 `if-else`
```java
if (score >= 90) {
    System.out.println("A");
} else if (score >= 60) {
    System.out.println("B");
} else {
    System.out.println("C");
}
```

### 1.2 `switch` 结构
- **旧式**: 必须带 `break`。
```java
switch (day) {
    case 1: System.out.println("Mon"); break;
    case 2: System.out.println("Tue"); break;
    default: System.out.println("Unknown");
}
```
- **Java 12+ 表达式**: 使用 `->` (无需 `break`)。
```java
String result = switch (day) {
    case 1 -> "Mon";
    case 2 -> "Tue";
    default -> "Unknown";
};
```

## 2. 循环结构 (Iteration)

### 2.1 `for` 循环
- **标准**: `for(int i = 0; i < n; i++)`
- **增强型 (for-each)**: 用于遍历数组或集合。
```java
int[] nums = {1, 2, 3};
for (int n : nums) {
    System.out.println(n);
}
```

### 2.2 `while` 与 `do-while`
- `while`: 先判断，后执行。
- `do-while`: 先执行，后判断 (保证至少执行一次)。

## 3. 跳转语句 (Jumps)
- **`break`**: 跳出当前循环。
- **`continue`**: 跳过本次迭代，进入下一次循环。
- **`return`**: 结束当前方法。
- **标签 (Labels)**: 可用于跳出多层嵌套循环 (慎用)。
```java
outer: for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
        if (j == 2) break outer;
    }
}
```

## 4. 最佳实践 (Best Practices)
- 尽量避免 `goto` (Java 中虽然是保留字但无实际功能，除标签跳转外)。
- `if-else` 嵌套不要超过 3 层，考虑使用卫语句 (Guard Clause) 或策略模式。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化控制流，引入 Java 12+ Switch 新特性。
