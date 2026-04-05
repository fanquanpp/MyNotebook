<a id="title"></a>
# Git 核心知识点

<a id="1"></a>
## 1 . Git 概述

Git 是一个分布式版本控制系统，用于跟踪文件的变化，协调多人之间的工作。它是由 Linux 创始人 Linus Torvalds 于 2005 年创建的，现在被广泛用于软件开发和其他需要版本控制的场景。

<a id="1.1"></a>
### 1.1 Git 的核心特点
- **分布式**：每个开发者都有完整的代码仓库
- **高效**：处理大型项目时性能优异
- **安全**：使用 SHA-1 哈希算法确保数据完整性
- **灵活**：支持多种工作流程
- **强大的分支系统**：轻松创建和管理分支

<a id="2"></a>
## 2 . Git 基础概念

<a id="2.1"></a>
### 2.1 仓库（Repository）
- **本地仓库**：存储在本地的代码仓库
- **远程仓库**：存储在服务器上的代码仓库

<a id="2.2"></a>
### 2.2 工作区（Working Directory）
- 本地文件系统中实际的文件和目录
- 开发者直接修改的地方

<a id="2.3"></a>
### 2.3 暂存区（Staging Area）
- 临时保存修改的地方
- 位于 `.git/index` 文件中

<a id="2.4"></a>
### 2.4 版本库（Repository）
- 包含所有提交历史和对象的地方
- 位于 `.git` 目录中

<a id="2.5"></a>
### 2.5 提交（Commit）
- 对工作区和暂存区变更的快照
- 包含提交信息、作者、日期等元数据

<a id="2.6"></a>
### 2.6 分支（Branch）
- 指向特定提交的指针
- 默认分支为 `master` 或 `main`

<a id="2.7"></a>
### 2.7 合并（Merge）
- 将一个分支的更改合并到另一个分支

<a id="2.8"></a>
### 2.8 远程（Remote）
- 指向远程仓库的引用
- 通常命名为 `origin`

<a id="3"></a>
## 3 . Git 基本命令

<a id="3.1"></a>
### 3.1 初始化与克隆

```bash
# 初始化新仓库
git init

# 克隆远程仓库
git clone <repository-url>
```

<a id="3.2"></a>
### 3.2 基本操作

```bash
# 查看状态
git status

# 添加文件到暂存区
git add <file>
# 添加所有文件
git add .

# 提交更改
git commit -m "commit message"
# 提交所有更改
git commit -a -m "commit message"

# 查看提交历史
git log
# 查看简洁的提交历史
git log --oneline

# 查看文件差异
git diff
# 查看暂存区与上次提交的差异
git diff --cached
```

<a id="3.3"></a>
### 3.3 分支操作

```bash
# 查看分支
git branch
# 查看远程分支
git branch -r
# 查看所有分支
git branch -a

# 创建分支
git branch <branch-name>

# 切换分支
git checkout <branch-name>
# 创建并切换分支
git checkout -b <branch-name>

# 合并分支
git merge <branch-name>

# 删除分支
git branch -d <branch-name>
# 强制删除分支
git branch -D <branch-name>
```

<a id="3.4"></a>
### 3.4 远程操作

```bash
# 添加远程仓库
git remote add <remote-name> <repository-url>

# 查看远程仓库
git remote -v

# 拉取远程更改
git pull <remote-name> <branch-name>

# 推送更改到远程
git push <remote-name> <branch-name>
# 推送所有分支
git push --all <remote-name>

# 推送标签
git push --tags <remote-name>
```

<a id="3.5"></a>
### 3.5 标签操作

```bash
# 创建标签
git tag <tag-name>
# 创建带注释的标签
git tag -a <tag-name> -m "tag message"

# 查看标签
git tag

# 推送标签
git push <remote-name> <tag-name>

# 检出标签
git checkout <tag-name>
```

<a id="3.6"></a>
### 3.6 撤销操作

```bash
# 撤销工作区更改
git checkout -- <file>

# 撤销暂存区更改
git reset HEAD <file>

# 回退到指定提交
git reset --hard <commit-hash>

# 撤销最近的提交
git revert HEAD

# 撤销指定的提交
git revert <commit-hash>
```

<a id="3.7"></a>
### 3.7 高级操作

```bash
# 查看文件的历史变更
git blame <file>

# 查看提交之间的差异
git diff <commit1> <commit2>

# 交互式重写提交历史
git rebase -i <commit-hash>

# 保存当前工作状态
git stash
# 恢复保存的工作状态
git stash pop
# 查看保存的工作状态
git stash list
```

<a id="4"></a>
## 4 . Git 工作流程

<a id="4.1"></a>
### 4.1 集中式工作流

- 所有开发者直接在主分支上工作
- 适合小型团队和简单项目

<a id="4.2"></a>
### 4.2 功能分支工作流

- 为每个功能创建单独的分支
- 完成后合并到主分支
- 适合大多数项目

<a id="4.3"></a>
### 4.3 GitFlow 工作流

- 包含主分支、开发分支、功能分支、发布分支和热修复分支
- 适合大型项目和复杂的发布周期

<a id="4.4"></a>
### 4.4 Forking 工作流

- 开发者 fork 远程仓库
- 在自己的 fork 中工作
- 通过 Pull Request 贡献代码
- 适合开源项目

<a id="5"></a>
## 5 . Git 配置

<a id="5.1"></a>
### 5.1 全局配置

```bash
# 设置用户名
git config --global user.name "Your Name"

# 设置邮箱
git config --global user.email "your.email@example.com"

# 设置默认编辑器
git config --global core.editor "vim"

# 设置默认分支名称
git config --global init.defaultBranch main
```

