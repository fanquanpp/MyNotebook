---
url: "https://jkchao.github.io/typescript-book-chinese/tips/migrating-from-js.html"
version: "Latest"
update_date: "2026-04-05"
tags: ["TypeScript", "Migration", "BestPractices", "JavaScript"]
---

<a id="title"></a>
# TypeScript 迁移案例

<a id="1"></a>
## 1 基础类型 (Basic Types)

从 JavaScript 到 TypeScript 的迁移过程应该是渐进式的，通过合理利用 `allowJs` 和 `checkJs` 选项，可以平滑过渡。

<a id="1.1"></a>
### 1.1 迁移策略

- **策略一**: 将 `.js` 重命名为 `.ts`，然后修复所有报错。
- **策略二**: 保持 `.js` 不变，使用 JSDoc 类型注解配合 `checkJs`。
- **策略三**: 使用 `any` 先行覆盖，后续重构。

<a id="2"></a>
## 2 运行 tsc 命令验证

1. 在项目中混合使用 `.js` 和 `.ts` 文件。

2. 修改 `tsconfig.json`：

   ```json
   {
     "compilerOptions": {
       "allowJs": true,
       "checkJs": true
     }
   }
   ```

3. 执行校验：

   ```bash
   tsc --strict
   ```

<a id="3"></a>
## 3 高级类型 (Advanced Types)

迁移时，对于旧代码中广泛使用的动态属性注入，可以使用索引签名（Index Signatures）来初步描述。

```typescript
interface DynamicObj {
    [key: string]: any;
}
```

<a id="4"></a>
## 4 工程化 (Engineering)

引入 `@types` 类型声明库，为常用的第三方依赖（如 `lodash`, `jquery`）提供类型支持。

<a id="5"></a>
## 5 编译优化 (Compilation Optimization)

开启 `noImplicitAny: false` 可以在迁移初期减少大量因遗漏类型注解而产生的报错，待代码稳定后再逐步开启。

<a id="6"></a>
## 6 迁移案例 (Migration Cases)

- **React 项目迁移**: 将 `.jsx` 转换为 `.tsx`，利用 `React.FC` 定义函数组件。
- **Node.js 项目迁移**: 使用 `@types/node`，将 `require` 语法重构为 `import`。

[深入理解 TypeScript](https://jkchao.github.io/typescript-book-chinese/)<!-- nofollow -->
