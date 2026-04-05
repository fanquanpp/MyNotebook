---
url: "https://jkchao.github.io/typescript-book-chinese/tips/performance.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "Compilation", "Optimization", "Performance"]
---

<a id="title"></a>
# TypeScript 编译优化

<a id="1"></a>
## 1 基础类型 (Basic Types)

在大型项目中，编译速度至关重要。通过合理配置 `tsc` 选项，可以大幅缩短反馈循环。

<a id="1.1"></a>
### 1.1 编译上下文与性能

TypeScript 通过 `tsconfig.json` 的 `include` 和 `exclude` 选项精准控制编译范围，避免无效文件干扰。

<a id="1.2"></a>
### 1.2 增量编译

```json
{
  "compilerOptions": {
    "incremental": true,
    "tsBuildInfoFile": "./.tsbuildinfo"
  }
}
```

<a id="2"></a>
## 2 运行 tsc 命令验证

1. 在项目中启用 `incremental` 模式。

2. 多次运行 `tsc` 命令。

3. 观察输出：

   ```bash
   tsc --diagnostics
   ```

   查看 `Check time` 和 `Total time` 的变化。

<a id="3"></a>
## 3 高级类型 (Advanced Types)

过于复杂的嵌套类型（如深度递归的映射类型）会显著拖慢编译器的类型检查速度。

<a id="4"></a>
## 4 工程化 (Engineering)

在 CI/CD 环境中，使用 `--noEmit` 仅进行类型检查，可以加快流水线运行速度，而不必输出无效的 JavaScript 文件。

<a id="5"></a>
## 5 编译优化 (Compilation Optimization)

- **`isolatedModules`**: 确保每个文件可以被独立编译。
- **`skipLibCheck`**: 跳过 `node_modules` 的类型检查。
- **`transpileOnly`**: 在开发模式下，利用构建工具跳过类型检查。

<a id="6"></a>
## 6 迁移案例 (Migration Cases)

在迁移至新版 TypeScript 时，通过开启 `--noUnusedLocals` 和 `--noUnusedParameters` 可以顺便清理代码。

[深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/)<!-- nofollow -->
