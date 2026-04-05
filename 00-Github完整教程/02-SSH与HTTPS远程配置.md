<!--
文件名称：SSH 与 HTTPS 远程配置
原名称：无（新建）
用途描述：对比 SSH 与 HTTPS，配置公钥、测试连接、HTTPS+PAT；面向需在多台机器上克隆与推送的开发者；前置：01；关联 03、10。
创建/更新：2026-04-05
-->

# SSH 与 HTTPS 远程配置

## 1. 背景

与远程 **GitHub 仓库（repository）** 通信常见两种方式：**SSH（Secure Shell）** 使用密钥对认证；**HTTPS** 使用 **PAT（个人访问令牌）** 作为密码替代。团队规范常指定其一，个人项目可任选。

## 2. 原理

- **SSH**：本地 **私钥（private key）** 保密，**公钥（public key）** 登记在 GitHub；握手时验证签名，适合高频推送。
- **HTTPS**：TLS 加密传输，凭据为 PAT；防火墙环境有时只允许 443 端口，HTTPS 更通用。

## 3. SSH：生成密钥与登记

```bash
# 生成 Ed25519 密钥（推荐算法名 ssh-ed25519），-C 仅为注释，常写邮箱
ssh-keygen -t ed25519 -C "you@example.com" -f "%USERPROFILE%\.ssh\id_ed25519_github" -N ""
# -N "" 表示空密码短语；生产环境可设密码短语增加私钥泄露时的安全裕度
```

将 `id_ed25519_github.pub` 内容粘贴到：**GitHub → Settings → SSH and GPG keys → New SSH key**。

**截图占位**：`[图 02-1] SSH 公钥已添加列表`

### 测试连接

```bash
ssh -T git@github.com   # 首次连接会提示指纹（Host key），核对官方文档后输入 yes
# 成功时显示：Hi username! You've successfully authenticated...
```

### 多账户：SSH config 示例

```sshconfig
# 文件路径：~/.ssh/config（Windows 同路径）
Host github.com-work
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_work   # IdentityFile 指定该 Host 使用的私钥路径

Host github.com-personal
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_home
```

克隆时使用：`git clone git@github.com-work:org/repo.git`（将 `Host` 别名嵌入 URL 需按团队约定，常见写法是使用 `git@github.com:` 默认 Host 配合 **ssh-agent** 管理多钥）。

## 4. HTTPS：PAT 与凭据存储

在 **Settings → Developer settings → Personal access tokens** 创建 **Fine-grained token（细粒度令牌）** 或 **Classic**，勾选 `repo` 等所需范围。

```bash
# 将远程从 SSH 改为 HTTPS 的示例（origin 为远程名 remote name）
git remote set-url origin https://github.com/OWNER/REPO.git
# 之后 git push 时用户名填 GitHub 用户名，密码处粘贴 PAT
```

**截图占位**：`[图 02-2] Fine-grained token 权限勾选界面`

## 5. 常见坑点

- **Permission denied (publickey)**：公钥未添加、ssh-agent 未加载私钥、或 `~/.ssh/config` Host 不匹配。
- **PAT 过期**：Classic token 设了有效期，需在到期前轮换。
- **代理与企业 MITM**：公司解密 HTTPS 时需信任企业根证书，否则 Git HTTPS 失败。

## 6. 最佳实践

- 私钥文件权限：Linux/macOS 上 `chmod 600`；Windows 使用 **OpenSSH** 默认权限即可。
- 优先 **Fine-grained PAT** 最小权限；CI 使用 **GitHub Actions** 提供的 `GITHUB_TOKEN`，勿把个人 PAT 写入仓库明文。

## 延伸阅读

- [GitHub：SSH 密钥](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
