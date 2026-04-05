# 抽象类与接口 (Abstract Classes & Interfaces)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 抽象类、接口定义、默认方法、静态方法及二者对比。 | Abstract classes, interfaces, default methods, static methods, and comparison.

## 1. 抽象类 (Abstract Class)
使用 `abstract` 修饰。
- **特点**:
  - 不能实例化 (`new`)。
  - 可以包含抽象方法 (无方法体) 和普通方法。
  - 可以有构造器 (供子类调用)。
  - 子类必须实现所有抽象方法，否则子类也必须是抽象类。

## 2. 接口 (Interface)
使用 `interface` 定义。
- **核心**: 是一组行为的规范 (协议)。
- **成员规则**:
  - **属性**: 默认 `public static final`。
  - **方法**: 默认 `public abstract` (Java 8 前)。
- **Java 8+ 新增**:
  - **默认方法 (`default`)**: 允许在接口中提供默认实现。
  - **静态方法 (`static`)**: 允许在接口中定义工具方法。
- **Java 9+ 新增**:
  - **私有方法 (`private`)**: 供接口内部使用。

## 3. 实现与继承 (Implementation & Inheritance)
- 类只能**单继承**类 (`extends`)。
- 类可以**多实现**接口 (`implements`)。
- 接口可以**多继承**接口 (`extends`)。

## 4. 抽象类 vs. 接口 (Comparison)

| 特性 | 抽象类 (Abstract Class) | 接口 (Interface) |
|---|---|---|
| **关键字** | `abstract class` | `interface` |
| **关系** | "is-a" (本质) | "like-a" / "has-a" (能力) |
| **继承/实现** | 单继承 | 多实现 |
| **变量** | 任意访问修饰符 | 仅 `public static final` |
| **构造器** | 有 | 无 |
| **方法** | 抽象或具体 | 抽象, 默认, 静态, 私有 |

---
### 更新日志 (Changelog)
- 2026-04-05: 补充 Java 8+ 接口新特性与二者详细对比。
