# 类与装饰器 (Classes & Decorators)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: 类成员访问修饰符、抽象类、静态成员及装饰器原理。 | Access modifiers, Abstract classes, Statics, and Decorators.

## 1. 类成员修饰符 (Access Modifiers)
- **`public`**: 默认，任何位置访问。
- **`private`**: 仅类内访问。
- **`protected`**: 仅类及子类访问。
- **`readonly`**: 只读，仅在构造函数中初始化。

## 2. 构造函数简写
```typescript
class User {
  constructor(public name: string, private age: number) {}
}
// 相当于定义了属性并赋值。
```

## 3. 抽象类 (Abstract Classes)
作为基类，不能实例化，包含抽象方法。
```typescript
abstract class Shape {
  abstract getArea(): number;
}
```

## 4. 装饰器 (Decorators)
实验性特性 (需在 tsconfig 中开启 `experimentalDecorators`)。
- **作用**: 修改类、方法、属性、参数的行为。
- **原理**: 本质是一个函数。
```typescript
function Log(target: any, key: string) {
  console.log(`${key} called`);
}
class Service {
  @Log
  fetchData() { ... }
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 TS 装饰器与类访问控制。
