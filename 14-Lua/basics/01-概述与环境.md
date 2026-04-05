# Lua 概述与环境配置 (Lua Overview & Environment)

> @Author: Anonymous
> @Category: Lua Basics
> @Description: Lua 的设计哲学、轻量级特性、应用场景及环境搭建。 | Lua design philosophy, lightweight features, applications, and setup.

## 1. Lua 概述 (Overview)
Lua 是一门简洁、轻量、可扩展的脚本语言，由巴西里约热内卢天主教大学开发。它的核心设计目标是：**易于嵌入到宿主程序中**。

### 1.1 核心特点 (Key Features)
- **极简设计**: 核心库非常小 (解释器仅几百 KB)。
- **高性能**: 拥有极快的执行速度，特别是 **LuaJIT**。
- **Table 为王**: 唯一的数据结构 `table` 可以模拟数组、哈希表、对象等。
- **可移植性**: 用 ANSI C 编写，几乎可以在任何平台上运行。
- **自动内存管理**: 内置垃圾回收机制。

## 2. 环境搭建 (Environment Setup)
1. **安装**:
   - **Windows**: 使用 LuaForWindows 或二进制分发版。
   - **macOS/Linux**: `brew install lua` 或 `sudo apt install lua5.4`。
2. **运行**:
   ```bash
   lua main.lua
   ```

## 3. 应用领域 (Applications)
- **游戏开发**: 作为游戏的逻辑脚本 (如《魔兽世界》插件, 《罗布乐思》)。
- **嵌入式系统**: 路由器控制、工业设备。
- **Web 扩展**: Nginx (OpenResty) 的高性能 Web 扩展。

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 Lua 概述与嵌入式特性。
