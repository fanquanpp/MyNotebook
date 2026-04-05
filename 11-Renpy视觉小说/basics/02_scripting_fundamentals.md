# Ren'Py 基础语法 (Ren'Py Scripting)

> @Author: Anonymous
> @Category: Renpy Basics
> @Description: 角色定义、对话、场景切换、显示图像及简单逻辑。 | Character definitions, dialogue, scenes, images, and basic logic.

## 1. 角色定义 (Characters)
```renpy
define e = Character("艾琳", color="#c8ffc8")
```

## 2. 对话与标签 (Dialogue & Labels)
- **`label`**: 定义脚本段落。
- **`say`**: 角色对话。
```renpy
label start:
    e "你好，欢迎来到 Ren'Py 的世界！"
    return
```

## 3. 图像操作 (Images)
- **`scene`**: 清除当前层并显示背景。
- **`show`**: 显示精灵。
- **`hide`**: 隐藏精灵。
```renpy
scene bg room
show eileen happy at left
```

## 4. 转换与位置 (Transitions & Position)
- **`with`**: 应用过渡效果 (如 `dissolve`, `fade`)。
- **位置**: `left`, `right`, `center`, `truecenter`。

## 5. 简单控制流
- **`jump`**: 跳转到标签。
- **`call`**: 调用标签并返回。
- **`menu`**: 选项分支。
```renpy
menu:
    "去公园":
        jump park
    "留在家里":
        jump home
```

---
### 更新日志 (Changelog)
- 2026-04-05: 拆分并细化 Ren'Py 基础脚本语法。
