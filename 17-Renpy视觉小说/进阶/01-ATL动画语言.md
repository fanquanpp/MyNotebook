# ATL 动画语言 (ATL - Animation and Transformation Language)

> @Author: Anonymous
> @Category: Renpy Advanced
> @Description: 精灵动画、平滑过渡、复杂路径及图像变换。 | Sprite animations, smooth transitions, paths, and transformations.

## 1. ATL 概述 (Overview)
ATL 是 Ren'Py 中用于定义图像变换和动画的专用语言，它允许开发者创建各种复杂的动画效果，包括位置移动、缩放、旋转、透明度变化等。

## 2. 基础变换 (Transformation)
### 2.1 基本语法
```renpy
transform my_move:
    xalign 0.0 yalign 1.0  # 初始位置
    linear 2.0 xalign 1.0  # 2秒内线性移动到右侧
```

### 2.2 变换属性
- **位置**: `xpos`, `ypos`, `xalign`, `yalign`, `xoffset`, `yoffset`
- **缩放**: `zoom`, `xzoom`, `yzoom`
- **旋转**: `rotate`, `rotatey`, `rotatez`
- **透明度**: `alpha`
- **颜色**: `color`
- **混合模式**: `blend`

## 3. 常用指令
### 3.1 时间控制
- **`linear`**: 线性插值，均匀变化
- **`ease`**: 平滑过渡，先快后慢
- **`easein`**: 缓入，从慢到快
- **`easeout`**: 缓出，从快到慢
- **`easeinout`**: 缓入缓出，先慢后快再慢
- **`pause`**: 暂停指定时间
- **`wait`**: 等待指定时间后继续

### 3.2 控制流
- **`repeat`**: 无限循环
- **`repeat n`**: 循环n次
- **`parallel`**: 并行执行多个动画
- **`block`**: 定义动画块
- **`if` / `elif` / `else`**: 条件判断
- **`while`**: 循环执行

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

### 4.3 淡入淡出效果 (Fade In/Out)
```renpy
transform fade_in:
    alpha 0.0
    linear 1.0 alpha 1.0

transform fade_out:
    alpha 1.0
    linear 1.0 alpha 0.0
```

### 4.4 旋转效果 (Rotation)
```renpy
transform spin:
    rotate 0
    linear 2.0 rotate 360
    repeat
```

### 4.5 路径动画 (Path Animation)
```renpy
transform path_move:
    subpixel True
    xpos 100 ypos 100
    bezier (200, 50, 300, 150, 400, 100)  # 贝塞尔曲线路径
    time 3.0
```

### 4.6 复合动画 (Combined Animation)
```renpy
transform complex_animation:
    parallel:
        linear 2.0 xalign 1.0
        linear 2.0 yalign 0.0
    parallel:
        linear 2.0 zoom 1.5
        linear 2.0 rotate 360
    pause 1.0
    linear 1.0 alpha 0.0
```

## 5. 高级特性
### 5.1 状态机 (State Machine)
```renpy
transform state_machine:
    idle:
        zoom 1.0
        pause 1.0
        choice:
            0.5: linear 0.2 zoom 1.05  # 50% 几率轻微缩放
            0.5: pass  # 50% 几率无动作
        repeat idle
    hover:
        zoom 1.1
        linear 0.3 zoom 1.15
        linear 0.3 zoom 1.1
        repeat hover
```

### 5.2 变量和表达式
```renpy
transform variable_animation(speed=1.0):
    xalign 0.0
    linear speed xalign 1.0
    linear speed xalign 0.0
    repeat
```

### 5.3 图像序列动画 (Image Sequence)
```renpy
define eileen_walk = Animation(
    "eileen_walk1.png", 0.1,
    "eileen_walk2.png", 0.1,
    "eileen_walk3.png", 0.1,
    "eileen_walk2.png", 0.1,
    loop=True
)
```

### 5.4 粒子效果 (Particle Effects)
```renpy
transform particle_effect:
    parallel:
        for i in range(10):
            xpos 400 ypos 300
            alpha 1.0
            linear 2.0 alpha 0.0
            linear 2.0 xpos (400 + random.randint(-100, 100)) ypos (300 - 200)
            pause i * 0.2
```

## 6. 实用技巧
### 6.1 性能优化
- 使用 `subpixel True` 获得更平滑的动画
- 避免在动画中使用复杂的计算
- 对于重复动画，使用 `repeat` 而不是循环结构
- 合理使用 `parallel` 减少动画嵌套

### 6.2 调试技巧
- 使用 `show expression` 实时预览动画效果
- 调整动画速度进行调试：`config.animation_sound_delay = 0.1`
- 使用 `renpy.display.screen.Screen` 测试复杂动画

### 6.3 最佳实践
- 将复杂动画拆分为多个简单变换
- 使用变量控制动画参数，提高可维护性
- 为常用动画创建可重用的变换定义
- 结合 `LiveComposite` 创建更复杂的动画效果

---
### 更新日志 (Changelog)
- 2026-04-05: 深入细化 ATL 动画语言用法，增加高级特性和实用技巧。
