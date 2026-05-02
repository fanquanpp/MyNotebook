# 06-CSS 甯冨眬 | CSS Layouts

> @Author: fanquanpp
> @Version: v3.5.0
> @Created: 2026-04-05

## 1. 绠€浠?| Introduction

涓撴敞浜庣幇浠?Web 寮€鍙戜腑鐨勬牳蹇冨竷灞€鎶€鏈紝鍖呮嫭 Flexbox銆丟rid銆佷紶缁熷竷灞€鏂规浠ュ強 Canvas 缁樺浘銆備綔涓哄墠绔紑鍙戠殑閲嶈缁勬垚閮ㄥ垎锛屽竷灞€鎶€鏈洿鎺ュ奖鍝嶇綉绔欑殑瑙嗚鏁堟灉鍜岀敤鎴蜂綋楠岋紝鏈ā鍧楁棬鍦ㄤ负寮€鍙戣€呮彁渚涗粠鍩虹鍒伴珮绾х殑绯荤粺鍖栧竷灞€鎶€鏈寚鍗椼€?

## 2. 鐩綍绱㈠紩 | Directory Index

### 鍩虹绡?| Basics

- [V06_101-CSS鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md](./V06_101-CSS鍚嶈瘝娉ㄩ噴鏌ラ槄琛?md)

- [C06_101-姒傝堪涓庤娉?md](./C06_101-姒傝堪涓庤娉?md)
- [C06_102-閫夋嫨鍣ㄧ郴缁?md](./C06_102-閫夋嫨鍣ㄧ郴缁?md)
- [C06_103-鐩掓ā鍨?md](./C06_103-鐩掓ā鍨?md)
- [C06_104-Flex甯冨眬.md](./C06_104-Flex甯冨眬.md)
- [C06_105-Grid甯冨眬.md](./C06_105-Grid甯冨眬.md)
- [C06_106-浼犵粺甯冨眬涓庡畾浣?md](./C06_106-浼犵粺甯冨眬涓庡畾浣?md)
- [C06_107-Canvas缁樺浘.md](./C06_107-Canvas缁樺浘.md)

### 绀轰緥绡?| Examples
- [responsive_layout.html](./绀轰緥/responsive_layout.html)
- [knowledge_pitfalls.md](./绀轰緥/knowledge_pitfalls.md)
- [package.json](./绀轰緥/package.json)

### 楂樼骇绡?| Advanced
- [G06_201-鍝嶅簲寮忚璁?md](./G06_201-鍝嶅簲寮忚璁?md)
- [G06_202-CSS-in-JS涓庨珮绾у竷灞€.md](./G06_202-CSS-in-JS涓庨珮绾у竷灞€.md)

## 3. 鐜瑕佹眰 | Environment Requirements

- **娴忚鍣?*锛欳hrome 90+, Firefox 88+, Safari 14+, Edge 90+
- **寮€鍙戝伐鍏?*锛歏S Code, Sublime Text, 鎴栦换浣曟枃鏈紪杈戝櫒
- **鍦ㄧ嚎宸ュ叿**锛歔Codepen](https://codepen.io/), [JSFiddle](https://jsfiddle.net/)

## 4. 蹇€熷紑濮?| Quick Start

1. 瀛︿範 [C06_103-鐩掓ā鍨?md](./C06_103-鐩掓ā鍨?md) 鐞嗚В绌洪棿鍗犵敤
2. 閰嶅悎 [C06_104-Flex甯冨眬.md](./C06_104-Flex甯冨眬.md) 鍦ㄦ祻瑙堝櫒涓疄鏃舵祴璇曟牱寮?

## 5. 瀛︿範璺嚎 | Learning Path

`鐩掓ā鍨媊 -> `閫夋嫨鍣╜ -> `Flexbox` -> `Grid` -> `浼犵粺甯冨眬` -> `Canvas缁樺浘` -> `缁煎悎瀹炴垬`

## 6. 鏍稿績鐗硅壊 | Key Features

- **鐜颁唬甯冨眬鎶€鏈?*锛氭繁鍏ヨ瑙?Flexbox 鍜?Grid 绛夌幇浠?CSS 甯冨眬鎶€鏈?
- **鍝嶅簲寮忚璁?*锛氭彁渚涘搷搴斿紡甯冨眬鐨勫疄鐜版柟娉曞拰鏈€浣冲疄璺?
- **鍙鍖栧涔?*锛氬寘鍚?Flexbox 鍜?Grid 鐨勫彲瑙嗗寲瀛︿範璧勬簮
- **甯冨眬鎶€宸?*锛氭敹褰曞父瑙佸竷灞€闂鐨勮В鍐虫柟妗堬紝濡傚眳涓€佸鍒楀竷灞€绛?
- **鎬ц兘浼樺寲**锛氳瑙?CSS 甯冨眬鎬ц兘浼樺寲鐨勬妧宸у拰绛栫暐
- **Canvas 缁樺浘**锛氭彁渚涘熀纭€缁樺浘銆佸姩鐢绘晥鏋滃拰瀹炴垬绀轰緥
- **娴忚鍣ㄥ吋瀹规€?*锛氭彁渚涘悇甯冨眬鎶€鏈殑娴忚鍣ㄦ敮鎸佹儏鍐?
- **鍙岃娉ㄩ噴**锛氬叧閿蹇靛拰浠ｇ爜鎻愪緵涓嫳鏂囧鐓ф敞閲?

## 7. 闃呰寤鸿 | Reading Guide

1. 鎸夌収瀛︿範璺嚎鐨勯『搴忓涔狅紝浠庣洅妯″瀷寮€濮嬶紝閫愭鎺屾彙鍚勭甯冨眬鎶€鏈?
2. 缁撳悎瀹為檯椤圭洰缁冧範锛屽姞娣卞甯冨眬鎶€鏈殑鐞嗚В
3. 鐗瑰埆鍏虫敞 Flexbox 鍜?Grid 甯冨眬锛岃繖鏄幇浠?Web 寮€鍙戠殑鏍稿績甯冨眬鎶€鏈?
4. 灏濊瘯鑷繁瀹炵幇鍝嶅簲寮忓竷灞€锛屽珐鍥烘墍瀛︾煡璇?

## 8. 寤朵几闃呰 | Further Reading

- [MDN CSS 鏂囨。](https://developer.mozilla.org/en-US/docs/Web/CSS) <!-- nofollow -->
- [CSS-Tricks](https://css-tricks.com/) <!-- nofollow -->
- 鏈粨搴擄細[05-HTML5缃戦〉](../05-HTML5缃戦〉/README.md)銆乕08-Javascript](../08-Javascript/README.md)

## 9. 璐＄尞鎸囧崡 | Contribution Guide

- 鎺ㄨ崘浣跨敤鍔ㄧ敾 GIF 婕旂ず甯冨眬鍙樺寲
- 纭繚浠ｇ爜绀轰緥閫氳繃 W3C 鏍￠獙
- 鎻愪緵璺ㄦ祻瑙堝櫒鍏煎鎬ф祴璇曠粨鏋?

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
  - 澧炲姞 Flexbox 鍙鍖栨寚鍗椾笌 Grid 甯冨眬杩涢樁鍐呭

- **2026-10-04**
  - 娣诲姞 Canvas 缁樺浘鐭ヨ瘑鐐癸紝鍖呭惈鍩虹缁樺浘銆佸姩鐢绘晥鏋滃拰瀹炴垬绀轰緥
  - 鏇存柊浼樺寲 README.md 鏂囦欢锛岀粺涓€缁撴瀯鍜屾牸寮?
