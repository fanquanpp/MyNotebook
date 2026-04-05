# 02-常用代码片段 (C++)

## 1. 常用函数
### 1.1 字符串分割
```cpp
#include <iostream>
#include <vector>
#include <string>
#include <sstream>

std::vector<std::string> split(const std::string& s, char delimiter) {
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(s);
    while (std::getline(tokenStream, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}
```

## 2. 算法实现
### 2.1 冒泡排序
```cpp
#include <iostream>
#include <vector>

void bubble_sort(std::vector<int>& arr) {
    for (int i = 0; i < arr.size(); ++i) {
        for (int j = 0; j < arr.size() - i - 1; ++j) {
            if (arr[j] > arr[j + 1]) {
                std::swap(arr[j], arr[j + 1]);
            }
        }
    }
}
```
**图解**: 参考 [Hello-Algo (冒泡排序动画)](https://github.com/krahets/hello-algo)<!-- nofollow -->

## 3. 设计模式
### 3.1 单例模式 (线程安全)
```cpp
class Singleton {
public:
    static Singleton& getInstance() {
        static Singleton instance;
        return instance;
    }
private:
    Singleton() {}
    Singleton(const Singleton&) = delete;
    Singleton& operator=(const Singleton&) = delete;
};
```

## 4. 实战案例
### 4.1 文件读写
```cpp
#include <iostream>
#include <fstream>
#include <string>

void write_file(const std::string& filename, const std::string& content) {
    std::ofstream out(filename);
    out << content;
}

void read_file(const std::string& filename) {
    std::ifstream in(filename);
    std::string line;
    while (std::getline(in, line)) {
        std::cout << line << std::endl;
    }
}
```

## 5. 延伸阅读
- [TheAlgorithms/JavaScript (参考实现)](https://github.com/TheAlgorithms/JavaScript)
- [CppPrimerPlus](https://github.com/ShujiaHuang/Cpp-Primer-Plus-6th)

## 6. 更新日志
- **2026-04-05**: 添加字符串分割、冒泡排序、单例模式、文件读写代码片段。
