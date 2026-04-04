> # Git 命令参考手册

## 目录

- [1. 环境配置](#1-环境配置)
- [2. 仓库管理](#2-仓库管理)
- [3. 基本操作](#3-基本操作)
- [4. 分支管理](#4-分支管理)
- [5. 远程仓库操作](#5-远程仓库操作)
- [6. 撤销操作](#6-撤销操作)
- [7. 高级操作](#7-高级操作)
- [8. 实用技巧](#8-实用技巧)

## 1. 环境配置

### 基本配置

```bash
# 配置用户名
git config --global user.name "你的用户名"

# 配置邮箱
git config --global user.email "你的邮箱"

# 查看配置
git config --list
```

### 高级配置

```bash
# 解决 Windows 下中文文件名乱码问题
git config --global core.quotepath false

# 设置默认编辑器
git config --global core.editor "code --wait"

# 设置差异比较工具
git config --global diff.tool vscode
git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"
```

## 2. 仓库管理

### 初始化仓库

```bash
# 初始化本地仓库
git init

# 克隆远程仓库
git clone <仓库地址>

# 克隆指定分支
git clone -b <分支名> <仓库地址>

# 克隆指定深度
git clone --depth 1 <仓库地址>
```

## 3. 基本操作

### 状态管理

```bash
# 查看状态
git status

# 查看详细状态（包括忽略的文件）
git status --ignored
```

### 暂存与提交

```bash
# 添加单个文件到暂存区
git add <文件名>

# 添加所有文件到暂存区
git add .

# 添加指定类型的文件
git add *.md

# 提交到本地仓库
git commit -m "提交说明"

# 提交时自动添加修改的文件
git commit -am "提交说明"

# 查看提交历史
git log

# 查看简洁的提交历史
git log --oneline

# 查看指定数量的提交历史
git log -n 5
```

## 4. 分支管理

### 分支操作

```bash
# 查看分支
git branch

# 查看远程分支
git branch -r

# 查看所有分支（本地和远程）
git branch -a

# 创建分支
git branch <分支名>

# 切换分支
git checkout <分支名>
# 或
git switch <分支名>

# 创建并切换分支
git checkout -b <分支名>
# 或
git switch -c <分支名>

# 合并分支
git merge <分支名>

# 删除分支
git branch -d <分支名>

# 强制删除分支
git branch -D <分支名>
```

## 5. 远程仓库操作

### 远程仓库管理

```bash
# 关联远程仓库
git remote add origin <仓库地址>

# 查看远程仓库信息
git remote -v

# 重命名远程仓库
git remote rename origin upstream

# 删除远程仓库
git remote remove origin
```

### 推送与拉取

```bash
# 首次推送到远程仓库
git push -u origin <分支名>

# 推送到远程仓库
git push

# 推送指定分支
git push origin <分支名>

# 拉取远程仓库
git pull

# 拉取指定分支
git pull origin <分支名>

# 强制推送（谨慎使用）
git push -f origin <分支名>
```

## 6. 撤销操作

### 工作区与暂存区

```bash
# 撤销工作区修改
git checkout -- <文件名>

# 撤销暂存区修改
git reset HEAD <文件名>

# 撤销所有暂存区修改
git reset HEAD .
```

### 提交撤销

```bash
# 撤销最近一次提交（保留修改）
git reset --soft HEAD~1

# 撤销最近一次提交（丢弃修改）
git reset --hard HEAD~1

# 撤销指定提交
git reset --hard <提交哈希>

# 修改最近一次提交信息
git commit --amend -m "新的提交信息"
```

## 7. 高级操作

### 标签管理

```bash
# 创建标签
git tag <标签名>

# 创建带注释的标签
git tag -a <标签名> -m "标签说明"

# 查看标签
git tag

# 推送标签到远程
git push origin <标签名>

# 推送所有标签到远程
git push origin --tags
```

###  stash 操作

```bash
# 暂存当前修改
git stash

# 查看暂存列表
git stash list

# 恢复最近的暂存
git stash pop

# 恢复指定暂存
git stash apply stash@{1}

# 删除暂存
git stash drop stash@{1}

# 清空暂存列表
git stash clear
```

### 日志与差异

```bash
# 查看详细的提交历史
git log -p

# 查看指定文件的修改历史
git log -p <文件名>

# 查看工作区与暂存区的差异
git diff

# 查看暂存区与本地仓库的差异
git diff --cached

# 查看两次提交之间的差异
git diff <提交1> <提交2>
```

## 8. 实用技巧

### 忽略文件

创建 `.gitignore` 文件，添加需要忽略的文件或目录：

```gitignore
# 忽略 node_modules 目录
node_modules/

# 忽略日志文件
*.log

# 忽略编译产物
dist/
build/

# 忽略环境变量文件
.env
.env.local

# 忽略 IDE 配置文件
.vscode/
.idea/
```

### 别名设置

```bash
# 设置别名
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 --stat"
```

### 常见问题解决

```bash
# 解决合并冲突后继续合并
git add .
git commit

# 查看冲突文件
git diff

# 放弃合并
git merge --abort

# 清理未跟踪的文件
git clean -f

# 清理未跟踪的文件和目录
git clean -fd
```

