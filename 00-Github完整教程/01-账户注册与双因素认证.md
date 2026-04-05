<!--
文件名称：账户注册与双因素认证
原名称：无（新建）
用途描述：指导完成 GitHub 注册、邮箱验证、密码策略与 2FA（双因素认证）；面向首次使用平台的读者；前置：无；关联 README.md、02-SSH与HTTPS远程配置.md。
创建/更新：2026-04-05
-->

# 账户注册与双因素认证（2FA）

## 1. 背景

**GitHub** 托管代码与协作元数据，账户一旦泄露可能导致仓库被恶意推送、私有代码外泄。除强密码外，**2FA（双因素认证，Two-Factor Authentication）** 是平台推荐的安全基线：在「密码」之外增加第二因子（通常为 **TOTP（基于时间的一次性密码）** 或硬件密钥）。

## 2. 原理简述

登录时依次验证：（1）你知道的 —— 密码；（2）你持有的设备 —— 手机验证器 App 生成的 6 位动态码，或 **WebAuthn（网页认证）** 兼容的安全密钥。**SMS（短信）** 作为第二因子易受 **SIM 卡交换攻击（SIM swapping）** 影响，官方更推荐 **TOTP** 或 **Passkey（通行密钥）**。

## 3. 操作步骤（含截图占位）

### 3.1 注册与邮箱

1. 访问 GitHub 注册页，使用常用邮箱（工作邮箱需符合雇主政策）。
2. 完成邮箱验证，避免无法接收组织邀请或安全告警。

**截图占位**：`[图 01-1] 注册成功后的 Profile 概览页`

### 3.2 开启 2FA

路径：**Settings → Password and authentication → Two-factor authentication**。选择验证器 App，用 **Google Authenticator**、**Microsoft Authenticator** 等扫描 **QR Code（二维码）**，保存好 **Recovery codes（恢复码）**（离线纸质备份）。

**截图占位**：`[图 01-2] 2FA 已启用状态与恢复码下载提示`

### 3.3 命令行登录提示（与后续 SSH/HTTPS 配合）

启用 2FA 后，通过 **HTTPS** 访问仓库时，不能使用账户密码，需要使用 **PAT（Personal Access Token，个人访问令牌）** 代替密码（详见 `02-SSH与HTTPS远程配置.md`）。

```bash
# 使用 Git 凭据管理器缓存 PAT，避免每次输入（Windows 会弹出系统对话框）
git config --global credential.helper manager  # Windows：Git Credential Manager
# 修改 credential.helper 会影响全局凭据存储方式，团队规范另有要求时以团队为准
```

## 4. 可运行配置示例

### 示例 A：检查全局用户名与邮箱（与提交署名一致）

```bash
git config --global user.name "Your Name"   # 提交作者显示名，建议与 GitHub 展示名一致
git config --global user.email "you@example.com"   # 须为 GitHub 已验证邮箱，否则贡献统计可能不绿
```

### 示例 B：`.gitconfig` 片段（理解即可，勿提交含密钥的真实文件）

```ini
# [user] 节：影响 git commit 的 Author 字段
[user]
    name = Your Name
    email = you@example.com
```

## 5. 常见坑点

- **恢复码丢失且手机不可用**：账户锁定风险极高，务必离线保存恢复码。
- **公司 SSO（单点登录）**：组织可能强制 **SAML** 登录，个人令牌策略以组织文档为准。
- **多账户**：不同 GitHub 账号建议不同浏览器配置或使用 **SSH config 多 Host** 区分（见文档 02）。

## 6. 最佳实践

- 优先 **TOTP + 硬件密钥** 组合；定期轮换 **PAT** 并最小权限（只勾选所需 `scope`）。
- 开启 **登录通知** 与 **可疑活动告警**（Settings → Notifications / Security）。

## 7. 故障诊断脚本（检查本地 Git 身份）

```bash
git config --global --list | findstr user   # Windows：筛选 user.name / user.email
# 输出异常时重新设置 user.name / user.email 并检查邮箱是否在 GitHub 已验证
```

## 延伸阅读

- [GitHub：配置 2FA](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
