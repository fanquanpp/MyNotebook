# 01-核心概念与语法 (C++)

## 1. 核心概念
C++ 的核心优势在于其高性能和对硬件的直接访问能力，同时提供了丰富的高层抽象（OOP、泛型）。

## 2. 语法基础
### 2.1 数据类型
| 类型 | 描述 | 示例 |
| :--- | :--- | :--- |
| `int` | 整数 | `int x = 10;` |
| `double` | 浮点数 | `double y = 3.14;` |
| `char` | 字符 | `char c = 'A';` |
| `bool` | 布尔值 | `bool is_valid = true;` |
| `string` | 字符串 | `std::string s = "C++";` |

### 2.2 流程控制
```cpp
if (x > 0) {
    // 逻辑
} else if (x < 0) {
    // 逻辑
} else {
    // 逻辑
}

for (int i = 0; i < 10; ++i) {
    // 循环
}
```

## 3. 面向对象编程 (OOP)
### 3.1 类与对象
```cpp
class MyClass {
public:
    int id;
    void print() { std::cout << "ID: " << id << std::endl; }
};

MyClass obj;
obj.id = 1;
obj.print();
```

## 4. 泛型编程 (Templates)
```cpp
template <typename T>
T add(T a, T b) {
    return a + b;
}
```

## 5. 最佳实践
- **资源管理**: 遵循 RAII (Resource Acquisition Is Initialization) 模式。
- **智能指针**: 优先使用 `std::unique_ptr` 和 `std::shared_ptr` 而不是原始指针。
- **现代 C++**: 尽可能使用 C++11/14/17/20 新特性（如 `auto`, `nullptr`, 范围 `for` 循环）。

## 6. 延伸阅读
- [CS-Books (C++ 部分)](https://github.com/forthespada/CS-Books)
- [CppPrimerPlus](https://github.com/ShujiaHuang/Cpp-Primer-Plus-6th)

## 7. 更新日志
- **2026-04-05**: 初始化核心概念、语法、OOP 及泛型。
