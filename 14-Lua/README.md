# 14-Lua 璇█ | Lua Scripting

> @Author: fanquanpp
> @Version: v3.5.0
> @Created: 2026-04-05

## 1. 绠€浠?| Introduction

涓撴敞浜?Lua 璇█鐨勬瀬绠€璇硶銆乀able 鏍稿績鏁版嵁缁撴瀯銆佸厓琛ㄦ満鍒躲€佸崗绋嬩互鍙婂湪娓告垙寮€鍙戝拰宓屽叆寮忕郴缁熶腑鐨勫簲鐢ㄣ€備綔涓轰竴绉嶈交閲忕骇銆侀珮鏁堢殑鑴氭湰璇█锛孡ua 浠ュ叾绠€娲佺殑璇硶鍜屽己澶х殑鎵╁睍鑳藉姏鑰屽箍娉涘簲鐢ㄤ簬娓告垙閫昏緫銆佸祵鍏ュ紡绯荤粺銆丯ginx 鎵╁睍绛夊満鏅紝鏈ā鍧楁棬鍦ㄤ负寮€鍙戣€呮彁渚涗粠鍩虹璇硶鍒伴珮绾у簲鐢ㄧ殑绯荤粺鍖?Lua 瀛︿範璺緞銆?
## 2. 瀛︿範璺嚎鍥?| Learning Roadmap

### 璇︾粏璺緞 | Detailed Path

| 闃舵 (Stage) | 鐭ヨ瘑鐐?(Topic) | 棰勮鑰楁椂 (Estimated Time) | 鍓嶇疆瑕佹眰 (Prerequisites) |
| :--- | :--- | :--- | :--- |
| 鍏ラ棬 | Lua 鍩虹浣撶郴 | 10h | 鏃?|
| 杩涢樁 | 鍏冭〃涓?OOP 妯℃嫙 | 10h | 鍩虹璇硶銆乀able |
| 瀹炴垬 | 鏁版嵁缁撴瀯涓庣畻娉?(Lua) | 15h | Lua 鍩虹 |

### 瀛︿範鎻愮ず | Tips
- **绱㈠紩**锛氳浣?Lua 鐨?Table 绱㈠紩榛樿浠?**1** 寮€濮嬨€?- **鎬ц兘**锛氶伩鍏嶅湪寰幆涓绻佸垱寤?Table锛屼紭鍏堝鐢ㄣ€?- **鎵╁睍**锛氬涔?LuaJIT 浠ヨ幏寰楁帴杩?C 鐨勬墽琛岄€熷害銆?
## 3. 鐩綍绱㈠紩 | Directory Index

### 鍩虹璇硶 | Basics

- [V14_101-Lua鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md](./V14_101-Lua鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md)
- [C14_101-姒傝堪涓庣幆澧?md](./C14_101-姒傝堪涓庣幆澧?md)
- [C14_102-鍩虹璇硶.md](./C14_102-鍩虹璇硶.md)
- [C14_103-鏁版嵁绫诲瀷涓嶵able.md](./C14_103-鏁版嵁绫诲瀷涓嶵able.md)
- [C14_104-鍑芥暟涓庨棴鍖?md](./C14_104-鍑芥暟涓庨棴鍖?md)
- [C14_105-鍗忕▼涓庡紓姝?md](./C14_105-鍗忕▼涓庡紓姝?md)

### 楂樼骇鐗规€?| Advanced
- [G14_201-鍏冭〃涓嶰OP.md](./G14_201-鍏冭〃涓嶰OP.md)
- [G14_202-妯″潡涓庡寘.md](./G14_202-妯″潡涓庡寘.md)

### 绠楁硶涓庢暟鎹粨鏋?| Algorithms & Data Structures
- [SFDE14_301-binary_search_lua.lua](./绠楁硶涓庢暟鎹粨鏋?浠ｇ爜绀轰緥/SFDE14_301-binary_search_lua.lua)
- [SFDE14_302-dfs_bfs_lua.lua](./绠楁硶涓庢暟鎹粨鏋?浠ｇ爜绀轰緥/SFDE14_302-dfs_bfs_lua.lua)
- [SFDE14_303-quick_sort_lua.lua](./绠楁硶涓庢暟鎹粨鏋?浠ｇ爜绀轰緥/SFDE14_303-quick_sort_lua.lua)
- [SFDE14_401-linked_list_lua.lua](./绠楁硶涓庢暟鎹粨鏋?浠ｇ爜绀轰緥/SFDE14_401-linked_list_lua.lua)
- [SFDE14_402-table_advanced_lua.lua](./绠楁硶涓庢暟鎹粨鏋?浠ｇ爜绀轰緥/SFDE14_402-table_advanced_lua.lua)

## 3. 鐜瑕佹眰 | Environment Requirements

