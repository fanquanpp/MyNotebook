> # Git 命令参考手册

> fanquanpp的个人学习笔记

最新版本上传时间：2026-04-04 10:00:00

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

### 1.1 基本配置

```bash
# 配置用户名（全局）
git config --global user.name "你的用户名"

# 配置邮箱（全局）
git config --global user.email "你的邮箱"

# 配置用户名（仅当前仓库）
git config user.name "你的用户名"

# 配置邮箱（仅当前仓库）
git config user.email "你的邮箱"

# 查看所有配置
git config --list

# 查看特定配置
git config user.name
git config user.email
```

### 1.2 高级配置

```bash
# 解决 Windows 下中文文件名乱码问题
git config --global core.quotepath false

# 设置默认编辑器
git config --global core.editor "code --wait"

# 设置差异比较工具
git config --global diff.tool vscode
git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"

# 设置合并工具
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd "code --wait $MERGED"

# 设置自动换行处理
git config --global core.autocrlf true  # Windows 系统
git config --global core.autocrlf input  # Mac/Linux 系统

# 设置提交时自动删除尾部空格
git config --global core.trimwhitespace true
```

## 2. 仓库管理

### 2.1 初始化仓库

```bash
# 在当前目录初始化 Git 仓库
git init

# 在指定目录初始化 Git 仓库
git init <目录名>
```

### 2.2 克隆远程仓库

```bash
# 克隆默认分支
git clone <仓库地址>

# 克隆指定分支
git clone -b <分支名> <仓库地址>

# 克隆指定深度（只获取最近的 N 个提交）
git clone --depth 1 <仓库地址>  # 只获取最近 1 个提交

# 克隆时指定目录名
git clone <仓库地址> <目录名>

# 克隆所有分支
git clone --mirror <仓库地址>  # 通常用于创建镜像仓库
```

## 3. 基本操作

### 3.1 状态管理

```bash
# 查看当前仓库状态
git status

# 查看详细状态（包括忽略的文件）
git status --ignored

# 以短格式查看状态
git status -s  # 或 git status --short
```

### 3.2 暂存与提交

```bash
# 添加单个文件到暂存区
git add <文件名>

# 添加所有文件到暂存区
git add .

# 添加指定类型的文件
git add *.md

# 添加目录到暂存区
git add <目录名>/

# 从暂存区移除文件
git reset HEAD <文件名>

# 提交到本地仓库
git commit -m "提交说明"

# 提交时自动添加修改的文件
git commit -am "提交说明"

# 修改最近一次提交信息
git commit --amend -m "新的提交说明"

# 查看提交历史
git log

# 查看简洁的提交历史
git log --oneline

# 查看指定数量的提交历史
git log -n 5

# 查看提交历史并显示每次提交的变更内容
git log -p

# 查看指定文件的提交历史
git log --oneline <文件名>
```

## 4. 分支管理

### 4.1 分支操作

```bash
# 查看本地分支
git branch

# 查看远程分支
git branch -r

# 查看所有分支（本地和远程）
git branch -a

# 查看分支及其最后一次提交
git branch -v

# 创建分支
git branch <分支名>

# 切换分支
git checkout <分支名>
# 或（Git 2.23+）
git switch <分支名>

# 创建并切换分支
git checkout -b <分支名>
# 或（Git 2.23+）
git switch -c <分支名>

# 合并分支到当前分支
git merge <分支名>

# 删除分支（仅当分支已合并）
git branch -d <分支名>

# 强制删除分支（无论是否合并）
git branch -D <分支名>

# 重命名分支
git branch -m <旧分支名> <新分支名>

# 设置分支的上游分支
git branch --set-upstream-to=origin/<远程分支名> <本地分支名>
```

## 5. 远程仓库操作

### 5.1 远程仓库管理

```bash
# 添加远程仓库
git remote add <远程仓库名> <仓库地址>

# 查看远程仓库信息
git remote -v

# 查看远程仓库详细信息
git remote show <远程仓库名>

# 重命名远程仓库
git remote rename <旧远程仓库名> <新远程仓库名>

# 删除远程仓库
git remote remove <远程仓库名>

# 更新远程仓库的 URL
git remote set-url <远程仓库名> <新仓库地址>
```

### 5.2 推送与拉取

```bash
# 首次推送到远程仓库并设置上游分支
git push -u <远程仓库名> <本地分支名>:<远程分支名>

# 推送到远程仓库（已设置上游分支）
git push

# 推送指定分支
git push <远程仓库名> <本地分支名>:<远程分支名>

# 推送所有分支
git push --all <远程仓库名>

# 强制推送（谨慎使用）
git push -f <远程仓库名> <分支名>

# 拉取远程仓库（已设置上游分支）
git pull

# 拉取指定分支
git pull <远程仓库名> <远程分支名>:<本地分支名>

# 拉取远程仓库但不合并
git fetch <远程仓库名>

# 从远程仓库获取所有更新
git fetch --all
```

