// 异步编程示例
// 展示 Promise、async/await 的使用

// 1. 使用 Promise
function fetchData(url) {
    return new Promise((resolve, reject) => {
        // 模拟网络请求延迟
        setTimeout(() => {
            if (url) {
                resolve(`从 ${url} 获取的数据`);
            } else {
                reject('URL 不能为空');
            }
        }, 1000);
    });
}

// 使用 Promise 链式调用
console.log('开始获取数据...');
fetchData('https://api.example.com/data')
    .then(data => {
        console.log('获取到数据:', data);
        return fetchData('https://api.example.com/more-data');
    })
    .then(moreData => {
        console.log('获取到更多数据:', moreData);
    })
    .catch(error => {
        console.error('发生错误:', error);
    });

// 2. 使用 async/await
async function fetchDataAsync() {
    try {
        console.log('开始使用 async/await 获取数据...');
        const data = await fetchData('https://api.example.com/data');
        console.log('获取到数据:', data);
        
        const moreData = await fetchData('https://api.example.com/more-data');
        console.log('获取到更多数据:', moreData);
        
        return '所有数据获取完成';
    } catch (error) {
        console.error('发生错误:', error);
        throw error;
    }
}

// 调用 async 函数
fetchDataAsync()
    .then(result => {
        console.log(result);
    })
    .catch(error => {
        console.error('处理错误:', error);
    });

// 3. Promise.all 并行处理
async function fetchMultipleData() {
    console.log('开始并行获取多个数据...');
    
    const promises = [
        fetchData('https://api.example.com/data1'),
        fetchData('https://api.example.com/data2'),
        fetchData('https://api.example.com/data3')
    ];
    
    try {
        const results = await Promise.all(promises);
        console.log('并行获取结果:', results);
    } catch (error) {
        console.error('并行获取失败:', error);
    }
}

// 调用并行获取函数
fetchMultipleData();