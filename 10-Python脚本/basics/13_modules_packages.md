# 模块、包与工程化 (Modules, Packages & Engineering)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 模块导入、包结构、命名空间及 pip 虚拟环境管理。 | Import mechanisms, package structures, namespaces, and env management.

## 1. 模块导入 (Importing)
模块是包含 Python 代码的 `.py` 文件。
- **`import module`**: 导入整个模块。
- **`from module import func`**: 导入特定成员。
- **`as`**: 别名 (`import pandas as pd`)。

### 1.1 导入路径 (Search Path)
Python 按顺序查找：
1. 当前目录。
2. `PYTHONPATH` 环境变量。
3. 标准库。
4. 第三方库 (`site-packages`)。

## 2. 包 (Packages)
包含 `__init__.py` 的目录。
- **作用**: 组织模块，防止命名冲突。
- **`__init__.py`**: 标识该目录为包。在 Python 3.3+ 后不是强制要求，但仍建议使用。

## 3. 命名空间与 `__name__` (Namespaces)
- 每个模块都有自己的命名空间。
- **`if __name__ == "__main__":`**: 仅在作为主程序运行时执行的代码。

## 4. 第三方库管理 (pip)
- **安装**: `pip install package_name`
- **依赖导出**: `pip freeze > requirements.txt`
- **依赖安装**: `pip install -r requirements.txt`

## 5. 虚拟环境 (Virtual Environments)
**核心思想**: 隔离不同项目的依赖。
- **`venv`**: 官方内置工具。
- **`conda`**: 数据科学常用。
- **`poetry`**: 现代工程化依赖管理。

---
### 更新日志 (Changelog)
- 2026-04-05: 补充 Python 包管理与虚拟环境细节。