## 6. 撤销操作

### 6.1 工作区与暂存区

```bash
# 撤销工作区中单个文件的修改
git checkout -- <文件名>

# 撤销工作区中所有文件的修改
git checkout .

# 撤销暂存区中单个文件的修改
git reset HEAD <文件名>

# 撤销暂存区中所有文件的修改
git reset HEAD .

# 从暂存区中移除文件但保留工作区文件
git rm --cached <文件名>
```

### 6.2 提交撤销

```bash
# 撤销最近一次提交（保留修改在暂存区）
git reset --soft HEAD~1

# 撤销最近一次提交（保留修改在工作区）
git reset --mixed HEAD~1  # 或 git reset HEAD~1

# 撤销最近一次提交（丢弃所有修改）
git reset --hard HEAD~1

# 撤销指定提交（保留之后的修改）
git reset --soft <提交哈希>

# 撤销指定提交（丢弃所有修改）
git reset --hard <提交哈希>

# 修改最近一次提交信息
git commit --amend -m "新的提交信息"

# 向最近一次提交添加更多修改
git add <文件名>
git commit --amend --no-edit
```

## 7. 高级操作

### 7.1 标签管理

```bash
# 创建轻量标签
git tag <标签名>

# 创建带注释的标签
git tag -a <标签名> -m "标签说明"

# 创建带 GPG 签名的标签
git tag -s <标签名> -m "标签说明"

# 查看所有标签
git tag

# 查看标签详细信息
git show <标签名>

# 推送单个标签到远程
git push <远程仓库名> <标签名>

# 推送所有标签到远程
git push <远程仓库名> --tags

# 删除本地标签
git tag -d <标签名>

# 删除远程标签
git push <远程仓库名> --delete <标签名>

# 从标签检出代码
git checkout <标签名>
```

### 7.2  stash 操作

```bash
# 暂存当前修改
git stash

# 暂存当前修改并添加注释
git stash push -m "暂存说明"

# 查看暂存列表
git stash list

# 查看指定暂存的详细内容
git stash show stash@{1}

# 恢复最近的暂存并从暂存列表中删除
git stash pop

# 恢复指定暂存并从暂存列表中删除
git stash pop stash@{1}

# 恢复最近的暂存但保留在暂存列表中
git stash apply

# 恢复指定暂存但保留在暂存列表中
git stash apply stash@{1}

# 删除指定暂存
git stash drop stash@{1}

# 清空所有暂存
git stash clear
```

### 7.3 日志与差异

```bash
# 查看详细的提交历史
git log -p

# 查看指定文件的修改历史
git log -p <文件名>

# 查看指定作者的提交历史
git log --author="作者名"

# 查看指定时间段的提交历史
git log --since="2026-04-01" --until="2026-04-30"

# 查看工作区与暂存区的差异
git diff

# 查看暂存区与本地仓库的差异
git diff --cached

# 查看工作区与指定提交的差异
git diff <提交哈希>

# 查看两次提交之间的差异
git diff <提交1> <提交2>

# 查看指定文件在两次提交之间的差异
git diff <提交1> <提交2> <文件名>
```

## 8. 实用技巧

### 8.1 忽略文件

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

# 忽略操作系统文件
.DS_Store
Thumbs.db

# 忽略临时文件
*.tmp
*.temp

# 忽略测试覆盖率文件
coverage/

# 忽略打包文件
*.zip
*.tar.gz
```

### 8.2 别名设置

```bash
# 设置常用别名
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.unstage "reset HEAD --"
git config --global alias.last "log -1 --stat"
git config --global alias.logg "log --oneline --graph --all"
git config --global alias.df "diff"
git config --global alias.dfc "diff --cached"
git config --global alias.cp "cherry-pick"
```

### 8.3 常见问题解决

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

# 清理未跟踪的文件、目录和忽略的文件
git clean -fdx

# 查找大文件
git ls-files -z | xargs -0 ls -l | sort -k5,5nr | head -20

# 压缩 Git 仓库大小
git gc --aggressive --prune=now

# 查看 Git 仓库大小
du -sh .git
```

### 8.4 性能优化

```bash
# 配置 Git 缓存大小
git config --global core.packedGitLimit 512m
git config --global core.packedGitWindowSize 512m

# 配置 Git 压缩级别
git config --global core.compression 9

# 配置 Git 并行操作数量
git config --global pack.threads 4

# 配置 Git 远程操作超时
git config --global http.postBuffer 524288000
```

