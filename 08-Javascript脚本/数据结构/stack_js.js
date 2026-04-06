// 栈实现
// 后进先出 (LIFO) 数据结构

/**
 * 栈类
 */
class Stack {
    constructor() {
        this.items = []; // 存储栈元素的数组
        this.length = 0; // 栈长度
    }

    /**
     * 入栈操作
     * @param {*} value - 要入栈的元素值
     */
    push(value) {
        this.items.push(value);
        this.length++;
        return this;
    }

    /**
     * 出栈操作
     * @returns {*} - 出栈的元素值
     */
    pop() {
        if (this.isEmpty()) {
            return null;
        }
        this.length--;
        return this.items.pop();
    }

    /**
     * 查看栈顶元素
     * @returns {*} - 栈顶元素值
     */
    peek() {
        if (this.isEmpty()) {
            return null;
        }
        return this.items[this.length - 1];
    }

    /**
     * 检查栈是否为空
     * @returns {boolean} - 栈是否为空
     */
    isEmpty() {
        return this.length === 0;
    }

    /**
     * 获取栈长度
     * @returns {number} - 栈长度
     */
    size() {
        return this.length;
    }

    /**
     * 清空栈
     */
    clear() {
        this.items = [];
        this.length = 0;
    }

    /**
     * 将栈转换为数组
     * @returns {Array} - 栈元素组成的数组
     */
    toArray() {
        return [...this.items];
    }

    /**
     * 打印栈
     */
    print() {
        console.log(this.items.join(' <- '));
    }
}

// 测试栈
if (require.main === module) {
    console.log('测试栈:');
    const stack = new Stack();
    
    // 测试 push
    stack.push(1);
    stack.push(2);
    stack.push(3);
    console.log('入栈元素 1, 2, 3 后:');
    stack.print();
    
    // 测试 peek
    const top = stack.peek();
    console.log(`栈顶元素: ${top}`);
    
    // 测试 pop
    const popped = stack.pop();
    console.log(`出栈元素: ${popped}`);
    console.log('出栈后:');
    stack.print();
    
    // 测试 size 和 isEmpty
    console.log(`栈长度: ${stack.size()}`);
    console.log(`栈是否为空: ${stack.isEmpty()}`);
    
    // 测试 toArray
    const array = stack.toArray();
    console.log('栈转换为数组:', array);
    
    // 测试 clear
    stack.clear();
    console.log('清空栈后:');
    console.log(`栈长度: ${stack.size()}`);
    console.log(`栈是否为空: ${stack.isEmpty()}`);
}

module.exports = Stack;