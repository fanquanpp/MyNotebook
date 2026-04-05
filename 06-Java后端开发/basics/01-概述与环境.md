# Java 概述与开发环境 (Java Overview & Development Environment)

> @Author: Anonymous
> @Category: Java Basics
> @Description: Java 语言的发展、核心特点、应用领域及开发环境搭建。 | Java development history, key features, applications, and environment setup.

## 1. Java 概述 (Overview)
Java 是一种由 **Sun Microsystems** (后被 Oracle 收购) 于 1995 年发布的面向对象编程语言。其核心理念是 **"Write Once, Run Anywhere" (WORA)**，即一次编写，到处运行。

### 1.1 核心特点 (Key Features)
- **跨平台性**: 通过 **JVM (Java Virtual Machine)** 实现。Java 源代码编译成字节码 (`.class`)，由各平台的 JVM 解释执行。
- **面向对象**: 支持封装、继承、多态等特性，是纯粹的面向对象语言。
- **强类型语言**: 严格的编译时类型检查，提高代码可靠性。
- **自动内存管理**: **GC (Garbage Collection)** 机制自动回收不再使用的对象内存。
- **安全性**: 内置安全模型，如沙箱机制、字节码校验。
- **多线程支持**: 内置对多线程编程的支持。

## 2. Java 开发工具 (The "Three Big" Concepts)
1. **JVM (Java Virtual Machine)**: 运行 Java 字节码的虚拟机。
2. **JRE (Java Runtime Environment)**: 包含 JVM 和核心类库，是运行 Java 程序所需的最小环境。
3. **JDK (Java Development Kit)**: 包含 JRE 和开发工具 (如 `javac`, `java`, `jdb`)。**开发人员必须安装 JDK**。

## 3. 环境搭建 (Environment Setup)
1. **下载**:3. 下载: 推荐使用 OpenJDK 或 Oracle JDK (LTS 版本如 8, 11, 17, 21, 或最新的 25)。
2. **安装**: 按照操作系统提示安装。
3. **环境变量 (Windows)**:
   - `JAVA_HOME`: JDK 安装目录。
   - `Path`: 添加 `%JAVA_HOME%\bin`。
4. **验证**:
   ```bash
   java -version
   javac -version
   ```

## 4. 应用领域 (Applications)
- **企业级应用**: Spring Boot, Java EE 构建的大型后端系统。
- **移动应用**: Android 原生开发。
- **大数据**: Hadoop, Spark, Flink 的核心开发语言。
- **云计算**: 微服务架构、云原生应用。
- **科学计算与金融**: 对精度和性能要求高的系统。

---
### 更新日志 (Changelog)
- 2026-04-05: 体系化整合 Java 概述与环境。
