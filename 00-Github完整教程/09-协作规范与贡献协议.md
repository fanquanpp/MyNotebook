<!--
文件名称：协作开发规范（Commit、PR、Review、CLA、DCO）
原名称：无（新建）
用途描述：统一提交信息、PR 模板、代码审查清单与 CLA/DCO 合规说明；面向贡献者与维护者；前置：05；关联 06、术语表。
创建/更新：2026-04-05
-->

# 协作开发规范：Commit Message、PR 模板、Code Review、CLA 与 DCO

## 1. 背景

规模化协作依赖 **可检索的提交历史**、**可执行的审查流程** 与 **法律层面的贡献授权**。**Conventional Commits（约定式提交）** 广泛用于生成 **CHANGELOG**；**PR 模板** 减少来回询问；**CLA（贡献者许可协议）** 与 **DCO（开发者来源证书）** 用于明确 **IP（知识产权）** 归属。

## 2. Commit Message 约定（原理）

常见格式：`<type>(<scope>): <subject>`

- **type**：`feat` 新功能、`fix` 修复、`docs` 文档、`chore` 杂项、`refactor` 重构等。
- **scope**：可选，模块名。
- **subject**：祈使句、英文小写开头（团队可统一中文）。

示例：

```text
feat(auth): add refresh token rotation
fix(api): handle 429 from upstream
docs(readme): clarify install steps
```

**Breaking change** 可在 **footer** 用 `BREAKING CHANGE:` 说明。

## 3. PR 模板（`.github/pull_request_template.md` 示例）

```markdown
## 背景 / 关联 Issue
- Closes #

## 变更说明
-

## 测试
- [ ] 单元测试
- [ ] 手动验证步骤：…

## 检查清单
- [ ] 已更新文档
- [ ] 无敏感信息/密钥
```

**截图占位**：`[图 09-1] 新建 PR 时自动带出模板`

## 4. Code Review 清单（维护者视角）

- **正确性**：逻辑与边界、错误处理、并发与回滚。
- **安全**：**注入**、**路径遍历**、**依赖漏洞**（**SBOM** / **Dependabot**）。
- **可维护性**：命名、重复代码、测试覆盖。
- **性能与成本**：热点路径、**N+1 查询**、**Actions 分钟**。

## 5. CLA 与 DCO

- **CLA**：组织级法律协议，签署一次或按 PR 检查；常用机器人 **CLA Assistant**。
- **DCO**：提交附 **`Signed-off-by`** 行，表示遵守 **Developer Certificate of Origin**。

```bash
git commit -s -m "fix: typo in parser"
# -s：自动附加 Signed-off-by，邮箱须与 Git 配置一致
```

## 6. 常见坑点

- **Squash merge** 后默认提交信息丢失细粒度，可在合并界面编辑最终说明。
- **DCO 未签**：CI 失败，补 `git commit --amend -s` 后 **force push**（注意保护分支策略）。

## 7. 最佳实践

- **CODEOWNERS** + **required reviews** 组合；**CODEOWNERS** 见文档 `04`。
- 对外项目 **SECURITY.md** 说明漏洞上报渠道。

## 延伸阅读

- [Conventional Commits](https://www.conventionalcommits.org/) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
