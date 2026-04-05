# 面向对象编程 (OOP In-depth)

> @Author: Anonymous
> @Category: C++ Basics
> @Description: 类与对象、封装、继承、多态及虚函数原理。 | Class, Object, Encapsulation, Inheritance, Polymorphism, and VTable.

## 1. 类与对象 (Class & Object)
```cpp
class Animal {
private:
    std::string name;
public:
    Animal(std::string n) : name(n) {} // 构造函数初始化列表
    virtual void makeSound() { std::cout << "Generic sound"; }
    virtual ~Animal() {} // 基类析构函数必须是虚函数
};
```

## 2. 封装 (Encapsulation)
- `public`: 外部可访问。
- `private`: 仅类内访问。
- `protected`: 类及派生类访问。

## 3. 继承 (Inheritance)
支持单继承和多继承。
- `class Dog : public Animal { ... };`

## 4. 多态 (Polymorphism)
通过**虚函数 (`virtual`)** 实现。
- **静态多态**: 函数重载、模板。
- **动态多态**: 虚函数覆盖 (Override)。

## 5. 虚函数表 (VTable)
- 每个包含虚函数的类都有一个 VTable。
- 实例包含一个 `vptr` 指向 VTable，实现运行时绑定。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 C++ 面向对象核心概念。
