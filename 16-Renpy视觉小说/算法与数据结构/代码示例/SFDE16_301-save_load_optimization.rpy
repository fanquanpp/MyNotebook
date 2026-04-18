/*
 * @Author:      Anonymous
 * @Algorithm:   存档与读档优化 (Save/Load Optimization)
 * @Language:    Ren'Py Script (Python-based)
 * @Description: 演示如何使用 MultiPersistent 与 JSON 实现跨存档的数据共享与优化。 | Demonstrate cross-save data sharing and optimization using MultiPersistent and JSON.
 * @Teaching:    掌握 persistent 变量与 MultiPersistent 的区别。 | Understanding the difference between persistent variables and MultiPersistent.
 */

# 1. 定义多存档持久化数据 | Define MultiPersistent data
init python:
    # 允许在不同存档甚至不同游戏间共享数据 | Share data across different saves or games
    mp = MultiPersistent("my_game_settings")
    if mp.unlock_gallery is None:
        mp.unlock_gallery = False

# 2. 自定义 JSON 导出存档数据 | Custom JSON export for save data
init python:
    import json
    def export_save_summary(filename):
        summary = {
            "player_name": player_name,
            "current_chapter": current_chapter,
            "play_time": renpy.get_game_runtime()
        }
        with open(filename, "w") as f:
            json.dump(summary, f)

label start:
    $ player_name = "Pro Developer"
    $ current_chapter = 1
    
    "欢迎！系统正在优化您的存档结构... | Welcome! System is optimizing your save structure..."
    
    if mp.unlock_gallery:
        "画廊已解锁。 | Gallery unlocked."
    else:
        "画廊尚未解锁。 | Gallery is locked."
        
    $ mp.unlock_gallery = True
    $ mp.save() # 必须手动调用 save() | Must call save() manually
    
    "设置已保存。 | Settings saved."
    
    return
