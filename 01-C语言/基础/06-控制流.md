# 控制流 (Control Flow)

> @Author: Anonymous
> @Category: C Basics
> @Description: 条件判断、循环结构及其控制语句。 | Conditional branches, loop structures, and control statements.

## 1. 条件判断 (Selection)

### 1.1 `if-else` 结构
最基本的逻辑控制。
```c
if (score >= 90) {
    printf("Excellent\n");
} else if (score >= 60) {
    printf("Pass\n");
} else {
    printf("Fail\n");
}
```

### 1.2 `switch-case` 结构
多分支选择。
- **注意**: `case` 后必须跟常量表达式。
- **注意**: 必须有 `break` 才能防止“穿透” (Fall-through)。
```c
switch (grade) {
    case 'A':
        printf("Great!\n");
        break;
    case 'B':
        printf("Good!\n");
        break;
    default:
        printf("Unknown grade\n");
}
```

## 2. 循环结构 (Iteration)

### 2.1 `for` 循环
常用于已知次数的循环。
```c
for (int i = 0; i < 10; i++) {
    printf("%d ", i);
}
```

### 2.2 `while` 循环
常用于次数不确定的循环。
```c
int i = 0;
while (i < 10) {
    printf("%d ", i++);
}
```

### 2.3 `do-while` 循环
保证至少执行一次循环体。
```c
int i = 10;
do {
    printf("Execute once\n");
} while (i < 5);
```

## 3. 循环控制 (Control Statements)
- **`break`**: 立即退出当前循环。
- **`continue`**: 跳过本次循环剩余部分，进入下一次迭代。
- **`goto`**: 无条件跳转（不建议使用，除非用于跳出多层嵌套循环）。

## 4. 最佳实践 (Best Practices)
- 尽量缩小循环中定义的变量作用域（C99 开始支持 `for(int i = 0; ...)`）。
- 避免过深的嵌套，考虑重构为函数。
- 确保循环条件最终能达到 False，防止死循环。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分控制流详解。
