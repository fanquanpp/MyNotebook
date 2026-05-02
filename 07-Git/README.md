# 07-Git 鐗堟湰鎺у埗 | Git Version Control

> @Author: fanquanpp
> @Version: v3.5.0
> @Created: 2026-04-05

## 1. 绠€浠?| Introduction

涓撴敞浜?Git 鏍稿績姒傚康銆佸懡浠ゆ搷浣滃拰鍥㈤槦鍗忎綔瑙勮寖銆備綔涓虹幇浠ｈ蒋浠跺紑鍙戠殑蹇呭宸ュ叿锛孏it 鐗堟湰鎺у埗鑳藉甯姪寮€鍙戣€呴珮鏁堢鐞嗕唬鐮佸簱锛岃拷韪唬鐮佸彉鏇达紝鍗忎綔寮€鍙戦」鐩紝鏈ā鍧楁棬鍦ㄤ负寮€鍙戣€呮彁渚涗粠鍏ラ棬鍒拌繘闃剁殑绯荤粺鍖?Git 瀛︿範璺緞銆?
## 2. 鐩綍绱㈠紩 | Directory Index

### 鍩虹 | Basics

- [V07_101-Git鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md](./V07_101-Git鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md)
- [C07_101-Git姒傝堪.md](./C07_101-Git姒傝堪.md)
- [C07_102-鐜閰嶇疆涓庡垵濮嬪寲.md](./C07_102-鐜閰嶇疆涓庡垵濮嬪寲.md)
- [C07_103-鍩烘湰鎿嶄綔.md](./C07_103-鍩烘湰鎿嶄綔.md)
- [C07_104-鍒嗘敮绠＄悊.md](./C07_104-鍒嗘敮绠＄悊.md)
- [C07_105-杩滅▼浠撳簱鎿嶄綔.md](./C07_105-杩滅▼浠撳簱鎿嶄綔.md)

### 楂樼骇 | Advanced

- [G07_201-Git鍘熺悊涓庡璞℃ā鍨?md](./G07_201-Git鍘熺悊涓庡璞℃ā鍨?md)
- [G07_202-Git閽╁瓙涓嶨it_LFS.md](./G07_202-Git閽╁瓙涓嶨it_LFS.md)

## 3. 鐜瑕佹眰 | Environment Requirements

- **宸ュ叿**锛欸it 2.40+
- **骞冲彴**锛欸itHub / GitLab / Gitee
- **鍗忚**锛歋SH / HTTPS
- **鎿嶄綔绯荤粺**锛歐indows 10+, Ubuntu 22.04+, macOS 14+

## 4. 蹇€熷紑濮?| Quick Start

1. 閰嶇疆涓汉淇℃伅锛歚git config --global user.name "Your Name"`
2. 閰嶇疆閭锛歚git config --global user.email "your.email@example.com"`
3. 鍏嬮殕浠撳簱锛歚git clone <repo-url>`
4. 鏌ョ湅鐘舵€侊細`git status`
5. 鍒涘缓鍒嗘敮锛歚git checkout -b feature-branch`

## 5. 瀛︿範璺嚎 | Learning Path

