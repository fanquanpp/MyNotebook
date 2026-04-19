// 单链表实现
// 支持插入、删除、遍历操作

/**
 * 链表节点类
 */
class ListNode {
    constructor(value) {
        this.value = value; // 节点值
        this.next = null; // 指向下一个节点的指针
    }
}

/**
 * 单链表类
 */
class SinglyLinkedList {
    constructor() {
        this.head = null; // 链表头节点
        this.length = 0; // 链表长度
    }

    /**
     * 在链表末尾添加元素
     * @param {*} value - 要添加的元素值
     */
    append(value) {
        const newNode = new ListNode(value);
        
        if (!this.head) {
            // 链表为空，新节点作为头节点
            this.head = newNode;
        } else {
            // 找到链表末尾节点
            let current = this.head;
            while (current.next) {
                current = current.next;
            }
            // 在末尾添加新节点
            current.next = newNode;
        }
        
        this.length++;
        return this;
    }

    /**
     * 在链表指定位置插入元素
     * @param {number} index - 插入位置
     * @param {*} value - 要插入的元素值
     */
    insert(index, value) {
        // 边界检查
        if (index < 0 || index > this.length) {
            return false;
        }

        const newNode = new ListNode(value);

        // 在头部插入
        if (index === 0) {
            newNode.next = this.head;
            this.head = newNode;
        } else {
            // 找到插入位置的前一个节点
            let current = this.head;
            for (let i = 0; i < index - 1; i++) {
                current = current.next;
            }
            // 插入新节点
            newNode.next = current.next;
            current.next = newNode;
        }

        this.length++;
        return true;
    }

    /**
     * 删除链表指定位置的元素
     * @param {number} index - 删除位置
     * @returns {*} - 被删除的元素值
     */
    remove(index) {
        // 边界检查
        if (index < 0 || index >= this.length) {
            return null;
        }

        let removedNode;

        // 删除头节点
        if (index === 0) {
            removedNode = this.head;
            this.head = this.head.next;
        } else {
            // 找到删除位置的前一个节点
            let current = this.head;
            for (let i = 0; i < index - 1; i++) {
                current = current.next;
            }
            // 删除节点
            removedNode = current.next;
            current.next = current.next.next;
        }

        this.length--;
        return removedNode.value;
    }

    /**
     * 查找链表中指定值的元素
     * @param {*} value - 要查找的元素值
     * @returns {number} - 元素在链表中的位置，未找到返回 -1
     */
    find(value) {
        let current = this.head;
        let index = 0;

        while (current) {
            if (current.value === value) {
                return index;
            }
            current = current.next;
            index++;
        }

        return -1;
    }

    /**
     * 获取链表指定位置的元素
     * @param {number} index - 位置
     * @returns {*} - 元素值
     */
    get(index) {
        // 边界检查
        if (index < 0 || index >= this.length) {
            return null;
        }

        let current = this.head;
        for (let i = 0; i < index; i++) {
            current = current.next;
        }

        return current.value;
    }

    /**
     * 遍历链表，执行回调函数
     * @param {function} callback - 回调函数，接收节点值和索引作为参数
     */
    forEach(callback) {
        let current = this.head;
        let index = 0;

        while (current) {
            callback(current.value, index);
            current = current.next;
            index++;
        }
    }

    /**
     * 将链表转换为数组
     * @returns {Array} - 链表元素组成的数组
     */
    toArray() {
        const result = [];
        this.forEach(value => result.push(value));
        return result;
    }

    /**
     * 清空链表
     */
    clear() {
        this.head = null;
        this.length = 0;
    }

    /**
     * 获取链表长度
     * @returns {number} - 链表长度
     */
    size() {
        return this.length;
    }

    /**
     * 检查链表是否为空
     * @returns {boolean} - 链表是否为空
     */
    isEmpty() {
        return this.length === 0;
    }

    /**
     * 打印链表
     */
    print() {
        const values = this.toArray();
        console.log(values.join(' -> '));
    }
}

// 测试单链表
if (require.main === module) {
    console.log('测试单链表:');
    const list = new SinglyLinkedList();
    
    // 测试 append
    list.append(1);
    list.append(2);
    list.append(3);
    console.log('添加元素 1, 2, 3 后:');
    list.print();
    
    // 测试 insert
    list.insert(1, 4);
    console.log('在位置 1 插入元素 4 后:');
    list.print();
    
    // 测试 remove
    const removed = list.remove(2);
    console.log(`删除位置 2 的元素 ${removed} 后:`);
    list.print();
    
    // 测试 find
    const index = list.find(3);
    console.log(`元素 3 在链表中的位置: ${index}`);
    
    // 测试 get
    const value = list.get(1);
    console.log(`位置 1 的元素值: ${value}`);
    
    // 测试 forEach
    console.log('遍历链表:');
    list.forEach((value, index) => {
        console.log(`位置 ${index}: ${value}`);
    });
    
    // 测试 toArray
    const array = list.toArray();
    console.log('链表转换为数组:', array);
    
    // 测试 size 和 isEmpty
    console.log(`链表长度: ${list.size()}`);
    console.log(`链表是否为空: ${list.isEmpty()}`);
    
    // 测试 clear
    list.clear();
    console.log('清空链表后:');
    console.log(`链表长度: ${list.size()}`);
    console.log(`链表是否为空: ${list.isEmpty()}`);
}

module.exports = SinglyLinkedList;