# 泛型详解 (Generics In-depth)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 泛型类、方法、类型擦除机制及通配符边界。 | Generic classes, methods, type erasure, and wildcards.

## 1. 泛型概述 (Overview)
Java 5 引入，提供编译时类型安全检查，避免强制类型转换。

## 2. 泛型类与方法 (Definition)
```java
// 泛型类
public class Box<T> {
    private T data;
    public T getData() { return data; }
}

// 泛型方法
public <E> void printArray(E[] arr) {
    for (E e : arr) System.out.println(e);
}
```

## 3. 类型擦除 (Type Erasure)
Java 泛型是**伪泛型**。
- 编译期间检查类型。
- 字节码中擦除泛型信息，替换为 `Object` (或限定类型)。
- **限制**: 运行时无法获取泛型类型 (`instanceof List<String>` 是非法的)。

## 4. 通配符与边界 (Wildcards)
- **`<?>`**: 无界通配符。
- **`<? extends T>` (上界)**: 必须是 `T` 或其子类。适用于**读取** (协变)。
- **`<? super T>` (下界)**: 必须是 `T` 或其父类。适用于**写入** (逆变)。
- **PECS 原则**: Producer Extends, Consumer Super。

## 5. 限制
1. 泛型类型不能是基本类型 (必须用包装类如 `Integer`)。
2. 不能创建泛型数组 (`new T[10]` 非法)。
3. 静态方法/变量不能引用泛型类型。

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化泛型擦除机制与通配符边界。
