> 大学生变活人联盟 学习笔记
>
> <br />
>
> Git命令手册

***

# Git 基础操作命令手册

## 1. 环境配置

- 配置用户名：`git config --global user.name "你的用户名"`
- 配置邮箱：`git config --global user.email "你的邮箱"`
- 查看配置：`git config --list`

## 2. 创建与克隆仓库

- 初始化本地仓库：`git init`
- 克隆远程仓库：`git clone <仓库地址>`

## 3. 基本操作

- 查看状态：`git status`
- 添加文件到暂存区：`git add <文件名>` 或 `git add .`（添加所有）
- 提交到本地仓库：`git commit -m "提交说明"`
- 查看提交历史：`git log`

## 4. 分支管理

- 查看分支：`git branch`
- 创建分支：`git branch <分支名>`
- 切换分支：`git checkout <分支名>` 或 `git switch <分支名>`
- 创建并切换分支：`git checkout -b <分支名>`
- 合并分支：`git merge <分支名>`
- 删除分支：`git branch -d <分支名>`

## 5. 远程仓库操作

- 关联远程仓库：`git remote add origin <仓库地址>`
- 推送到远程仓库：`git push -u origin <分支名>`（首次）或 `git push`
- 拉取远程仓库：`git pull`
- 查看远程仓库：`git remote -v`

## 6. 撤销操作

- 撤销工作区修改：`git checkout -- <文件名>`
- 撤销暂存区：`git reset HEAD <文件名>`
- 撤销提交（保留修改）：`git reset --soft HEAD~1`
- 撤销提交（丢弃修改）：`git reset --hard HEAD~1`