- **Lua 鐗堟湰**锛?.4+ (鏍囧噯鐗? / LuaJIT (楂樻€ц兘鐗?
- **杩愯鐜**锛氱嫭绔嬭В閲婂櫒銆丯ginx (OpenResty)銆丟odot (閫氳繃鎵╁睍)
- **鏈€灏忛厤缃?*锛? 鏍稿績 CPU / 1GB 鍐呭瓨 / 50MB 纾佺洏

## 4. 蹇€熷紑濮?| Quick Start

```bash
# 1. 瀹夎 Lua
# Windows: 涓嬭浇 LuaForWindows
# Linux: sudo apt install lua5.4
# macOS: brew install lua

# 2. 楠岃瘉瀹夎
lua -v

# 3. 杩愯棣栦釜鑴氭湰
lua script.lua
```

## 5. 瀛︿範璺嚎 | Learning Path

`姒傝堪涓庣幆澧僠 鈫?`鍩虹璇硶` 鈫?`鏁版嵁绫诲瀷涓嶵able` 鈫?`鍑芥暟涓庨棴鍖卄 鈫?`鍗忕▼涓庡紓姝 鈫?`鍏冭〃涓嶰OP` 鈫?`妯″潡涓庡寘`

## 6. 鏍稿績鐗硅壊 | Key Features

- **鏋佺畝璇硶**锛氱畝娲佹槗璇荤殑璇硶璁捐锛屽涔犳洸绾垮钩缂?- **Table 鏍稿績**锛氱粺涓€鐨勮〃缁撴瀯锛岀伒娲荤殑鏁版嵁缁勭粐
- **鍏冭〃鏈哄埗**锛氬己澶х殑鍏冪紪绋嬭兘鍔涳紝鏀寔闈㈠悜瀵硅薄缂栫▼
- **鍗忕▼鏀寔**锛氳交閲忕骇绾跨▼锛岀畝鍖栧紓姝ョ紪绋?- **缁撴瀯娓呮櫚**锛氭寜鐓у熀纭€銆佽繘闃躲€佺畻娉曞拰鏁版嵁缁撴瀯缁勭粐鍐呭
- **鍙岃娉ㄩ噴**锛氬叧閿蹇靛拰浠ｇ爜鎻愪緵涓嫳鏂囧鐓ф敞閲?
## 7. 闃呰寤鸿 | Reading Guide

1. 鎸夌収瀛︿範璺嚎鐨勯『搴忓涔狅紝浠庢杩颁笌鐜寮€濮嬶紝閫愭鎺屾彙 Lua 鐨勫悇绉嶇壒鎬?2. 缁撳悎瀹為檯椤圭洰缁冧範锛屽姞娣卞 Lua 璇█鐨勭悊瑙?3. 鐗瑰埆鍏虫敞 Table 鏍稿績鍜屽厓琛ㄦ満鍒堕儴鍒嗭紝杩欐槸 Lua 鐨勬牳蹇冪壒鎬?4. 灏濊瘯浣跨敤 Lua 鏋勫缓涓€涓畝鍗曠殑娓告垙閫昏緫鎴栧祵鍏ュ紡鎵╁睍锛屽珐鍥烘墍瀛︾煡璇?
## 8. 寤朵几闃呰 | Further Reading

- [Lua 瀹樻柟鏂囨。](https://www.lua.org/docs.html) <!-- nofollow -->
- [Lua 5.4 鍙傝€冩墜鍐宂(https://www.lua.org/manual/5.4/) <!-- nofollow -->
- [Programming in Lua](https://www.lua.org/pil/) <!-- nofollow -->

## 9. 鎶€鏈爤涓庡伐鍏?| Technology Stack & Tools

- **Lua Engine**锛?.4+ (鏍囧噯鐗? / LuaJIT (楂樻€ц兘鐗?
- **寮€鍙戠幆澧?*锛氱嫭绔嬭В閲婂櫒銆丯ginx (OpenResty)銆丟odot (閫氳繃鎵╁睍)
- **缂栬緫鍣?*锛歏S Code + Lua 鎻掍欢銆丼ublime Text

## 10. 鑱旂郴鏂瑰紡 | Contact Information

- 閭锛?fanquanpangpiing@163.com>
- QQ锛?839243393
- 娆㈣繋鎻愭剰瑙佷氦娴佹垨鍙嶉闂

## 11. 璁稿彲璇佷俊鎭?| License

- **SPDX-Identifier**锛歔CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**锛?024-2026 fanquanpp

---

**鏇存柊鏃ュ織 | Changelog**

- **2026-05-02**
  - 鍏ㄩ潰妫€鏌ラ」鐩粨鏋勶紝纭繚涓€鑷存€?
- **2026-04-18**
  - 瀹屾垚 GitHub 浠撳簱 3.0 缁撴瀯浼樺寲瑙勫垝锛岀粺涓€鏂囦欢鍛藉悕瑙勮寖锛屼紭鍖栫洰褰曠粨鏋勶紝鍗囩骇涓?v3.0.0

- **2026-04-06**
  - 娣卞害浼樺寲 README.md 鏂囦欢锛屽畬鍠勭粨鏋勫拰鍐呭锛屽鍔犱粨搴撳畾浣嶃€佷娇鐢ㄨ鏄庣瓑閮ㄥ垎锛屽崌绾т负 v1.0.1 ~ v1.0.2

- **2026-04-05**
  - 浣撶郴鍖栭噸鏋?Lua 鐩綍缁撴瀯
