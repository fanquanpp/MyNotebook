<!--
文件名称：GitHub Pages 部署静态站点（Jekyll、VitePress、Hugo）
原名称：无（新建）
用途描述：三种静态站点方案在 GitHub Pages 上的构建与发布要点；面向需要文档站或博客的读者；前置：07；关联 05、10。
创建/更新：2026-04-05
-->

# GitHub Pages 多站点方案（Jekyll、VitePress、Hugo）

## 1. 背景

**GitHub Pages** 可从分支或 **GitHub Actions** 发布静态文件到 `*.github.io` 或自定义域名。常见生成器：**Jekyll（Ruby）**、**VitePress（Vite + Vue 文档框架）**、**Hugo（Go）**。三者均输出 HTML/CSS/JS，差异在 **模板语言**、**构建速度** 与 **生态**。

## 2. 原理

- **站点来源**：**Settings → Pages → Build and deployment**：来源可选 **Deploy from a branch** 或 **GitHub Actions**。
- **自定义域名与 HTTPS**：在仓库设置 **Custom domain**，DNS **CNAME** 或 **A 记录** 指向 GitHub；自动 **Let's Encrypt** 证书。

**截图占位**：`[图 08-1] Pages 设置中 Source 为 GitHub Actions`

## 3. 方案 A：Jekyll

默认 **GitHub Pages** 对 **Jekyll** 有内置支持（**Gemfile** 指定主题与插件）。典型目录：`_config.yml`、`_posts/`。

本地预览（需 Ruby 环境）：

```bash
bundle install
bundle exec jekyll serve   # 本地起服务，浏览器访问提示端口
# jekyll serve：开发模式带增量构建
```

**注意**：部分 **Jekyll 插件** 在 GitHub 托管构建中不可用，需查 **允许列表** 或使用 **Actions 自行 build** 再上传 `artifact`。

## 4. 方案 B：VitePress

适合技术文档，**Markdown** 驱动，**Vue** 组件增强。

```bash
npm create vitepress@latest docs   # 交互式创建文档站点骨架
cd docs && npm install
npm run docs:dev    # 本地预览；生产构建一般为 npm run docs:build，输出到 .vitepress/dist 等
```

**CI 思路**：`npm ci` → `npm run docs:build` → 用 **actions/upload-pages-artifact** + **actions/deploy-pages** 部署（与 **workflow 权限** `permissions: pages: write` 配合）。

## 5. 方案 C：Hugo

极快静态构建，**Go** 单二进制。

```bash
hugo new site quickstart --format yaml
cd quickstart
hugo server -D   # -D：包含草稿；本地预览
hugo --minify    # 生成 public/ 目录为静态产物
```

**主题** 常以 **git submodule** 引入；克隆仓库时需 `git submodule update --init --recursive`，否则 **CI 构建缺主题**（见 `10`）。

## 6. 常见坑点

- **base 路径**：仓库 **Project Pages**（`username.github.io/repo/`）需设置 **base URL** / **assetPrefix**，否则资源 404。
- **CNAME 被覆盖**：部分生成器会清掉 `CNAME`，需在构建后复制或使用插件保留。
- **Actions 部署权限**：`GITHUB_TOKEN` 默认权限不足时需 **workflow 级别 permissions**。

## 7. 最佳实践

- 生产环境 **minify** 与 **缓存头**；大资源用 **CDN**。
- **预览环境**：每个 PR 用 **Preview deployment**（第三方 App 或 **workflow_run**）在合并前看效果。

## 延伸阅读

- [GitHub Pages 文档](https://docs.github.com/en/pages) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
