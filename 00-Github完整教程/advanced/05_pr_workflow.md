<!--
文件名称：Pull Request 完整生命周期
原名称：无（新建）
用途描述：从 Fork、克隆、分支、提交、推送、开 PR、审查、合并到同步上游的端到端说明；面向开源贡献者与内网协作者；前置：02、03、04；关联 09、10。
创建/更新：2026-04-05
-->

# Pull Request 完整协作流程

## 1. 背景

**PR（Pull Request，拉取请求）** 是 GitHub 上请求将某分支合并入目标分支的审查单元，承载 **diff（差异）**、**讨论**、**审查意见** 与 **CI 结果**。开源常见流程：**Fork（复刻）** 上游仓库到个人空间，在 **fork** 上开发后向上游提 PR。

## 2. 流程概览（原理）

1. **Fork**：在网页点 Fork，得到 `your-user/upstream-repo` 副本。
2. **Clone**：克隆 **自己的 fork** 到本地（SSH/HTTPS 见文档 02）。
3. **Branch**：从 `main` 创建 `feature/xxx` 分支，避免在 `main` 上直接开发。
4. **Commit**：小步提交，信息遵循规范（见文档 09）。
5. **Push**：推送到 **origin**（即你的 fork）。
6. **Open PR**：在网页 **Compare & pull request**，选 **base（上游 main）** 与 **compare（你的分支）**。
7. **Code Review**：维护者提意见，你 **push 新 commit** 自动更新同一 PR。
8. **Merge**：审查通过且检查通过后合并；常用 **Squash and merge** 压缩为一条提交。
9. **Sync upstream**：本地与 fork 同步上游新提交，避免长期分叉。

## 3. 同步上游（命令示例）

添加上游远程并拉取：

```bash
git remote add upstream https://github.com/ORIGINAL_OWNER/REPO.git   # upstream 远程名约定指上游
git fetch upstream
git checkout main
git merge upstream/main    # 或使用 git rebase upstream/main，团队有争议时以贡献指南为准
git push origin main       # 更新你的 fork 的 main
```

**截图占位**：`[图 05-1] Compare 页面 base/compare 分支选择`

## 4. PR 描述与关联 Issue

在 PR 正文使用关键词自动关闭 Issue（合并到默认分支时生效）：

```markdown
## 说明
修复登录校验 closes #12
# closes 为关键词之一，另有 fixes、resolves（英文）等，详见 06
```

## 5. 审查与合并后清理

```bash
git branch -d feature/add-login     # 删除本地已合并分支
git push origin --delete feature/add-login   # 删除远程 fork 上的功能分支（可选）
```

## 6. 常见坑点

- **base 选错**：PR 对到了 fork 的 `main` 而非上游，导致合错仓库。
- **大范围无关改动**：格式化整库会使 **diff** 不可读，审查困难；应单独 PR。
- **合并后未拉取**：本地 `main` 落后，下次分支从旧点切出，又产生多余合并提交。

## 7. 最佳实践

- PR 保持 **小而专注**；**Draft PR** 用于未完成但需要 CI 的早期反馈。
- 使用 **Reviewers**、**Assignees**、**Labels** 明确责任；**CODEOWNERS** 自动请求审查（见 04）。

## 延伸阅读

- [About pull requests](https://docs.github.com/en/pull-requests) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
