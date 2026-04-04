---
url: "https://jkchao.github.io/typescript-book-chinese/typings/overview.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "Basics", "Syntax"]
---

<a id="title"></a>
# TypeScript 基础概念与语法

> fanquanpp 的个人学习笔记

创建时间：2026-04-05
最新更新时间：2026-04-05

<a id="1"></a>
## 1 引言

TypeScript 是 JavaScript 的超集，添加了静态类型系统和其他特性，使代码更加健壮和可维护。本笔记将详细介绍 TypeScript 的基础概念和语法规则。

<a id="2"></a>
## 2 目录

- [1. TypeScript 概述](#1-typescript 概述)
- [2. TypeScript 基本语法](#2-typescript 基本语法)
- [3. 数据类型](#3-数据类型)
- [4. 变量和常量](#4-变量和常量)
- [5. 接口](#5-接口)
- [6. 类](#6-类)
- [7. 函数](#7-函数)
- [8. 泛型](#8-泛型)
- [9. 模块](#9-模块)
- [10. 命名空间](#10-命名空间)
- [11. 高级类型](#11-高级类型)
- [12. 总结](#12-总结)
- [13. 参考资料](#13-参考资料)

<a id="3"></a>
## 3 . TypeScript 概述

TypeScript 是由 Microsoft 开发的开源编程语言，它是 JavaScript 的超集，添加了静态类型系统和其他特性，如：

- 静态类型检查
- 接口
- 类
- 泛型
- 模块
- 命名空间
- 高级类型

TypeScript 的主要优势包括：

- 提高代码的可维护性和可读性
- 减少运行时错误
- 提供更好的 IDE 支持（代码补全、类型检查等）
- 支持现代 JavaScript 特性
- 与 JavaScript 完全兼容

<a id="4"></a>
## 4 . TypeScript 基本语法

<a id="4.1"></a>
### 4.1 程序结构

一个基本的 TypeScript 程序结构如下：

```typescript
// 导入模块
import { SomeModule } from './some-module';

// 类型定义
interface Person {
    name: string;
    age: number;
}

// 函数定义
function greet(person: Person): string {
    return `Hello, ${person.name}!`;
}

// 变量定义
const person: Person = {
    name: 'Alice',
    age: 30
};

// 函数调用
console.log(greet(person));
```

<a id="4.2"></a>
### 4.2 注释

```typescript
// 单行注释

/*
多行注释
可以跨越多行
*/

/**
 * JSDoc 注释
 * @param person 人员信息
 * @returns 问候语
 */
function greet(person: Person): string {
    return `Hello, ${person.name}!`;
}
```

<a id="4.3"></a>
### 4.3 编译

TypeScript 需要编译成 JavaScript 才能在浏览器或 Node.js 中运行：

```bash
# 编译单个文件
tsc hello.ts

# 编译整个项目
tsc
```

<a id="5"></a>
## 5 . 数据类型

<a id="5.1"></a>
### 5.1 基本数据类型

| 类型 | 描述 | 示例 |
| :--- | :--- | :--- |
| number | 数字 | `let age: number = 25;` |
| string | 字符串 | `let name: string = 'Alice';` |
| boolean | 布尔值 | `let isActive: boolean = true;` |
| null | 空值 | `let value: null = null;` |
| undefined | 未定义 | `let value: undefined = undefined;` |
| symbol | 符号 | `let sym: symbol = Symbol('key');` |
| bigint | 大整数 | `let big: bigint = 100n;` |

<a id="5.2"></a>
### 5.2 复杂数据类型

| 类型 | 描述 | 示例 |
| :--- | :--- | :--- |
| array | 数组 | `let numbers: number[] = [1, 2, 3];` |
| tuple | 元组 | `let person: [string, number] = ['Alice', 30];` |
| enum | 枚举 | `enum Color { Red, Green, Blue }` |
| any | 任意类型 | `let value: any = 'Hello';` |
| unknown | 未知类型 | `let value: unknown = 'Hello';` |
| never | 永不存在的值类型 | `function error(): never { throw new Error('Error'); }` |
| object | 对象 | `let obj: object = { name: 'Alice' };` |

<a id="6"></a>
## 6 . 变量和常量

<a id="6.1"></a>
### 6.1 变量声明

```typescript
// 使用 let 声明变量
let age: number = 25;
age = 30; // 可以修改

// 使用 const 声明常量
const name: string = 'Alice';
// name = 'Bob'; // 错误，常量不能修改

// 类型推断
let message = 'Hello'; // 自动推断为 string 类型
let count = 10; // 自动推断为 number 类型
```

<a id="6.2"></a>
### 6.2 解构赋值

```typescript
// 数组解构
let [a, b, c] = [1, 2, 3];

// 对象解构
let { name, age } = { name: 'Alice', age: 30 };

// 函数参数解构
function greet({ name, age }: { name: string; age: number }) {
    console.log(`Hello, ${name}! You are ${age} years old.`);
}
```

<a id="7"></a>
## 7 . 接口

<a id="7.1"></a>
### 7.1 接口定义

```typescript
interface Person {
    name: string;
    age: number;
    email?: string; // 可选属性
    readonly id: number; // 只读属性
}

// 实现接口
const person: Person = {
    id: 1,
    name: 'Alice',
    age: 30
};

// person.id = 2; // 错误，只读属性不能修改
```

<a id="7.2"></a>
### 7.2 接口继承

```typescript
interface Animal {
    name: string;
    eat(): void;
}

interface Dog extends Animal {
    bark(): void;
}

const dog: Dog = {
    name: 'Buddy',
    eat() {
        console.log('Eating...');
    },
    bark() {
        console.log('Woof!');
    }
};
```

<a id="7.3"></a>
### 7.3 函数接口

```typescript
interface GreetFunction {
    (name: string, age: number): string;
}

const greet: GreetFunction = (name, age) => {
    return `Hello, ${name}! You are ${age} years old.`;
};
```

<a id="8"></a>
## 8 . 类

<a id="8.1"></a>
### 8.1 类定义

```typescript
class Person {
    // 实例属性
    name: string;
    age: number;
    
    // 构造函数
    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }
    
    // 实例方法
    greet(): string {
        return `Hello, my name is ${this.name}.`;
    }
    
    // 静态属性
    static species: string = 'Homo sapiens';
    
    // 静态方法
    static getSpecies(): string {
        return Person.species;
    }
}

// 创建实例
const person = new Person('Alice', 30);
console.log(person.greet());
console.log(Person.getSpecies());
```

<a id="8.2"></a>
### 8.2 类继承

```typescript
class Employee extends Person {
    employeeId: number;
    
    constructor(name: string, age: number, employeeId: number) {
        super(name, age); // 调用父类构造函数
        this.employeeId = employeeId;
    }
    
    // 重写方法
    greet(): string {
        return `${super.greet()} I'm an employee with ID ${this.employeeId}.`;
    }
    
    // 新方法
    work(): void {
        console.log(`${this.name} is working.`);
    }
}

const employee = new Employee('Bob', 35, 1001);
console.log(employee.greet());
employee.work();
```

<a id="8.3"></a>
### 8.3 访问修饰符

```typescript
class Person {
    private _name: string; // 私有属性
    protected age: number; // 受保护属性
    public email: string; // 公共属性
    
    constructor(name: string, age: number, email: string) {
        this._name = name;
        this.age = age;
        this.email = email;
    }
    
    // getter
    get name(): string {
        return this._name;
    }
    
    // setter
    set name(value: string) {
        this._name = value;
    }
}

const person = new Person('Alice', 30, 'alice@example.com');
console.log(person.name); // 调用 getter
person.name = 'Bob'; // 调用 setter
console.log(person.email); // 直接访问公共属性
// console.log(person._name); // 错误，私有属性不能直接访问
// console.log(person.age); // 错误，受保护属性不能在类外部访问
```

<a id="9"></a>
## 9 . 函数

<a id="9.1"></a>
### 9.1 函数定义

```typescript
// 函数声明
function add(a: number, b: number): number {
    return a + b;
}

// 函数表达式
const subtract = (a: number, b: number): number => {
    return a - b;
};

// 箭头函数
const multiply = (a: number, b: number): number => a * b;

// 可选参数
function greet(name: string, age?: number): string {
    if (age) {
        return `Hello, ${name}! You are ${age} years old.`;
    } else {
        return `Hello, ${name}!`;
    }
}

// 默认参数
function calculateTotal(price: number, tax: number = 0.08): number {
    return price * (1 + tax);
}

// 剩余参数
function sum(...numbers: number[]): number {
    return numbers.reduce((acc, curr) => acc + curr, 0);
}
```

<a id="9.2"></a>
### 9.2 函数重载

```typescript
// 函数重载声明
function format(value: string): string;
function format(value: number): string;
function format(value: boolean): string;

// 函数实现
function format(value: string | number | boolean): string {
    if (typeof value === 'string') {
        return `String: ${value}`;
    } else if (typeof value === 'number') {
        return `Number: ${value}`;
    } else {
        return `Boolean: ${value}`;
    }
}

console.log(format('Hello'));
console.log(format(100));
console.log(format(true));
```

<a id="10"></a>
## 10 . 泛型

<a id="10.1"></a>
### 10.1 泛型函数

```typescript
function identity<T>(value: T): T {
    return value;
}

const result1 = identity<string>('Hello');
const result2 = identity<number>(100);
const result3 = identity<boolean>(true);
```

<a id="10.2"></a>
### 10.2 泛型接口

```typescript
interface Container<T> {
    value: T;
    getValue(): T;
}

class Box<T> implements Container<T> {
    value: T;
    
    constructor(value: T) {
        this.value = value;
    }
    
    getValue(): T {
        return this.value;
    }
}

const stringBox = new Box<string>('Hello');
const numberBox = new Box<number>(100);
```

<a id="10.3"></a>
### 10.3 泛型约束

```typescript
interface Lengthwise {
    length: number;
}

function loggingIdentity<T extends Lengthwise>(arg: T): T {
    console.log(arg.length);
    return arg;
}

loggingIdentity('Hello'); // 字符串有 length 属性
loggingIdentity([1, 2, 3]); // 数组有 length 属性
// loggingIdentity(100); // 错误，数字没有 length 属性
```

<a id="11"></a>
## 11 . 模块

<a id="11.1"></a>
### 11.1 模块导出

```typescript
// math.ts
export const PI = 3.14159;

export function add(a: number, b: number): number {
    return a + b;
}

export function subtract(a: number, b: number): number {
    return a - b;
}

export interface Calculator {
    add(a: number, b: number): number;
    subtract(a: number, b: number): number;
}
```

<a id="11.2"></a>
### 11.2 模块导入

```typescript
// app.ts
import { PI, add, subtract, Calculator } from './math';

console.log(PI);
console.log(add(5, 3));
console.log(subtract(5, 3));

class SimpleCalculator implements Calculator {
    add(a: number, b: number): number {
        return a + b;
    }
    
    subtract(a: number, b: number): number {
        return a - b;
    }
}

const calculator = new SimpleCalculator();
console.log(calculator.add(10, 5));
```

<a id="12"></a>
## 12 . 命名空间

<a id="12.1"></a>
### 12.1 命名空间定义

```typescript
// shapes.ts
namespace Shapes {
    export interface Shape {
        area(): number;
    }
    
    export class Circle implements Shape {
        constructor(private radius: number) {}
        
        area(): number {
            return Math.PI * this.radius * this.radius;
        }
    }
    
    export class Rectangle implements Shape {
        constructor(private width: number, private height: number) {}
        
        area(): number {
            return this.width * this.height;
        }
    }
}

// 使用命名空间
const circle = new Shapes.Circle(5);
const rectangle = new Shapes.Rectangle(10, 5);

console.log(`Circle area: ${circle.area()}`);
console.log(`Rectangle area: ${rectangle.area()}`);
```

<a id="13"></a>
## 13 . 高级类型

<a id="13.1"></a>
### 13.1 联合类型

```typescript
let value: string | number;
value = 'Hello';
value = 100;

function format(value: string | number): string {
    if (typeof value === 'string') {
        return `String: ${value}`;
    } else {
        return `Number: ${value}`;
    }
}
```

<a id="13.2"></a>
### 13.2 交叉类型

```typescript
interface Person {
    name: string;
    age: number;
}

interface Employee {
    employeeId: number;
    department: string;
}

type EmployeePerson = Person & Employee;

const employee: EmployeePerson = {
    name: 'Alice',
    age: 30,
    employeeId: 1001,
    department: 'Engineering'
};
```

<a id="13.3"></a>
### 13.3 类型守卫

```typescript
function isString(value: any): value is string {
    return typeof value === 'string';
}

function isNumber(value: any): value is number {
    return typeof value === 'number';
}

function process(value: string | number) {
    if (isString(value)) {
        console.log(`Processing string: ${value.toUpperCase()}`);
    } else if (isNumber(value)) {
        console.log(`Processing number: ${value * 2}`);
    }
}
```

<a id="13.4"></a>
### 13.4 类型别名

```typescript
type StringOrNumber = string | number;
type UserId = string | number;
type Callback = () => void;

type Person = {
    name: string;
    age: number;
    email?: string;
};

const id: UserId = 1001;
const callback: Callback = () => console.log('Callback called');
const person: Person = { name: 'Alice', age: 30 };
```

<a id="14"></a>
## 14 . 总结

TypeScript 是一种强大的编程语言，掌握其核心知识点有助于创建健壮、可维护的代码。

<a id="15"></a>
## 15 . 参考资料

- [TypeScript 官方文档](https://www.typescriptlang.org/docs/)
- [TypeScript Deep Dive](https://basarat.gitbook.io/typescript/)
- [TypeScript 教程](https://www.runoob.com/typescript/ts-tutorial.html)

<a id="16"></a>
## 16 版本历史

| 日期 | 版本 | 变更内容 | 变更人 |
| :--- | :--- | :--- | :--- |
| 2026-04-05 | 1.0 | 初始创建 | fanquanpp |
