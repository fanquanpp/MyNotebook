# 接口与类型别名 (Interfaces vs. Type Aliases)

> @Author: Anonymous
> @Category: TS Advanced
> @Description: 接口定义、只读/可选属性、接口继承及与 Type 的对比。 | Interface, Readonly, Optional, Inheritance, and Type comparison.

## 1. 接口 (Interface)
用于定义对象的结构。
```typescript
interface User {
  readonly id: number; // 只读
  name: string;
  age?: number; // 可选
  sayHi(): void;
}
```

## 2. 接口继承 (Inheritance)
接口可以相互继承，实现复用。
```typescript
interface Admin extends User {
  role: string;
}
```

## 3. 接口 vs. 类型别名 (Interface vs. Type)
| 特性 | Interface | Type Alias |
|---|---|---|
| **定义范围** | 仅限对象/函数结构 | 任意类型 (原始、联合等) |
| **合并** | 支持声明合并 (Declaration Merging) | 不支持 |
| **扩展方式** | `extends` | 交叉类型 `&` |
| **计算属性** | 不支持 | 支持 |

**建议**: 优先使用 `interface` 定义对象结构，需要联合类型或元组时使用 `type`。

## 4. 任意属性 (Index Signatures)
```typescript
interface AnyObj {
  [key: string]: any;
}
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入对比 Interface 与 Type。
