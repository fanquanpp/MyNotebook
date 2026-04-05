# 文件 I/O 与上下文管理器 (File I/O & Context Manager)

> @Author: Anonymous
> @Category: Python Basics
> @Description: 文件读写模式、二进制处理、编码及 Context Manager (With)。 | File modes, binary handling, encoding, and Context Manager.

## 1. 文件打开与关闭 (Open & Close)
### 1.1 `open()` 函数
语法: `f = open(file_path, mode, encoding='utf-8')`
- **常用模式**:
  - `r`: 只读 (默认)。
  - `w`: 覆盖写。
  - `a`: 追加写。
  - `b`: 二进制模式 (如 `rb`, `wb`)。
  - `+`: 更新模式 (如 `r+`, `w+`)。

### 1.2 `close()`
必须关闭文件以释放资源。**推荐使用 `with` 语句**。

## 2. 读写操作 (Read & Write)
- **读**: `read()`, `readline()`, `readlines()`。
- **写**: `write()`, `writelines()`。
- **遍历**: `for line in f:` (最高效，逐行读取)。

## 3. 上下文管理器 (Context Manager - `with`)
**核心思想**: 自动处理资源的获取与释放 (RAII)。
- **原理**: 实现了 `__enter__` 和 `__exit__` 协议。
```python
with open("data.txt", "r") as f:
    content = f.read()
# 自动关闭文件，无需 f.close()
```

## 4. 文件指针 (Positioning)
- **`tell()`**: 返回当前指针位置。
- **`seek(offset, origin)`**: 移动指针。

## 5. 常见问题
- **编码错误**: 在 Windows 平台上默认编码可能是 GBK，建议显式指定 `encoding='utf-8'`。
- **大文件读取**: 避免一次性 `read()` 全文，使用迭代器逐行处理。

---
### 更新日志 (Changelog)
- 2026-04-05: 细化 Pythonic 文件操作与 Context Manager 细节。
