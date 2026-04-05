# HTML5 表单与验证 (Forms & Validation)

> @Author: Anonymous
> @Category: HTML5 Basics
> @Description: 新增输入类型、表单属性及原生客户端验证。 | Input types, form attributes, and native validation.

## 1. 新增输入类型 (Input Types)
HTML5 引入了更多具有特定用途的类型：
- `email`: 验证邮箱格式。
- `url`: 验证网址格式。
- `number`: 数字输入 (支持 `min`, `max`, `step`)。
- `range`: 滑动条。
- `date` / `month` / `week`: 日期选择器。
- `color`: 颜色选择器。
- `search`: 搜索框。

## 2. 表单增强属性 (Attributes)
- **`placeholder`**: 提示占位符。
- **`required`**: 必填项。
- **`autofocus`**: 自动聚焦。
- **`autocomplete`**: 自动补全。
- **`pattern`**: 正则表达式验证。
- **`multiple`**: 允许上传多个文件。

## 3. 表单元素 (Elements)
- `<form>`: 定义表单。
- `<input>`: 输入框。
- `<select>` + `<option>`: 下拉框。
- `<textarea>`: 文本域。
- `<button>`: 按钮 (默认 `type="submit"`)。
- `<datalist>`: 输入建议列表。

## 4. 客户端验证
HTML5 提供原生验证，无需 JS 即可拦截非法提交：
```html
<form>
  <input type="email" required placeholder="请输入邮箱">
  <input type="submit" value="提交">
</form>
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 HTML5 表单新特性。
