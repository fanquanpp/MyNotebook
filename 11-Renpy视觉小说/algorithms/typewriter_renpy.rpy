/*
 * @Author:      Anonymous
 * @Algorithm:   Ren'Py 文本逐字显示效果 (Typewriter Effect)
 * @Language:    Ren'Py Script (Python-based)
 * @Time Compl.: O(n) 其中 n 为字符长度
 * @Description: 演示如何在 Ren'Py 中通过 Python 自定义语句实现类似 RPG 的逐字打字机效果。 | Demonstrate custom RPG-like typewriter text effect in Ren'Py using Python.
 * @Teaching:    掌握 slow_cps, {cps} 标签与 Character 对象的配置。 | Mastering slow_cps, {cps} tags and Character object configurations.
 */

# 1. 定义角色并设置默认打字速度 | Define characters and set default CPS
define e = Character("Eileen", what_slow_cps=20)
define fast = Character("Flash", what_slow_cps=100)

# 2. 自定义显示效果 (Python) | Custom display logic
init python:
    def typewriter_callback(event, **kwargs):
        if event == "show":
            # 可以在这里播放打字声 | Play typing sound here
            renpy.music.play("audio/typewriter.wav", channel="sound", loop=True)
        elif event == "slow_done" or event == "end":
            renpy.music.stop(channel="sound")

# 3. 使用 ATL 实现更复杂的文本动画 | Complex text animation using ATL
transform text_float:
    yoffset 0
    linear 1.0 yoffset -10
    linear 1.0 yoffset 0
    repeat

label start:
    "欢迎来到 Ren'Py 进阶教程！ | Welcome to the Ren'Py Advanced Tutorial!"
    
    e "这是我的默认打字速度。 | This is my default typing speed."
    
    fast "我说话非常快！ | I speak very fast!"
    
    "你也可以使用 {cps=5}这个标签控制特定部分的慢速显示。{/cps} | You can also use {cps=5}this tag to slow down specific parts.{/cps}"
    
    show text "动态漂浮文字效果 | Floating text effect" at text_float:
        xalign 0.5 yalign 0.4
    
    "学习 ATL (Animation and Transformation Language) 是制作视觉小说的核心。 | Learning ATL is core to making visual novels."
    
    return
