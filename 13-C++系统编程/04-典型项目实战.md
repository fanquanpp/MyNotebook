# 04-典型项目实战 (C++)

## 1. 项目需求
### 1.1 简易文件管理器
- 功能: 列出目录、创建文件、删除文件、移动文件。
- 技术栈: C++17 `<filesystem>`, STL。

## 2. 架构设计
### 2.1 模块划分
- **FileManager**: 提供底层文件系统接口。
- **CommandParser**: 解析用户输入的命令。
- **UI**: 提供交互界面。

## 3. 核心实现
### 3.1 FileManager 实现
```cpp
#include <iostream>
#include <filesystem>
#include <string>

namespace fs = std::filesystem;

class FileManager {
public:
    void list_dir(const std::string& path) {
        for (const auto& entry : fs::directory_iterator(path)) {
            std::cout << entry.path() << std::endl;
        }
    }
    void create_file(const std::string& path) {
        std::ofstream out(path);
        out << "Hello, File!" << std::endl;
    }
    void delete_file(const std::string& path) {
        fs::remove(path);
    }
};
```

## 4. 部署与维护
### 4.1 构建
使用 `CMake` 编译：
```cmake
cmake_minimum_required(VERSION 3.10)
project(FileManager)
set(CMAKE_CXX_STANDARD 17)
add_executable(FileManager main.cpp)
```

## 5. 延伸阅读
- [CS-Books (实战篇)](https://github.com/forthespada/CS-Books)
- [CppPrimerPlus](https://github.com/ShujiaHuang/Cpp-Primer-Plus-6th)

## 6. 更新日志
- **2026-04-05**: 初始化项目实战，涵盖简易文件管理器的设计与核心实现。
