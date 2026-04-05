<!--
文件名称：Lua 学习笔记概览
原名称：无
用途描述：Lua 脚本语言学习分册，涵盖基础语法、高级特性及 Redis/Nginx 实践案例。
创建/更新：2026-04-05
-->

# 14-Lua 脚本开发（Lua Scripting）

本分册记录了 **Lua（脚本语言）** 的系统化学习笔记。Lua 是一种轻量、小巧、可扩展的脚本语言，常用于游戏开发（如 Roblox, World of Warcraft）、嵌入式系统以及作为 Redis 和 Nginx 的扩展脚本。

## 1. 学习目录（Learning Path）

- [01-Lua基础语法-学习笔记](01-Lua基础语法-学习笔记.md) `Lua-Basic-Syntax`
    - 环境搭建、变量、数据类型、控制流、函数。
- [02-Lua高级特性-学习笔记](02-Lua高级特性-学习笔记.md) `Lua-Advanced-Features`
    - 表（Table）深度解析、元表（Metatable）、协程（Coroutine）、模块系统。
- [03-Lua实践案例-学习笔记](03-Lua实践案例-学习笔记.md) `Lua-Practice-Cases`
    - Redis Lua 脚本开发、Nginx (OpenResty) 扩展、性能优化最佳实践。

## 2. 核心特点

- **轻量级**：核心库极小，启动速度快。
- **易嵌入**：C 编写，可以非常方便地嵌入到其他语言中。
- **表为核心**：Lua 唯一的数据结构是 `Table`，可以模拟数组、字典、类等。
- **协程支持**：原生支持协作式多线程。

## 3. 推荐资源

- [Lua 官方文档](https://www.lua.org/docs.html) <!-- nofollow -->
- [Lua 教程 - 菜鸟教程](https://www.runoob.com/lua/lua-tutorial.html) <!-- nofollow -->
- [Lua-Redis 脚本参考](https://github.com/changsongl/lua-redis) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初始化 Lua 学习分册，新增基础、高级及实践案例笔记。
