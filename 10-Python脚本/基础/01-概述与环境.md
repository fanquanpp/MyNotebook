# Python 概述与环境配置 (Python Overview & Environment)

> @Author: Anonymous
> @Category: Python Basics
> @Description: Python 的历史、特点、应用场景及开发环境搭建。 | Python history, features, applications, and environment setup.

## 1. Python 概述 (Overview)
Python 是由 **Guido van Rossum** 于 1989 年圣诞节期间开始设计的一种高级脚本语言。它以英国电视喜剧《Monty Python's Flying Circus》命名。

### 1.1 核心特点 (Key Features)
- **简单易学**: 语法接近自然语言，强制缩进提高代码可读性。
- **解释执行**: 源码由 Python 解释器逐行转换成字节码运行，无需显式编译。
- **动态类型**: 变量不需要声明类型，运行时自动确定。
- **丰富的库**: 拥有庞大的标准库 (Battery Included) 和第三方库生态 (PyPI)。
- **跨平台**: 支持 Windows, Linux, macOS。
- **多范式**: 支持面向对象、函数式、过程式编程。

## 2. 应用领域 (Applications)
- **数据科学**: NumPy, Pandas, Matplotlib, Scikit-learn。
- **人工智能**: TensorFlow, PyTorch, Keras。
- **Web 开发**: Django, Flask, FastAPI。
- **自动化运维**: Ansible, SaltStack, 自动化脚本。
- **网络爬虫**: Scrapy, BeautifulSoup, Requests。

## 3. 环境搭建 (Environment Setup)
1. **下载**: 访问 [python.org](https://www.python.org/) 下载最新版本 (推荐 Python 3.10+)。
2. **安装**:
   - **Windows**: 务必勾选 "Add Python to PATH"。
   - **macOS/Linux**: 通常自带，建议使用 `pyenv` 管理版本。
3. **包管理**: 使用 `pip` 安装第三方库。
   ```bash
   pip install requests
   ```
4. **虚拟环境**: 避免全局环境污染。
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/macOS
   .\venv\Scripts\activate   # Windows
   ```

## 4. 解释器与 IDE (Interpreters & IDEs)
- **CPython**: 官方默认解释器，用 C 编写。
- **PyCharm**: 功能最全的专业 IDE。
- **VS Code**: 配合 Python 插件，轻量且强大。
- **Jupyter Notebook**: 交互式开发，适合数据分析。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 Python 概述与环境配置。
