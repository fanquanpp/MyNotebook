# 面向对象编程 (OOP Concepts)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 类与对象、封装、继承、多态等核心面向对象概念。 | Core OOP concepts: Class, Object, Encapsulation, Inheritance, Polymorphism.

## 1. 类与对象 (Class & Object)
- **类 (Class)**: 模板、蓝图。定义了属性 (Fields) 和行为 (Methods)。
- **对象 (Object)**: 实例。类的具体化。

```java
public class Student {
    String name; // 属性
    public void study() { ... } // 行为
}
// 实例化
Student s = new Student();
```

## 2. 封装 (Encapsulation)
**核心思想**: 隐藏内部实现，仅暴露公共接口。
- **修饰符 (Access Modifiers)**:
  - `private`: 仅类内访问。
  - `(default)`: 包内访问。
  - `protected`: 包内及子类访问。
  - `public`: 任意位置访问。
- **Getter/Setter**: 保护字段并进行逻辑控制。

## 3. 继承 (Inheritance)
使用 `extends` 关键字。
- **单继承**: 一个类只能直接继承一个父类。
- **`super`**: 访问父类的成员或构造器。
- **方法重写 (`@Override`)**: 子类实现与父类同名、同参的方法。

## 4. 多态 (Polymorphism)
**定义**: 同一行为在不同对象上有不同表现。
- **必要条件**:
  1. 继承。
  2. 方法重写。
  3. **父类引用指向子类对象** (`Animal a = new Dog();`)。
- **编译看左边，运行看右边**: 编译时检查父类是否有该方法，运行时执行子类重写的方法。

## 5. `this` 关键字
- 指向当前对象。
- 用于区分同名的局部变量与成员变量。
- 调用本类其他构造器 (`this(...)`)。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 Java 面向对象三大特性。
