# MySQL 安装与配置 | MySQL Installation and Configuration

<!--
作者：fanquanpp
创建日期：2026-04-05
版本：v1.0.0
-->

## 目录 | Table of Contents
- [1. 概述 | Overview](#1-概述--overview)
- [2. Windows 系统安装 | Windows Installation](#2-windows-系统安装--windows-installation)
- [3. Linux 系统安装 | Linux Installation](#3-linux-系统安装--linux-installation)
- [4. macOS 系统安装 | macOS Installation](#4-macos-系统安装--macos-installation)
- [5. 配置详解 | Configuration Details](#5-配置详解--configuration-details)
- [6. 快速验证 | Quick Verification](#6-快速验证--quick-verification)
- [7. 总结 | Summary](#7-总结--summary)
- [8. 延伸阅读 | Further Reading](#8-延伸阅读--further-reading)

---

## 1. 概述 | Overview
MySQL 的安装与配置是构建稳定数据库环境的基础。正确安装与初始优化可以显著提升后续开发效率与系统性能。

## 2. Windows 系统安装 | Windows Installation
推荐使用 **MySQL Installer** 进行图形化安装。
1. **下载**：[MySQL Installer](https://dev.mysql.com/downloads/installer/)。
2. **选择类型**：建议选择 `Developer Default`。
3. **关键配置**：设置 `root` 密码，选择 `utf8mb4` 字符集。

## 3. Linux 系统安装 | Linux Installation
以 Ubuntu 为例，使用 `apt` 包管理器：
```bash
# 执行环境: Ubuntu 22.04+
# 依赖: sudo 权限
sudo apt update
sudo apt install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql
```
<!-- expected_output
Synchronizing state of mysql.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable mysql
-->

## 4. macOS 系统安装 | macOS Installation
推荐使用 **Homebrew**：
```bash
# 执行环境: macOS Sonoma+
# 依赖: Homebrew
brew install mysql
brew services start mysql
```

## 5. 配置详解 | Configuration Details
主要配置文件为 `my.cnf` (Linux/macOS) 或 `my.ini` (Windows)。
```ini
[mysqld]
port = 3306
character-set-server = utf8mb4
max_connections = 200
innodb_buffer_pool_size = 1 GB
```

## 6. 快速验证 | Quick Verification
```bash
# 执行环境: Shell / CMD
# 验证 MySQL 是否响应
mysqladmin -u root -p version
```
<!-- expected_output
mysqladmin  Ver 8.0.35 for Linux on x86_64
Copyright (c) 2000, 2023, Oracle and/or its affiliates.
...
Server version          8.0.35
Protocol version        10
Connection              Localhost via UNIX socket
UNIX socket             /var/run/mysqld/mysqld.sock
Uptime:                 1 hour 12 min 3 sec
-->

## 7. 总结 | Summary
无论是 Windows、Linux 还是 macOS，安装 MySQL 的核心在于服务的启动与 `root` 用户权限的初始配置。建议始终使用 `utf8mb4` 以支持 Emoji 及多语言。

## 8. 延伸阅读 | Further Reading
- [MySQL 8.0 官方安装指南 (Official Installation Guide)](https://dev.mysql.com/doc/refman/8.0/en/installing.html) <!-- nofollow -->
- [Linux 下 MySQL 性能调优 (Performance Tuning on Linux)](https://www.digitalocean.com/community/tutorials/how-to-optimize-mysql-with-mysql-tuner-on-ubuntu-20-04) <!-- nofollow -->
- [Docker 部署 MySQL (MySQL on Docker)](https://hub.docker.com/_/mysql) <!-- nofollow -->
- [MySQL 安全配置向导 (mysql_secure_installation)](https://dev.mysql.com/doc/refman/8.0/en/mysql-secure-installation.html) <!-- nofollow -->
- [DBeaver 数据库管理工具 (DBeaver Management Tool)](https://dbeaver.io/) <!-- nofollow -->
- [Navicat for MySQL](https://www.navicat.com/en/products/navicat-for-mysql) <!-- nofollow -->

---
**更新日志 | Changelog**
- 2026-04-05: 标准化文档结构，补充 TOC、Linux/macOS 安装示例及延伸阅读。
- 2026-04-05: 修正数字与单位间的空格规范。
