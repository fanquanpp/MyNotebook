# I/O 流与文件操作 (I/O Streams & File Ops)

> @Author: Anonymous
> @Category: Java Basics
> @Description: 字节流、字符流、缓冲流、对象序列化及 NIO 简介。 | Byte, Character, Buffered streams, Serialization, and NIO overview.

## 1. I/O 流分类 (Classification)
1. **按流向**: 输入流 (`Input`), 输出流 (`Output`)。
2. **按单位**: 
   - **字节流 (`Stream`)**: 处理所有文件 (如图片, 视频)。顶级类: `InputStream`, `OutputStream`。
   - **字符流 (`Reader`/`Writer`)**: 处理纯文本文件。顶级类: `Reader`, `Writer`。

## 2. 常用实现类
- **文件操作**: `FileInputStream`, `FileOutputStream`, `FileReader`, `FileWriter`。
- **缓冲流**: `BufferedInputStream`, `BufferedOutputStream`, `BufferedReader`, `BufferedWriter` (显著提高性能)。
- **转换流**: `InputStreamReader`, `OutputStreamWriter` (字节转字符，处理编码)。

## 3. 序列化 (Serialization)
将对象状态转换为字节序列。
- **必要条件**: 实现 `Serializable` 接口。
- **`transient`**: 标记不参与序列化的字段。
```java
// 使用 ObjectOutputStream 写入文件
ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("obj.dat"));
oos.writeObject(new MyObject());
```

## 4. 文件操作 (`java.io.File`)
- `exists()`, `createNewFile()`, `mkdir()`, `delete()`, `length()`。
- `listFiles()`: 获取目录下所有文件。

## 5. NIO (Non-blocking I/O)
Java 1.4 引入，使用 `Buffer`, `Channel`, `Selector`。性能更高，适合高并发场景。

---
### 更新日志 (Changelog)
- 2026-04-05: 补充序列化与缓冲流细节。
