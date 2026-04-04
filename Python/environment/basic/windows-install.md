---
url: "https://docs.python.org/3/using/windows.html#installation-steps"
version: "3.x"
update_date: "2026-04-05"
tags: ["Python", "Windows", "Installation", "Environment"]
---

<a id="title"></a>
# Python Windows 安装与环境配置

<a id="1"></a>
## 1 语法 (Syntax)

在 Windows 上使用 Python，建议通过官方的 **Python Install Manager** 进行安装和管理。

<a id="1.1"></a>
### 1.1 核心命令
- **`python`**: 启动默认版本的 Python 或激活的虚拟环境。
- **`py`**: Python 启动器，用于切换不同版本的 Python（如 `py -3.12`）。
- **`pymanager`**: Python 安装管理器的明确命令。

<a id="1.2"></a>
### 1.2 虚拟环境 (Venv)
推荐为每个项目创建独立的虚拟环境：
```powershell
python -m venv .venv
.\.venv\Scripts\Activate
```

<a id="2"></a>
## 2 场景 (Scenario)

- **多版本共存**：利用 `py -V:3.11` 快速在不同版本间切换。
- **自动化部署**：通过 `winget` 或静默安装选项进行大规模部署。
- **嵌入式应用**：使用 "embeddable package" 将 Python 运行环境集成到大型软件中。

<a id="3"></a>
## 3 示例 (Example)

```powershell
# 1: 安装特定版本
# 2: 查看已安装版本
py install 3.12
py list
```

<a id="4"></a>
## 4 陷阱 (Trap)

1.  **路径限制**：Windows 默认有 260 字符路径限制，建议在安装结束时点击 "Disable path length limit" 或手动修改注册表。
2.  **环境变量冲突**：手动修改 `PATH` 可能导致 `py` 启动器失效，优先使用 `py` 命令而非直接调用 `python.exe`。
3.  **Store 版本限制**：从 Microsoft Store 安装的 Python 可能在某些底层权限（如修改系统文件）上受限。

<a id="5"></a>
## 5 进阶 (Advanced)

<a id="5.1"></a>
### 5.1 Shebang 行支持
Windows 上的 `py` 启动器支持解析文件头部的 Shebang 行，实现跨平台脚本兼容：
```python
#! /usr/bin/python3
print("Running on Windows with Unix-style shebang")
```

[Python on Windows Docs](https://docs.python.org/3/using/windows.html)<!-- nofollow -->