<a id="5.2"></a>
### 5.2 本地配置

```bash
# 在当前仓库设置配置
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

<a id="5.3"></a>
### 5.3 配置文件

- **全局配置**：`~/.gitconfig`
- **本地配置**：`.git/config`

<a id="6"></a>
## 6 . Git 钩子

Git 钩子是在特定 Git 事件发生时自动执行的脚本。

<a id="6.1"></a>
### 6.1 常用钩子

- **pre-commit**：提交前执行
- **commit-msg**：提交消息验证
- **post-commit**：提交后执行
- **pre-push**：推送前执行

<a id="6.2"></a>
### 6.2 钩子示例

```bash
# pre-commit 钩子示例
#!/bin/sh
# 运行代码检查
npm run lint
```

<a id="7"></a>
## 7 . Git 最佳实践

<a id="7.1"></a>
### 7.1 提交规范

- **提交消息**：清晰、简洁、描述性
- **提交粒度**：每个提交应该解决一个问题
- **提交频率**：频繁提交，保持提交小而专注

<a id="7.2"></a>
### 7.2 分支管理

- **主分支**：保持稳定，只用于发布
- **开发分支**：用于集成新功能
- **功能分支**：用于开发特定功能
- **发布分支**：用于准备发布
- **热修复分支**：用于紧急修复

<a id="7.3"></a>
### 7.3 冲突解决

- **预防冲突**：频繁拉取和合并
- **解决冲突**：仔细检查冲突内容，手动解决
- **测试**：解决冲突后进行测试

<a id="7.4"></a>
### 7.4 代码审查

- **Pull Request**：使用 PR 进行代码审查
- **代码风格**：遵循项目的代码风格
- **测试**：确保代码通过测试

<a id="8"></a>
## 8 . Git 工具

<a id="8.1"></a>
### 8.1 图形化工具

- **Git GUI**：Git 自带的图形界面
- **GitHub Desktop**：GitHub 官方客户端
- **SourceTree**：Atlassian 开发的 Git 客户端
- **GitKraken**：跨平台 Git 客户端

<a id="8.2"></a>
### 8.2 命令行工具

- **git**：核心命令行工具
- **tig**：文本模式的 Git 界面
- **git-extras**：扩展 Git 功能的工具集

<a id="8.3"></a>
### 8.3 在线平台

- **GitHub**：最大的 Git 托管平台
- **GitLab**：开源的 Git 托管平台
- **Bitbucket**：Atlassian 的 Git 托管平台

<a id="9"></a>
## 9 . 常见问题与解决方案

<a id="9.1"></a>
### 9.1 提交错误

**问题**：提交了错误的文件或消息
**解决方案**：
- 撤销提交：`git reset --soft HEAD^`
- 修改提交消息：`git commit --amend -m "new message"`

<a id="9.2"></a>
### 9.2 分支冲突

**问题**：合并分支时发生冲突
**解决方案**：
- 手动编辑冲突文件
- 标记冲突已解决：`git add <file>`
- 完成合并：`git commit`

<a id="9.3"></a>
### 9.3 远程仓库问题

**问题**：无法推送更改到远程仓库
**解决方案**：
- 先拉取远程更改：`git pull`
- 解决冲突后再推送：`git push`

<a id="9.4"></a>
### 9.4 历史重写

**问题**：需要修改历史提交
**解决方案**：
- 使用`git rebase`重写历史
- 注意：不要重写已推送到远程的提交

<a id="10"></a>
## 10 . 示例工作流

<a id="10.1"></a>
### 10.1 基本工作流

1. **克隆仓库**：`git clone <repository-url>`
2. **创建分支**：`git checkout -b feature-branch`
3. **修改文件**：编辑代码
4. **添加更改**：`git add .`
5. **提交更改**：`git commit -m "Add new feature"`
6. **推送到远程**：`git push origin feature-branch`
7. **创建 Pull Request**：在 GitHub/GitLab 上创建 PR
8. **合并分支**：PR 通过后合并到主分支
9. **删除分支**：`git branch -d feature-branch`

<a id="10.2"></a>
### 10.2 团队协作工作流

1. **同步远程**：`git pull origin main`
2. **创建功能分支**：`git checkout -b feature/issue-123`
3. **开发功能**：实现功能并测试
4. **提交更改**：`git commit -m "Implement feature for issue #123"`
5. **推送到远程**：`git push origin feature/issue-123`
6. **创建 PR**：描述功能和相关问题
7. **代码审查**：团队成员审查代码
8. **解决反馈**：根据审查意见修改代码
9. **合并 PR**：代码通过审查后合并
10. **删除分支**：`git branch -d feature/issue-123`

<a id="11"></a>
## 11 . 总结

Git 是一个强大的版本控制系统，它提供了一套完整的工具来管理代码的变更和协作。通过掌握 Git 的核心概念和命令，你可以更有效地管理代码，提高开发效率，减少错误。

<a id="11.1"></a>
### 11.1 核心要点
- **分布式架构**：每个开发者都有完整的代码仓库
- **三个区域**：工作区、暂存区、版本库
- **分支系统**：灵活的分支管理
- **远程协作**：通过远程仓库进行团队协作
- **工作流程**：选择适合项目的工作流程

<a id="11.2"></a>
### 11.2 学习建议
- **实践**：通过实际项目练习 Git 命令
- **理解**：掌握 Git 的核心概念和工作原理
- **规范**：遵循 Git 最佳实践和团队规范
- **工具**：使用合适的 Git 工具提高效率
- **持续学习**：关注 Git 的新特性和最佳实践

通过不断学习和实践，你将能够熟练使用 Git，成为一名高效的开发者。