`Git姒傝堪` 鈫?`鐜閰嶇疆涓庡垵濮嬪寲` 鈫?`鍩烘湰鎿嶄綔` 鈫?`鍒嗘敮绠＄悊` 鈫?`杩滅▼浠撳簱鎿嶄綔` 鈫?`Git鍘熺悊涓庡璞℃ā鍨媊

## 6. 鏍稿績鐗硅壊 | Key Features

- **鐗堟湰鎺у埗**锛氳缁嗚瑙?Git 鐨勬牳蹇冪増鏈帶鍒跺姛鑳藉拰宸ヤ綔鍘熺悊
- **鍒嗘敮绠＄悊**锛氭彁渚涘垎鏀瓥鐣ュ拰宸ヤ綔娴佺殑鏈€浣冲疄璺?- **杩滅▼鍗忎綔**锛氳瑙ｈ繙绋嬩粨搴撴搷浣滃拰鍥㈤槦鍗忎綔娴佺▼
- **骞冲彴闆嗘垚**锛氭兜鐩?GitHub銆丟itLab銆丟itee 绛変富娴佸钩鍙扮殑浣跨敤
- **闂瑙ｅ喅**锛氭敹褰曞父瑙?Git 闂鐨勮В鍐虫柟妗堝拰鎺掓煡鎶€宸?- **鍘熺悊鍓栨瀽**锛氭繁鍏ヨ瑙?Git 鐨勫璞℃ā鍨嬪拰鍐呴儴鍘熺悊
- **鍙岃娉ㄩ噴**锛氬叧閿蹇靛拰鍛戒护鎻愪緵涓嫳鏂囧鐓ф敞閲?
## 7. 闃呰寤鸿 | Reading Guide

1. 鎸夌収瀛︿範璺嚎鐨勯『搴忓涔狅紝浠?Git 姒傝堪寮€濮嬶紝閫愭鎺屾彙 Git 鐨勫悇绉嶆搷浣?2. 缁撳悎瀹為檯椤圭洰缁冧範锛屽姞娣卞 Git 鍛戒护鐨勭悊瑙?3. 鐗瑰埆鍏虫敞鍒嗘敮绠＄悊鍜岃繙绋嬩粨搴撴搷浣滐紝杩欐槸鍥㈤槦鍗忎綔鐨勬牳蹇?4. 灏濊瘯鐞嗚В Git 鍘熺悊涓庡璞℃ā鍨嬶紝杩欐湁鍔╀簬瑙ｅ喅澶嶆潅鐨?Git 闂

## 8. 寤朵几闃呰 | Further Reading

- [Git 瀹樻柟鏂囨。](https://git-scm.com/doc) <!-- nofollow -->
- [Pro Git](https://git-scm.com/book/en/v2) <!-- nofollow -->
- 鏈粨搴擄細[01-Github骞冲彴](../01-Github/README.md)

## 9. 璐＄尞鎸囧崡 | Contribution Guide

- 鎺ㄨ崘浣跨敤 Gitflow 宸ヤ綔娴佹彁浜?PR
- Commit message 閬靛惊 `feat/fix/docs: 鎻忚堪` 瑙勮寖
- 鎻愪緵瀹屾暣鐨勫懡浠ょず渚嬪拰鎿嶄綔姝ラ

## 10. 鑱旂郴鏂瑰紡 | Contact Information

- 閭锛?fanquanpangpiing@163.com>
- QQ锛?39243393
- 娆㈣繋鎻愭剰瑙佷氦娴佹垨鍙嶉闂

## 11. 璁稿彲璇佷俊鎭?| License

- **SPDX-Identifier**锛歔CC-BY-NC-SA-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- **Copyright**锛?024-2026 fanquanpp

---

**鏇存柊鏃ュ織 | Changelog**

- **2026-05-02**
  - 鍏ㄩ潰妫€鏌ラ」鐩粨鏋勶紝纭繚涓€鑷存€?
- **2026-04-18**
  - 瀹屾垚 GitHub 浠撳簱 3.0 缁撴瀯浼樺寲瑙勫垝锛岀粺涓€鏂囦欢鍛藉悕瑙勮寖锛屼紭鍖栫洰褰曠粨鏋勶紝鍗囩骇鍒?v3.0.0

- **2026-04-06**
  - 娣卞害浼樺寲 README.md 鏂囦欢锛屽畬鍠勭粨鏋勫拰鍐呭锛屽鍔犱粨搴撳畾浣嶃€佷娇鐢ㄨ鏄庣瓑閮ㄥ垎锛屽崌绾т负 v1.0.1 ~ v1.0.2

- **2026-04-05**
  - 鍒濆鐗堟湰 Git 鏍稿績鎿嶄綔涓庡垎鏀鐞嗙瑪璁?
- **2025-10-04**
  - 鏇存柊浼樺寲 README.md 鏂囦欢锛岀粺涓€缁撴瀯鍜屾牸寮?