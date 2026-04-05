<!--
文件名称：GitHub Actions 语法、市场与 CI/CD 示例
原名称：无（新建）
用途描述：说明 workflow 语法、Actions 市场、并以 Node/Java/Python 各一例演示 CI；面向需在仓库内跑自动化的读者；前置：04；关联 08、10。
创建/更新：2026-04-05
-->

# GitHub Actions 语法、市场与 CI/CD 完整示例

## 1. 背景

**GitHub Actions** 是内置于仓库的 **CI/CD（持续集成/持续交付）** 引擎：用 **YAML** 描述 **workflow（工作流）**，在 **runner（运行器）** 上执行 **job（任务）**。**GitHub Marketplace** 提供可复用的 **Action（动作）** 封装常见步骤。

核心概念：**on** 触发条件、**jobs** 并行或依赖、**steps** 顺序执行、**${{ secrets.XXX }}** 读取密钥。

## 2. 原理：最小 workflow 骨架

```yaml
name: demo-workflow
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]
jobs:
  build:
    runs-on: ubuntu-latest   # runs-on：GitHub 托管 Ubuntu 运行器
    steps:
      - uses: actions/checkout@v4   # uses：引用 Marketplace 中的 Action
      - name: Print node
        run: node -v   # run：直接执行 shell 命令
```

**截图占位**：`[图 07-1] Actions 页成功运行的 workflow 可视化`

## 3. 示例 A：Node.js 项目（安装依赖、构建、测试）

`.github/workflows/node-ci.yml`：

```yaml
name: Node CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [18.x, 20.x]   # matrix：矩阵策略，多版本并行
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}   # 注入矩阵变量
          cache: npm
      - run: npm ci          # npm ci：按 lockfile 干净安装，适合 CI
      - run: npm run build --if-present
      - run: npm test --if-present
```

## 4. 示例 B：Java（Maven）项目

`.github/workflows/java-ci.yml`：

```yaml
name: Java CI
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-java@v4
        with:
          distribution: temurin
          java-version: "17"   # java-version：与生产 JDK 对齐
          cache: maven
      - name: Maven verify
        run: mvn -B verify     # -B：batch 模式减少日志噪音
```

## 5. 示例 C：Python（pytest）项目

`.github/workflows/python-ci.yml`：

```yaml
name: Python CI
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: "3.11"
      - name: Install deps
        run: |
          python -m pip install --upgrade pip
          pip install pytest
          if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
      - name: Pytest
        run: pytest -q
```

## 6. 常见坑点

- **`actions/checkout` 深度**：默认浅克隆可能导致 **版本号插件** 读不到 tag；可设 `fetch-depth: 0`。
- **缓存 key 失效**：依赖变更后缓存旧层，需 bump key 或 **cache 策略** 调整。
- **分钟数配额**：私有库受 **Actions 分钟** 计费限制，见 `10` 排错篇。

## 7. 最佳实践

- 同一工作流拆 **lint / test / deploy** job，用 **needs** 表达依赖。
- 机密使用 **Repository secrets** 或 **Environment**，勿打印到日志。

## 延伸阅读

- [Workflow syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions) <!-- nofollow -->

## 更新日志

- **2026-04-05**：初版。
