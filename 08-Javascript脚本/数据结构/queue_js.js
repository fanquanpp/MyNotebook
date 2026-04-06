// 队列实现
// 先进先出 (FIFO) 数据结构

/**
 * 队列类
 */
class Queue {
    constructor() {
        this.items = []; // 存储队列元素的数组
        this.length = 0; // 队列长度
    }

    /**
     * 入队操作
     * @param {*} value - 要入队的元素值
     */
    enqueue(value) {
        this.items.push(value);
        this.length++;
        return this;
    }

    /**
     * 出队操作
     * @returns {*} - 出队的元素值
     */
    dequeue() {
        if (this.isEmpty()) {
            return null;
        }
        this.length--;
        return this.items.shift();
    }

    /**
     * 查看队首元素
     * @returns {*} - 队首元素值
     */
    front() {
        if (this.isEmpty()) {
            return null;
        }
        return this.items[0];
    }

    /**
     * 查看队尾元素
     * @returns {*} - 队尾元素值
     */
    rear() {
        if (this.isEmpty()) {
            return null;
        }
        return this.items[this.length - 1];
    }

    /**
     * 检查队列是否为空
     * @returns {boolean} - 队列是否为空
     */
    isEmpty() {
        return this.length === 0;
    }

    /**
     * 获取队列长度
     * @returns {number} - 队列长度
     */
    size() {
        return this.length;
    }

    /**
     * 清空队列
     */
    clear() {
        this.items = [];
        this.length = 0;
    }

    /**
     * 将队列转换为数组
     * @returns {Array} - 队列元素组成的数组
     */
    toArray() {
        return [...this.items];
    }

    /**
     * 打印队列
     */
    print() {
        console.log(this.items.join(' -> '));
    }
}

// 测试队列
if (require.main === module) {
    console.log('测试队列:');
    const queue = new Queue();
    
    // 测试 enqueue
    queue.enqueue(1);
    queue.enqueue(2);
    queue.enqueue(3);
    console.log('入队元素 1, 2, 3 后:');
    queue.print();
    
    // 测试 front 和 rear
    const front = queue.front();
    const rear = queue.rear();
    console.log(`队首元素: ${front}`);
    console.log(`队尾元素: ${rear}`);
    
    // 测试 dequeue
    const dequeued = queue.dequeue();
    console.log(`出队元素: ${dequeued}`);
    console.log('出队后:');
    queue.print();
    
    // 测试 size 和 isEmpty
    console.log(`队列长度: ${queue.size()}`);
    console.log(`队列是否为空: ${queue.isEmpty()}`);
    
    // 测试 toArray
    const array = queue.toArray();
    console.log('队列转换为数组:', array);
    
    // 测试 clear
    queue.clear();
    console.log('清空队列后:');
    console.log(`队列长度: ${queue.size()}`);
    console.log(`队列是否为空: ${queue.isEmpty()}`);
}

module.exports = Queue;