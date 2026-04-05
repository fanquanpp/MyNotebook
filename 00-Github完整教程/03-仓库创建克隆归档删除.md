<!--
文件名称：仓库创建、克隆、归档、删除
原名称：无（新建）
用途描述：覆盖 GitHub 上仓库从新建到归档、删除的完整操作与 Git 命令；面向需要管理项目生命周期的读者；前置：02；关联 05、10。
创建/更新：2026-04-05
-->

# 仓库创建、克隆、归档、删除

## 1. 背景

**Repository（仓库）** 是 GitHub 上的项目容器，包含 **Git 对象**、**Issues**、**Pull Requests**、**Actions** 等。理解 **可见性（public / private）** 与 **License（许可证）** 对开源合规很重要。

## 2. 原理要点

- **克隆（clone）**：复制远程仓库到本地，默认拉取默认分支并建立 **remote `origin`**。
- **归档（archive）**：仓库只读，禁止 Issues/PR 等新活动，适合结项保留。
- **删除（delete）**：不可恢复风险高，需 **二次确认** 与组织策略审批。

## 3. 在网页上创建仓库

**截图占位**：`[图 03-1] New repository 页面填写名称、可见性、初始化 README`

推荐勾选 **Add a README** 以便立即克隆；**.gitignore** 与 **License** 可按技术栈选择。

## 4. 命令示例

### 示例 A：克隆（HTTPS）

```bash
git clone https://github.com/OWNER/REPO.git
cd REPO
git remote -v   # 查看 origin 的 fetch/push URL，确认协议为 https
```

### 示例 B：克隆（SSH）

```bash
git clone git@github.com:OWNER/REPO.git
cd REPO
git status      # 确认工作区干净或提示分支名（如 main）
```

### 示例 C：将已有本地目录推送到新远程（空仓库）

```bash
git init
git branch -M main
git remote add origin https://github.com/OWNER/REPO.git
git add .
git commit -m "chore: initial import"   # chore 表示杂项维护类提交，常见于初始化
git push -u origin main                 # -u 设置上游分支，后续可直接 git push
```

## 5. 归档与删除（网页操作）

路径：**Settings → General → Danger Zone**。

- **Archive this repository**：只读快照，**截图占位** `[图 03-2] 归档确认对话框`。
- **Delete this repository**：需输入 `OWNER/REPO` 全名；删除前务必备份 **mirror 克隆**：

```bash
git clone --mirror https://github.com/OWNER/REPO.git
# --mirror 包含所有分支与引用，用于完整备份裸仓库
```

## 6. 常见坑点

- **大仓库首次克隆慢**：使用 **浅克隆** `git clone --depth 1` 仅取最近一次提交（后续可加深）。
- **LFS（Large File Storage）** 未安装导致大文件拉取失败：需安装 **Git LFS** 并 `git lfs pull`。
- **默认分支改名**：旧文档写 `master`，新仓库多为 `main`，注意 **CI 与分支保护** 同步更新。

## 7. 最佳实践

- 删除前 **export Issues/ Wiki**（第三方工具或 API）；组织仓库遵守 **保留策略**。
- 私有转公开前审计 **历史提交中的密钥**（见 `10-常见问题与故障诊断.md`）。

## 延伸阅读

- [GitHub：管理仓库设置](https://docs.github.com/en/repositories) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
