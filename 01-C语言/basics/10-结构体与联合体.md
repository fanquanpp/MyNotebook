# 结构体与联合体 (Structures & Unions)

> @Author: Anonymous
> @Category: C Basics
> @Description: 结构体定义、内存对齐、联合体应用及枚举类型。 | Structures, memory alignment, union applications, and enum types.

## 1. 结构体 (Structures)
将不同类型的数据打包在一起。

### 1.1 定义与使用 (Definition & Usage)
```c
struct Person {
    char name[50];
    int age;
};

struct Person p1 = {"Alice", 25};
printf("Name: %s\n", p1.name);

// 指针访问使用 ->
struct Person *ptr = &p1;
printf("Age: %d\n", ptr->age);
```

### 1.2 内存对齐 (Memory Alignment)
编译器为了提高存取效率，会按字长对齐内存，可能导致 `sizeof` 大于成员大小之和。
```c
struct Example {
    char c; // 1 byte
    // 3 bytes padding
    int i; // 4 bytes
};
// sizeof(struct Example) 通常为 8，而非 5。
```

### 1.3 嵌套结构体 (Nested Structures)
结构体成员可以是另一个结构体。

## 2. 联合体 (Unions)
所有成员共享同一块内存，大小等于最大成员。
- **用途**: 节省空间，或用于同一数据不同视角的解释。
```c
union Data {
    int i;
    float f;
    char str[20];
};
```

## 3. 枚举 (Enums)
一组命名的整数常量。
```c
enum Color { RED, GREEN, BLUE }; // 默认 0, 1, 2
enum Color my_color = RED;
```

## 4. `typedef` 别名 (Type Definitions)
为复杂类型定义简单的别名。
```c
typedef struct Person Student;
Student s1;
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化结构体知识。
