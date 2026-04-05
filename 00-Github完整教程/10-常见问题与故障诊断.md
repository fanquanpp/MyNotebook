<!--
文件名称：常见问题排查与故障诊断
原名称：无（新建）
用途描述：汇总 Permission denied、大文件、换行、子模块、GPG、Actions 配额等排错路径；面向一线开发者；前置：02、07；关联 04-Git版本控制。
创建/更新：2026-04-05
-->

# 常见问题排查：Permission denied、大文件、LF/CRLF、Submodule、GPG、Actions

## 1. 背景

本地与 CI 常见问题多与 **认证**、**历史中的二进制大文件**、**跨平台换行**、**子模块未初始化**、**签名密钥** 与 **配额** 相关。本节给出 **可复制的诊断命令** 与 **修复方向**。

## 2. Permission denied (publickey)

**现象**：`git push` 或 `ssh -T git@github.com` 失败。

**诊断**：

```bash
ssh -vT git@github.com   # -v：详细日志，查看尝试了哪把密钥
```

**修复**：确认公钥已添加；**ssh-agent** 加载私钥：`ssh-add ~/.ssh/id_ed25519`；检查 `~/.ssh/config` 的 **Host** 与 **IdentityFile**。

## 3. Large file / 推送被拒（超过 100MB）

GitHub 单 **blob** 限制 **100MB**。历史中存在大文件即使用 **Git LFS** 迁移也需 **git filter-repo**（或 **BFG**）重写历史。

```bash
# 仅示例：安装 git-filter-repo 后按官方文档过滤路径；操作前务必备份
# git filter-repo --path LARGE.bin --invert-paths
```

**预防**：**pre-commit** 钩子拦截大文件；使用 **LFS** 跟踪 `*.psd` 等。

## 4. LF / CRLF 与 `.gitattributes`

**现象**：Windows 下整文件 **CRLF** 导致 diff 噪声或脚本 **shebang** 失败。

```gitattributes
* text=auto
*.sh text eol=lf
*.bat text eol=crlf
```

```bash
git add --renormalize .   # 按 .gitattributes 重新规范化行尾
```

## 5. Submodule 未更新

**现象**：克隆后子目录空或旧版本。

```bash
git submodule update --init --recursive
# --recursive：嵌套子模块一并初始化
```

## 6. GPG / SSH commit 签名

**GPG**：`git config commit.gpgsign true`，**公钥** 上传 GitHub；失败时检查 `gpg --list-secret-keys` 与 **TTY**。

**SSH 签名**（较新）：`git config gpg.format ssh`，与 **SSH key** 关联。

## 7. Actions 分钟数耗尽

**现象**：私有库 workflow **排队/失败**，账单显示 **minutes** 用尽。

**方向**：优化 **matrix**、**缓存**、**并发**；评估 **自托管 runner**；开源 **public** 仓库有 **免费额度** 政策以官方为准。

## 8. 综合诊断脚本（Bash，理解用）

```bash
#!/usr/bin/env bash
set -euo pipefail
echo "== remote =="; git remote -v
echo "== branch =="; git branch -vv
echo "== last commit =="; git log -1 --oneline
echo "== lfs =="; command -v git-lfs && git lfs version || echo "LFS not installed"
```

**截图占位**：`[图 10-1] Actions 失败日志中权限错误片段`

## 9. 延伸阅读

- [Troubleshooting connectivity](https://docs.github.com/en/authentication/troubleshooting-ssh) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
