> # Git 基础操作指南

## 目录

- [1. 首次使用 Git：全局配置](#1-首次使用-git-全局配置)
- [2. 本地仓库基础操作](#2-本地仓库基础操作)
  - [2.1 初始化/获取仓库](#21-初始化获取仓库)
  - [2.2 提交代码到仓库](#22-提交代码到仓库)
  - [2.3 基本操作流程](#23-基本操作流程)
- [3. 关联远程仓库与推送](#3-关联远程仓库与推送)
  - [3.1 首次推送（建立关联）](#31-首次推送建立关联)
  - [3.2 后续推送（日常提交）](#32-后续推送日常提交)
- [4. 常用查看与辅助命令](#4-常用查看与辅助命令)
- [5. 完整流程示例](#5-完整流程示例)
- [6. 快速操作指南](#6-快速操作指南)
  - [6.1 VSCode 中的操作](#61-vscode-中的操作)
  - [6.2 完整操作流程总结](#62-完整操作流程总结)
- [7. 关键总结](#7-关键总结)

## 1. 首次使用 Git：全局配置

在任何 Git 操作前，需要先告诉 Git 你是谁，这将用于记录提交者信息。

### 配置步骤

```bash
# 1. 设置用户名（替换为你的名字）
git config --global user.name "你的用户名（可用中文，或者与 GitHub 相同）"

# 2. 设置邮箱（替换为你的邮箱）
git config --global user.email "你的邮箱地址（与 GitHub 相同）"

# 3. (可选但推荐) 解决 Windows 下中文文件名乱码问题
git config --global core.quotepath false

# 4. 查看配置
git config --list
```

## 2. 本地仓库基础操作

### 2.1 初始化/获取仓库

```bash
# A: 初始化仓库
git init

# B：从远程克隆一个已有的仓库（例如从 GitHub/Gitee）
git clone <仓库地址>
```

### 2.2 提交代码到仓库

#### 基本流程

```bash
# 1. 查看当前状态
git status

# 2. 将所有修改添加到暂存区
git add .

# 3. 将暂存区的内容提交到本地仓库（引号内写本次提交的说明）
git commit -m "描述你做了什么修改"
```

### 2.3 基本操作流程

```bash
# 1. 添加修改到暂存区
git add .

# 2. 提交到本地仓库
git commit -m "描述"

# 3. 推送到远程仓库
git push
```

## 3. 关联远程仓库与推送

### 3.1 首次推送（建立关联）

如果是**第一次**把本地代码推送到远程仓库，需要先关联并设置“上游分支”。

```bash
# 1. (如果还没关联远程仓库) 关联远程仓库（替换为你的仓库地址）
git remote add origin <你的远程仓库URL>

# 2. 首次推送到远程 main 分支，并关联上游（关键：-u 参数）
# 作用：以后直接 git push 即可，不用再写分支名
git push -u origin main
```

> **注意**：旧版默认分支常用 `master`，如果默认分支是 `master`，就把 `main` 换成 `master`。现在基本都是 `main`。

### 3.2 后续推送（日常提交）

首次推送成功后，**以后的日常推送**就不需要 `-u` 参数。

```bash
# 1. 拉取远程最新代码（防止冲突，建议每次 push 前先 pull）
git pull

# 2. 直接推送到远程（因为首次已经用 -u 关联过了）
git push
```

## 4. 常用查看与辅助命令

```bash
# 1. 查看提交历史（按 q 退出）
git log

# 2. 查看当前分支
git branch

# 3. 查看远程仓库信息
git remote -v

# 4. 查看工作区和暂存区的差异
git diff

# 5. 查看暂存区和本地仓库的差异
git diff --cached
```

## 5. 完整流程示例

### 新项目初始化与推送

```bash
# 1. 全局配置（仅第一次）
git config --global user.name "用户名称（操作者名称）"
git config --global user.email "GitHub邮箱地址"
# 1-1.（可选操作）解决中文乱码问题
git config --global core.quotepath false

# 2. 新建/进入项目文件夹并初始化
mkdir my-project
cd my-project
# 2-1. 初始化 Git 仓库
git init

# 3. 写代码，然后提交
git add .
git commit -m "初始化项目"

# 4. 关联远程仓库（替换为你的地址）
git remote add origin https://github.com/xxx/my-project.git

# 5. 首次推送（带 -u）
git push -u origin main
```

### 日常开发流程

```bash
# --- 第二天修改了代码 ---
# 1. 查看修改状态
git status

# 2. 添加修改
git add .

# 3. 提交修改
git commit -m "新增了登录功能"

# 4. 拉取远程更新（防止冲突）
git pull

# 5. 推送到远程仓库
git push
```

## 6. 快速操作指南

### 6.1 VSCode 中的操作

```bash
# 1. 打开终端

# 2. 添加修改
git add .

# 3. 提交修改
git commit -m "描述"

# 4. 首次推送
git push -u origin main

# 5. 后续推送
git push
```

### 6.2 完整操作流程总结

```bash
# 初始化本地仓库
git init

# 添加文件到暂存区
git add .

# 提交更改
git commit -m "Initial commit"

# 添加远程仓库
git remote add origin <远程仓库地址>

# 拉取远程更改（如果远程仓库已有内容）
git pull origin main --allow-unrelated-histories

# 推送到远程仓库
git push -u origin main
```

## 7. 关键总结

- **`git push -u origin main`**：仅用于**第一次**推送，目的是“绑定”本地和远程分支。
- **`git push`**：绑定之后，所有后续推送都使用这个命令。
- **好习惯**：推送前先 `git pull`，避免代码冲突。
- **提交信息**：提交信息应该清晰明了，描述本次修改的内容。
- **分支管理**：合理使用分支可以更好地管理代码，避免直接在主分支上开发。
  