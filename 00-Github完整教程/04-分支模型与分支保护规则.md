<!--
文件名称：分支模型与分支保护规则
原名称：无（新建）
用途描述：说明 Git Flow、GitHub Flow 与 GitHub 分支保护、必需审查、状态检查；面向负责规范协作的维护者；前置：04-Git版本控制 分支篇；关联 05、07。
创建/更新：2026-04-05
-->

# 分支模型与分支保护规则

## 1. 背景

多人协作时，若所有人直接向默认分支推送，容易造成 **集成冲突** 与 **未经审查的代码** 上线。**分支模型（branching model）** 约定「谁在什么分支上开发、如何合并」；**分支保护（branch protection）** 则在平台侧强制规则（必需 **PR（Pull Request）**、必需 **CI（持续集成）** 通过等）。

## 2. 原理：Git Flow 与 GitHub Flow

- **Git Flow**：长期存在 `main`/`master`（生产）、`develop`（集成）、`feature/*`、`release/*`、`hotfix/*`；适合发布周期明确的软件，分支较多，学习成本高。
- **GitHub Flow**：围绕 `main` 短生命周期 **feature 分支**，合并靠 **PR + Code Review**；适合 **持续交付（CD）** 与 Web 服务，为 GitHub 生态默认心智。

**对比**：Git Flow 强调版本与热修分支；GitHub Flow 强调小步快跑与 **部署流水线（deployment pipeline）** 自动化。

## 3. GitHub 分支保护配置（网页）

路径：**Settings → Branches → Branch protection rules → Add rule**。

常用选项：

- **Require a pull request before merging**：禁止直推，强制走 PR。
- **Require approvals**：最少审查人数；可要求 **CODEOWNERS** 中指定所有者批准。
- **Require status checks to pass**：必须通过的 **Check（检查）** 名称（来自 Actions 或其它 GitHub App）。
- **Include administrators**：是否对管理员同样生效（建议生产分支开启）。

**截图占位**：`[图 04-1] 分支保护规则中 status checks 列表`

## 4. CODEOWNERS 示例（仓库根目录 `.github/CODEOWNERS`）

```gitignore
# 语法：模式  @团队或用户
/docs/        @doc-team          # /docs/ 下变更需要 doc-team 成员审查
*.js          @frontend-owner    # 所有 .js 文件变更需要指定审查者
```

`CODEOWNERS` 文件本身被合并进默认分支后生效；模式匹配顺序有规则，详见官方文档。

## 5. 命令示例：分支日常操作

```bash
git checkout main
git pull origin main
git checkout -b feature/add-login   # 从 main 拉出功能分支
# ... 开发与 commit ...
git push -u origin feature/add-login  # 首次推送建立上游，便于打开 PR
```

## 6. 常见坑点

- **Status check 名称写错**：Actions job 改名后，保护规则里旧名称不生效，导致 PR 永远等不到「绿灯」。
- **强制推送（force push）**：`git push --force` 会改写历史，被保护分支通常禁止或需额外权限。
- **Fork 工作流**：保护规则作用于 **上游仓库**；贡献者在 **fork** 上可自行分支，通过 PR 合入上游。

## 7. 最佳实践

- 默认分支只接受 **squash merge** 或 **merge commit** 二选一，团队统一策略，保持历史可读。
- 对 **release 分支** 启用最严保护；对 **experiment** 分支可放宽以加速试验。

## 延伸阅读

- [GitHub Flow 指南](https://docs.github.com/en/get-started/using-github/github-flow) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
