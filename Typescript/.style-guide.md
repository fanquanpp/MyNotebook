<a id="title"></a>
# TypeScript Style Guide | TypeScript 开发规范

<a id="1"></a>
## 1 . 命名规范
- **变量与函数**: 统一使用 `camelCase`。
- **类、接口、枚举**: 统一使用 `PascalCase`。
- **常量**: 统一使用 `UPPER_SNAKE_CASE`。
- **禁止**: 禁止使用拼音命名，禁止使用无意义的缩写。

<a id="2"></a>
## 2 . 目录结构
采用 `domain/difficulty/scenario` 三级范式。
- 示例: `web/advanced/auth-middleware.ts`

<a id="3"></a>
## 3 . 模块化要求
- 每个文件仅包含一个核心概念。
- 单个文件不得超过 300 行。
- 严格开启 `--strict` 模式。

<a id="4"></a>
## 4 . 注释模板
函数级注释必须包含以下要素：
```typescript
/**
 * 功能: 简述函数用途
 * 参数: param1 - 参数描述
 * 返回值: 描述返回内容
 * 可能异常: Error - 触发条件
 * 时间复杂度: O(1)
 */
function example(param1: number): string {
    // ...
}
```

<a id="5"></a>
## 5 . 异常与日志
- 公共函数必须使用 `try/catch` 捕获。
- 日志统一使用 `winston` 或同等库，输出 JSON 格式。
- 级别: ERROR/WARN/INFO/DEBUG。
