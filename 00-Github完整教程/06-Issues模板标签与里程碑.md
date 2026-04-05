<!--
文件名称：Issues 模板、标签、里程碑与自动关闭
原名称：无（新建）
用途描述：配置 Issue 模板、Labels、Milestones、GitHub 自动关闭关键词与项目板衔接；面向产品与工程双角色读者；前置：无；关联 05、09。
创建/更新：2026-04-05
-->

# Issues 模板、标签、里程碑与自动化

## 1. 背景

**Issue（议题）** 用于跟踪缺陷、功能请求与讨论。**模板（template）** 统一报告格式，降低沟通成本；**Labels（标签）** 分类与筛选；**Milestones（里程碑）** 聚合版本目标与进度。

## 2. 原理：Issue 模板存放位置

在仓库 `.github/ISSUE_TEMPLATE/` 下使用 **YAML front matter** 的 Markdown，或在 **Settings → General → Features → Issues → Set up templates** 向导生成。

### 示例：`bug_report.md`（节选）

```markdown
---
name: Bug 报告
about: 报告可复现的缺陷
title: "[BUG] "
labels: bug
assignees: ""
---
## 环境
- OS：例如 Windows 11
- 版本：例如 v1.2.3

## 复现步骤
1. …
2. …

## 期望 vs 实际
- 期望：…
- 实际：…
```

**截图占位**：`[图 06-1] Issues 页 Choose a template`

## 3. 标签与里程碑

- **Labels**：如 `bug`、`enhancement`、`good first issue`（适合新手）；颜色与命名宜全仓统一。
- **Milestones**：绑定 **due date（截止日期）**，在 **Projects（项目看板）** 中可跨仓库汇总（组织级 **Projects**）。

## 4. 自动关闭关键词（与 PR/commit 配合）

当 **PR 合并到默认分支** 或 **commit 推送到默认分支** 时，描述或提交信息中含以下模式可关闭 Issue（英文关键词）：

- `closes #123`、`close #123`、`closed #123`
- `fixes`、`fix`、`fixed`
- `resolves`、`resolve`、`resolved`

示例：

```text
feat(auth): add OAuth callback

Closes #45
```

**注意**：大小写不敏感；**fork 场景** 下关闭的是 **同一仓库** 内 Issue，跨仓库需 `username/repo#123` 形式（权限与链接解析见官方说明）。

## 5. GitHub Actions 自动打标签（配置示例）

`.github/workflows/label.yml`（理解用，非即插即用）：

```yaml
# name：工作流在 Actions 列表中的显示名
name: Label new issues
on:
  issues:
    types: [opened]
jobs:
  label:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/labeler@v5   # labeler：按路径自动加标签的 Action
        with:
          repo-token: "${{ secrets.GITHUB_TOKEN }}"
```

`GITHUB_TOKEN` 由 Actions 自动注入，权限受 **workflow 权限** 设置约束。

## 6. 常见坑点

- **模板不显示**：路径或 YAML 头错误；或仓库 **Issues 功能关闭**。
- **关键词未关闭 Issue**：合并方式不是 **merge 到默认分支**，或 PR 来自 fork 权限限制。
- **里程碑百分比**：仅统计 **已关闭** Issue，与 **Projects** 字段可能不同步。

## 7. 最佳实践

- 为 **安全漏洞** 使用 **Security advisories** 而非公开 Issue。
- 对外项目提供 **`CONTRIBUTING.md`** 说明如何搜重复 Issue 再开新帖。

## 延伸阅读

- [Configuring issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
