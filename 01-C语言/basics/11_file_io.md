# 文件 I/O 操作 (File Input/Output)

> @Author: Anonymous
> @Category: C Basics
> @Description: 标准文件流操作、二进制文件及错误处理。 | Standard file stream operations, binary files, and error handling.

## 1. 文件指针与标准流 (File Pointers & Streams)
C 语言通过 `FILE *` 指针管理文件。
- **标准流**: `stdin` (键盘), `stdout` (屏幕), `stderr` (错误输出)。

## 2. 打开与关闭 (Open & Close)
```c
#include <stdio.h>

FILE *fp = fopen("test.txt", "r"); // 模式: r, w, a, r+, w+, a+
if (fp == NULL) {
    perror("Error opening file");
    return -1;
}
// ... 操作文件
fclose(fp);
```

## 3. 读写操作 (Read & Write)

### 3.1 格式化读写 (Formatted)
- `fprintf(fp, "Score: %d\n", 100);`
- `fscanf(fp, "%d", &score);`

### 3.2 字符/字符串读写 (Char/String)
- `fgetc` / `fputc`: 单个字符。
- `fgets` / `fputs`: 一行字符串。

### 3.3 二进制读写 (Binary)
- `fread(buffer, size, count, fp);`
- `fwrite(buffer, size, count, fp);`

## 4. 文件位置指针 (File Positioning)
- `ftell(fp)`: 返回当前位置。
- `fseek(fp, offset, origin)`: 移动指针。
  - `SEEK_SET`: 文件头。
  - `SEEK_CUR`: 当前位置。
  - `SEEK_END`: 文件尾。
- `rewind(fp)`: 重置指针到文件头。

## 5. 错误处理 (Error Handling)
- `feof(fp)`: 检测是否到达文件末尾。
- `ferror(fp)`: 检测读写错误。
- `perror("Message")`: 打印系统错误信息。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化文件操作知识。
