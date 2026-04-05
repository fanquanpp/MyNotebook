# 02-常用代码片段 (JavaScript)

## 1. 常用函数
### 1.1 数组去重
```javascript
const uniqueArr = (arr) => [...new Set(arr)];
```

### 1.2 深拷贝
```javascript
const deepClone = (obj) => JSON.parse(JSON.stringify(obj));
// 更好的做法：使用递归或 lodash.cloneDeep
```

## 2. 算法实现
### 2.1 冒泡排序
```javascript
const bubbleSort = (arr) => {
    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < arr.length - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
            }
        }
    }
    return arr;
};
```
**图解**: 参考 [Hello-Algo (冒泡排序动画)](https://github.com/krahets/hello-algo)<!-- nofollow -->

### 2.2 快速排序
```javascript
const quickSort = (arr) => {
    if (arr.length <= 1) return arr;
    const pivot = arr[Math.floor(arr.length / 2)];
    const left = arr.filter(x => x < pivot);
    const middle = arr.filter(x => x === pivot);
    const right = arr.filter(x => x > pivot);
    return [...quickSort(left), ...middle, ...quickSort(right)];
};
```
**来源**: [TheAlgorithms/JavaScript](https://github.com/TheAlgorithms/JavaScript)<!-- nofollow -->

### 2.3 二分查找
```javascript
const binarySearch = (arr, target) => {
    let left = 0;
    let right = arr.length - 1;
    while (left <= right) {
        const mid = Math.floor((left + right) / 2);
        if (arr[mid] === target) return mid;
        if (arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;
};
```
**来源**: [TheAlgorithms/JavaScript](https://github.com/TheAlgorithms/JavaScript)<!-- nofollow -->

## 3. 设计模式
### 3.1 观察者模式 (Observer Pattern)
```javascript
class Observer {
    constructor() {
        this.subscribers = [];
    }
    subscribe(callback) {
        this.subscribers.push(callback);
    }
    notify(data) {
        this.subscribers.forEach(callback => callback(data));
    }
}
```

## 4. 实战案例
### 4.1 异步数据抓取 (Fetch API)
```javascript
const fetchJson = async (url) => {
    const response = await fetch(url);
    if (!response.ok) throw new Error('Network response was not ok');
    return response.json();
};
```

## 5. 延伸阅读
- [TheAlgorithms/JavaScript (JavaScript 算法实现)](https://github.com/TheAlgorithms/JavaScript)
- [Airbnb JavaScript Style Guide (Airbnb 风格指南)](https://github.com/airbnb/javascript)

## 6. 更新日志
- **2026-04-05**: 添加数组去重、深拷贝、冒泡排序、观察者模式、Fetch API 代码片段。
