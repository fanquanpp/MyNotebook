// 模块化示例
// 演示 ES6 模块的使用

// 注意：要在浏览器中运行此示例，需要在 HTML 文件中使用 type="module" 属性

// 模块 1: 数学工具函数
// math.js (假设存在此文件)
/*
export function add(a, b) {
    return a + b;
}

export function subtract(a, b) {
    return a - b;
}

export const PI = 3.14159;
*/

// 模块 2: 用户相关函数
// user.js (假设存在此文件)
/*
export class User {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
    
    greet() {
        return `Hello, my name is ${this.name}`;
    }
}
*/

// 主模块: 导入并使用其他模块
// 注意：由于这是示例文件，实际运行需要创建上述模块文件

// 模拟导入
const math = {
    add: (a, b) => a + b,
    subtract: (a, b) => a - b,
    PI: 3.14159
};

const User = class {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
    
    greet() {
        return `Hello, my name is ${this.name}`;
    }
};

// 使用导入的模块
console.log('数学计算:', math.add(5, 3));
console.log('PI 值:', math.PI);

const user = new User('Alice', 30);
console.log(user.greet());

// 导出当前模块的内容
// export const version = '1.0.0';
// export function hello() { return 'Hello from modular example'; }