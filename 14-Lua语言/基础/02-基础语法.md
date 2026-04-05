# 程序结构与基本语法 (Program Structure & Basic Syntax)

> @Author: Anonymous
> @Category: Lua Basics
> @Description: Lua 的变量声明、注释、作用域及控制流。 | Variable declarations, comments, scope, and control flow in Lua.

## 1. 变量与赋值 (Variables)
Lua 是动态类型语言。
- **全局变量**: 默认所有变量都是全局的。
- **局部变量**: 使用 `local` 关键字。**强烈建议优先使用局部变量** (性能更好且安全)。

## 2. 注释规范 (Comments)
- **单行**: `-- 内容`。
- **多行**: `--[[ 内容 ]]`。

## 3. 控制流 (Control Flow)
### 3.1 条件分支
```lua
if age < 18 then
    print("Minor")
elseif age < 60 then
    print("Adult")
else
    print("Senior")
end
```

### 3.2 循环结构
- **`while`**: `while cond do ... end`
- **`repeat...until`**: 至少执行一次。
- **数值 `for`**: `for i=1, 10, 1 do ... end`
- **泛型 `for`**: 配合迭代器使用。
  ```lua
  for k, v in pairs(table) do ... end
  ```

## 4. 逻辑运算符
- `and`, `or`, `not`。
- **注意**: `0` 和 `""` (空字符串) 在 Lua 中都视为 **True**。只有 `false` 和 `nil` 为假。

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 Lua 基础语法细节。
