> 大学生变活人联盟 学习笔记
>
> <br />
>
> Git基础

***

# Git 基础操作

## 一、首次使用 Git：全局配置

在任何 Git 操作前，先告诉 Git 你是谁（用于记录提交者信息）
打开git bash

```bash
# 1. 设置用户名（替换为你的名字）
git config --global user.name "你的用户名（可用中文，或者与GitHub相同）"

# 2. 设置邮箱（替换为你的邮箱）
git config --global user.email "你的邮箱地址（与GitHub相同）"

# 3. (可选但推荐) 解决 Windows 下中文文件名乱码问题
git config --global core.quotepath false
```

***

## 二、本地仓库基础操作

### 1. 初始化/获取仓库

```bash
# A: 初始化仓库
git init

# B：从远程克隆一个已有的仓库（例如从 GitHub/Gitee）
git clone <仓库地址>
```

### 2. 提交代码到仓库（三步）

```bash
# 1. 将所有修改添加到暂存区
git add .

# 2. 将暂存区的内容提交到本地仓库（引号内写本次提交的说明）
git commit -m "描述你做了什么修改"

# (可选操作) 查看当前状态，确认是否还有未提交的内容
git status

# 3-1. 提交代码（首次）
git push -u origin main

# 3-2. 提交代码(非首次)
git push
```

### 2-1.基本操作（三个命令）

```bash
# 1.
git add .

# 2.
git commit -m "描述"

# 3.
git push
```

***

> 重点部分

## 三、关联远程仓库与推送

已在本地做了 `git commit`

### 1. 首次推送（建立关联）

> 我们可以直接使用VSCode里的图形化界面操作这些步骤（使用GitHub账号登录VSCode）

如果是**第一次**把本地代码推送到远程仓库，需要先关联并设置“上游分支”。

```bash
# 1. (如果还没关联远程仓库) 关联远程仓库（替换为你的仓库地址）
git remote add origin <你的远程仓库URL>

# 2. 首次推送到远程 main 分支，并关联上游（关键：-u 参数）
# 作用：以后直接 git push 即可，不用再写分支名
git push -u origin main
```

> **注意**：旧版默认分支常用`master`,如果默认分支是 `master`，就把 `main` 换成 `master`。
> 现在基本都是`main`

***

### 2. 后续推送（日常提交）

首次推送成功后，**以后的日常推送**就不需要 `-u`。

```bash
# 1. 拉取远程最新代码（防止冲突，建议每次 push 前先 pull）
git pull

# 2. 直接推送到远程（因为首次已经用 -u 关联过了）
git push
```

***

## 四、常用查看与辅助命令

```bash
# 1. 查看提交历史（按 q 退出）
git log

# 2. 查看当前分支
git branch

# 3. 查看远程仓库信息
git remote -v

# 4. 查看工作区和暂存区的差异
git diff
```

***

## 五、完整流程示例

```bash
# 1. 全局配置（仅第一次）
git config --global user.name "用户名称（操作者名称）"
git config --global user.email "GitHub邮箱地址"
# 1-1.（可选操作）
git config --global core.quotepath false

# 2. 新建/进入项目文件夹并初始化(VSCode终端里可同样操作)
mkdir my-project
cd my-project
# 2-1.（VSCode中最主要的操作，一般只这一个命令就行）
git init

# 3. 写代码，然后提交
git add .
git commit -m "初始化项目"

# 4. 关联远程仓库（替换为你的地址）
git remote add origin 你的仓库地址
git remote add origin https://github.com/xxx/my-project.git

# 5. 首次推送（带 -u）
git push -u origin main

# --- 第二天修改了代码 ---
# 6. 后续日常操作
git add .
git commit -m "新增了登录功能"
git pull          # 先拉取别人的更新
git push          # 直接推送，无需 -u
```

***

## VSCode里的操作

```bash
> 打开终端

# 1.
    git add .

# 2.
    git commit -m "描述"

# 3.(第一次)
    git push -u origin main

# 3-1.(之后)
    git push
```

### 关键总结

- **`git push -u origin main`**：仅用于**第一次**推送，目的是“绑定”本地和远程分支。
- **`git push`**：绑定之后，所有后续推送都用这个。
- **好习惯**：推送前先 `git pull`，避免代码冲突。

