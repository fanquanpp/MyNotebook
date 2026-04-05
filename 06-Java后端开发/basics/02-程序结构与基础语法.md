# 程序结构与基本语法 (Program Structure & Basic Syntax)

> @Author: Anonymous
> @Category: Java Basics
> @Description: Java 程序的组成、注释规范、标识符命名及键盘录入。 | Components of Java programs, comments, naming conventions, and Scanner.

## 1. 程序结构 (Program Structure)
一个典型的 Java 源文件包含：

```java
/*
 * 导包 (Package & Imports)
 */
package com.example;
import java.util.Scanner;

/*
 * 类定义 (Class Definition)
 * 注意：public 类名必须与文件名完全一致。
 */
public class HelloWorld {
    
    /*
     * 主方法 (Main Method)
     * 程序的入口点。
     */
    public static void main(String[] args) {
        // 执行语句 | Statements
        System.out.println("Hello, Java!");
    }
}
```

## 2. 注释规范 (Comments)
- **单行注释**: `// 内容`
- **多行注释**: `/* 内容 */`
- **文档注释 (Javadoc)**: `/** 内容 */`
  - 常用标签: `@author`, `@param`, `@return`, `@throws`, `@version`。

## 3. 标识符 (Identifiers)
用于命名类、方法、变量等。
- **规则 (强制)**:
  - 字母、数字、下划线 (_)、美元符号 ($) 组成。
  - **不能以数字开头**。
  - 不能使用 Java 关键字。
  - 区分大小写。
- **规范 (约定)**:
  - **类名/接口名**: 大驼峰命名法 (`MyClass`, `StudentInfo`)。
  - **方法名/变量名**: 小驼峰命名法 (`getUserName`, `ageCount`)。
  - **包名**: 全小写，点分隔 (`com.google.util`)。
  - **常量名**: 全大写，下划线分隔 (`MAX_VALUE`)。

## 4. 关键字 (Keywords)
Java 的 50+ 个保留字，具有特殊含义。
- **常见**: `public`, `private`, `class`, `static`, `void`, `if`, `else`, `for`, `while`, `return`, `new`, `this`, `super`, `extends`, `implements`, `try`, `catch` 等。

## 5. 键盘录入 (Scanner)
`java.util.Scanner` 是获取控制台输入的常用类。

```java
import java.util.Scanner;

public class InputTest {
    public static void main(String[] args) {
        // 1. 创建对象
        Scanner sc = new Scanner(System.in);
        
        // 2. 获取不同类型数据
        System.out.print("Enter integer: ");
        int num = sc.nextInt();
        
        System.out.print("Enter string: ");
        String name = sc.next(); // 遇到空格停止
        // String line = sc.nextLine(); // 读取整行
        
        System.out.println("Name: " + name + ", Num: " + num);
        
        // 3. 关闭资源
        sc.close();
    }
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 Java 基础语法知识点。
