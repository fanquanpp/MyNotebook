# ATL 动画语言 (ATL - Animation and Transformation Language)

> @Author: Anonymous
> @Category: Renpy Advanced
> @Description: 精灵动画、平滑过渡、复杂路径及图像变换。 | Sprite animations, smooth transitions, paths, and transformations.

## 1. ATL 概述 (Overview)
ATL 是 Ren'Py 中用于定义图像变换和动画的专用语言。

## 2. 基础变换 (Transformation)
```renpy
transform my_move:
    xalign 0.0 yalign 1.0
    linear 2.0 xalign 1.0
```

## 3. 常用指令
- **`linear`**: 线性插值。
- **`ease` / `easein` / `easeout`**: 平滑加速/减速。
- **`pause`**: 暂停。
- **`repeat`**: 循环。
- **`parallel`**: 并行执行多个动画。

## 4. 复杂效果示例
### 4.1 呼吸效果 (Breathing)
```renpy
transform breathe:
    zoom 1.0
    linear 2.0 zoom 1.05
    linear 2.0 zoom 1.0
    repeat
```

### 4.2 抖动效果 (Shake)
```renpy
transform shake:
    xoffset 0
    linear 0.1 xoffset 10
    linear 0.1 xoffset -10
    linear 0.1 xoffset 0
    repeat
```

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 ATL 动画语言用法。
