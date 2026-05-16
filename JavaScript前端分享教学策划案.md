# JavaScript前端分享 - PPT制作稿

---

## 目录

| 页码 | 章节编号 | 章节名称 | 跳转页码 |
|------|----------|----------|----------|
| P1 | 第一章 | 开场 - 前端三件套 | P1 |
| P2 | 第二章 | Markdown vs HTML | P2-P5 |
| P6 | 第三章 | CSS常用属性 | P6-P13 |
| P14 | 第四章 | CSS布局 | P14-P22 |
| P23 | 第五章 | JS基础 | P23-P28 |
| P29 | 第六章 | JS运算符与流程控制 | P29-P32 |
| P33 | 第七章 | JS函数 | P33-P35 |
| P36 | 第八章 | JS DOM与事件 | P36-P39 |
| P40 | 第九章 | 竞赛题与收尾 | P40-P45 |

---

## 制作说明

- 每页以 `[页码]` 标注PPT页码
- 每页包含：标题区、正文文字区、代码区（如有）
- 标题区：幻灯片顶部标题文字，直接放到PPT标题位置
- 正文文字区：放在PPT正文位置，是PPT上要显示的文字
- 代码区：放到PPT代码块/等宽字体区域
- 【演讲备注】：不放在PPT上，仅供演讲者参考
- 【制作参考】：不放在PPT上，仅供PPT制作者参考

---

# 第一章 开场 - 前端三件套

---

[P1]

## 标题区

前端三件套

## 正文文字区

>
> 什么是前端？
>   前端是用户在浏览器中看到和操作的部分
>   前端开发 = 用代码构建网页的界面和交互
>
> 前端三件套（三种语言，各司其职）：
>
> HTML - 超文本标记语言（HyperText Markup Language）
>   作用：定义页面有什么内容（结构层）
>   负责：标题、段落、按钮、输入框、表格
>   类比：房子的骨架和房间
>
> CSS - 层叠样式表（Cascading Style Sheets）
>   作用：控制页面长什么样（表现层）
>   负责：颜色、字体、间距、布局、动画、圆角、阴影
>   类比：房子的装修和外观
>
> JS - JavaScript（脚本语言）
>   作用：决定页面会做什么（行为层）
>   负责：点击响应、表单验证、动态更新、数据处理
>   类比：房子的智能家居系统
>
> 一个网页 = HTML骨架 + CSS皮肤 + JS让东西动起来
>
> 今天的内容：Markdown vs HTML + CSS进阶属性 + CSS布局 + JS基础
>

## 代码区

无
【演讲备注】
今天聊前端，CSS和JS都会涉及。先说下三件套的关系：HTML搭结构，CSS管样式，JS管行为。打个比方，HTML是毛坯房，CSS是装修，JS是智能家居——没有JS，页面就是个静态海报；有了JS，按钮能点、表单能提交、内容能动态变化。今天前半段讲CSS，重点放在课上可能没细讲的属性和布局上。后半段讲JS，从学校教的var开始，补充一些课上没展开但以后写代码绕不开的东西。大家都有基础，所以不会从零讲，直接上干货。

---

# 第二章 Markdown vs HTML

---

[P2]

## 标题区

Markdown vs HTML - 两种写文档的语言

## 正文文字区

>
> 什么是Markdown？
>   Markdown是一种轻量级标记语言，用简单的符号给文字加格式
>   由John Gruber在2004年创建，目标是"易读易写"
>   文件扩展名：.md
>
> 什么是HTML？
>   HTML是超文本标记语言，用标签描述网页内容
>   由Tim Berners-Lee在1991年创建，是万维网的基础
>   文件扩展名：.html
>
> 两者的核心区别：
>   Markdown            HTML
>   轻量级标记语言      超文本标记语言
>   用简单符号写格式    用标签写格式
>   写给人看            写给浏览器看
>   专注内容            精确控制
>
> 它们有什么关系？
>   Markdown  --渲染后-->  看起来像网页
>   HTML      --浏览器-->  就是网页
>   Markdown 本质上会被转换成 HTML
>   你写的.md文件，GitHub/博客平台会自动转成HTML再显示
>

## 代码区

无
【演讲备注】
在讲CSS之前，先花几分钟聊聊Markdown和HTML。这两个东西大家平时都在用，但可能没仔细想过它们的关系。Markdown写README、写笔记，HTML写网页，看起来是两个世界，但其实Markdown最终会被转换成HTML。理解了这个关系，对后面学CSS和JS都有帮助。

---

[P3]

## 标题区

Markdown语法速览

## 正文文字区

>
> Markdown语法 -- 用最少的符号写出格式
>
> 什么是Markdown语法？
>   Markdown通过在文字前后加特殊符号来表示格式
>   不需要鼠标操作，纯键盘就能完成排版
>   写法和阅读体验都很接近纯文本
>
> 常用语法对照：
>   标题：    # 一级标题   ## 二级标题   ### 三级标题
>   加粗：    **加粗文字**
>   斜体：    *斜体文字*
>   删除线：  ~~删除线~~
>   列表：    - 无序列表项   1. 有序列表项
>   链接：    [链接文字](url)
>   代码：    `行内代码`
>   引用：    > 引用文字
>   分割线：  ---
>   表格：    | 列1 | 列2 |
>

## 代码区

```

# 项目名称
这是一个**很棒**的项目
```
## 安装
1. 克隆仓库
2. 运行 `npm install`

> 注意：需要 Node.js 14 以上

| 功能 | 状态 |
|------|------|
| 登录 | 完成 |
| 注册 | 完成 |

【演讲备注】
Markdown大家应该很熟悉了，写README、写笔记、写文档都在用。它的设计理念就是"用最少的符号表达格式"，#号就是标题，星号就是加粗，大于号就是引用，非常直观。写的时候眼睛不用离开内容去想标签怎么写，专注在文字本身。

---

[P4]

## 标题区

HTML快速复习

## 正文文字区

>
> HTML -- 网页的结构语言
>
> 什么是HTML标签？
>   标签是HTML的基本构建单位，用尖括号包裹的关键词
>   标签成对出现：<开始标签>内容</结束标签>
>   标签可以嵌套：一个标签里面可以放另一个标签
>   标签可以有属性：<a href="url"> 中的href就是属性
>
> 常用标签及作用：
>   标题：    h1 - h6     定义不同级别的标题，h1最大h6最小
>   段落：    p           定义一段文字
>   加粗：    strong / b  让文字加粗显示，strong有语义强调含义
>   斜体：    em / i      让文字倾斜显示，em有语义强调含义
>   删除线：  del / s     给文字加删除线
>   链接：    a           超链接，点击跳转到其他页面
>   列表：    ul / ol + li  ul无序列表（圆点），ol有序列表（数字）
>   代码：    code / pre  code行内代码，pre代码块（保留格式）
>   引用：    blockquote  表示引用的文字
>   分割线：  hr          水平分割线
>   表格：    table + tr + td  表格结构：table容器、tr行、td单元格
>
> HTML文档基本结构：
>   html   根标签，包裹整个页面
>   head   头部，放标题和元信息（用户看不到）
>   body   主体，放页面内容（用户看到的）
>

## 代码区

```html

<h1>一级标题</h1>
<p>段落文字</p>
<strong>加粗</strong>
<a href="url">链接文字</a>
<ul><li>无序项</li></ul>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>页面标题</title>
  </head>
  <body>
    页面内容写在这里
  </body>
</html>
```
【演讲备注】
HTML大家也学过了，快速过一下。标签成对出现，有开始有结束。常用标签就那些，标题h1到h6，段落p，加粗strong，链接a，列表ul/ol。一个HTML文档就是html包head和body，head放标题和元信息，body放页面内容。

---

[P5]

## 标题区

Markdown vs HTML - 语法对比与使用场景

## 正文文字区

>
> 语法对比：
>   效果          Markdown              HTML
>   一级标题      # 标题                h1标签
>   加粗          **加粗**              strong标签
>   链接          [文字](url)           a标签+href
>   无序列表      - 项目                ul+li标签
>   行内代码      `代码`               code标签
>
> Markdown写法更简洁，HTML写法更精确
>
> Markdown 适合：
>   README文档、技术笔记、API文档、团队协作文档、Issue/PR描述
>   特点：专注内容，快速书写
>
> HTML 适合：
>   网页开发、精确控制布局样式、交互表单、邮件模板
>   特点：精确控制，功能完整
>
> 它们的关系：
>   Markdown --解析器转换--> HTML --浏览器渲染--> 网页
>   Markdown能做的HTML都能做，反过来不行
>
> 实际开发中的选择：
>   写文档 --> Markdown（快、简洁）
>   写网页 --> HTML（精确、完整）
>

## 代码区

无
【演讲备注】
把Markdown和HTML的语法放一起看就很清楚了。同样的效果，Markdown几个符号搞定，HTML要写完整的标签。什么时候用哪个？简单说：写文档用Markdown，写网页用HTML。Markdown的优势是快，HTML的优势是精确和完整。它们的关系要搞清楚：Markdown最终会被转换成HTML。所以Markdown能做的HTML都能做，反过来不行。实际开发中，两个都要会。

---

# 第三章 CSS常用属性

---

[P6]

## 标题区

CSS常用属性速览

## 正文文字区

>
> 什么是CSS属性？
>   CSS属性是用来控制HTML元素外观的指令
>   每个属性有对应的属性值，格式：属性名: 属性值;
>   写在花括号内，和选择器一起组成CSS规则
>
> 盒模型（课上学过，快速复习）
>   margin   外边距，元素与外部的距离
>   padding  内边距，内容与边框的距离
>   border   边框
>   width / height  内容区的宽高
>
> 今天重点讲的属性（课上可能没细讲）
>   border-radius    圆角 -- 让方角变圆角
>   box-shadow       盒子阴影 -- 给元素加立体感
>   text-shadow      文字阴影 -- 给文字加阴影
>   transition       过渡动画 -- 让属性变化平滑
>   ::before / ::after  伪元素 -- 用CSS插入虚拟内容
>   :hover / :focus / :nth-child()  伪类 -- 选中元素的某种状态
>
> 这些属性组合起来能做出各种好看的卡片效果
>

## 代码区

无
【演讲备注】
先过一遍CSS里做项目用得最多、但课上可能没细讲的属性。盒模型大家应该都学过了，不展开。重点讲几个课上可能一笔带过的属性，这些属性组合起来就是各种好看的卡片、按钮效果。

---

[P7]

## 标题区

border-radius - 让方角变圆角

## 正文文字区

>
> border-radius -- 让方角变圆角
>
> 什么是border-radius？
>   border-radius是CSS的圆角属性，用来让元素的直角变成圆角
>   值越大圆角越大，50%时正方形变成正圆
>   可以分别控制四个角，实现不对称的圆角效果
>
> 写法说明：
>   border-radius: 10px;            四个角统一10px圆角
>   border-radius: 50%;             正方形变正圆，长方形变椭圆
>   border-radius: 10px 0;          左上右下10px，右上左下0
>   border-radius: 10px 0 10px 0;   顺序：左上-右上-右下-左下（顺时针）
>
> 实际用途：
>   头像变圆形      border-radius: 50%
>   按钮变胶囊形    border-radius: 999px（值足够大就变成胶囊）
>   卡片做圆角      border-radius: 8px 或 12px
>   只圆上面两个角  border-radius: 12px 12px 0 0
>
> 重要提示：
>   50%圆角 + 正方形 = 正圆
>   50%圆角 + 长方形 = 椭圆（不是正圆）
>   圆角值超过元素短边一半时，效果和50%一样
>

## 代码区

```css

.avatar { border-radius: 50%; }
.btn-capsule { border-radius: 999px; }
.card { border-radius: 12px; }
.modal-top { border-radius: 12px 12px 0 0; }
```
【演讲备注】
border-radius做圆角，这个做项目的时候几乎每个元素都会用到。写一个值就是四个角都一样，写四个值就是顺时针方向。几个常见的用法：头像做圆形就50%，但注意元素本身得是正方形；按钮做胶囊形状就给一个特别大的值比如999px；卡片做圆角一般8px到12px比较好看。还有个技巧：只圆上面两个角可以写border-radius: 12px 12px 0 0，做弹窗或者卡片顶部的时候常用。

---

[P8]

## 标题区

box-shadow - 给元素加阴影

## 正文文字区

>
> box-shadow -- 给元素加阴影
>
> 什么是box-shadow？
>   box-shadow是CSS的盒子阴影属性，给元素添加外部或内部阴影
>   阴影让元素产生立体感和层次感，是卡片设计的核心属性
>   没有阴影的卡片像贴在屏幕上的纸片，加了阴影才有浮起的效果
>
> 完整参数说明：
>   box-shadow: 水平偏移 垂直偏移 模糊半径 扩展半径 颜色;
>   水平偏移：正值向右，负值向左
>   垂直偏移：正值向下，负值向上
>   模糊半径：值越大阴影越模糊越柔和，0是实心阴影
>   扩展半径：正值阴影扩大，负值阴影缩小（可省略）
>   颜色：建议用rgba，最后一个值控制透明度
>
> 常用阴影效果：
>   卡片最常用的阴影（柔和自然，适合日常使用）
>   稍微重一点的阴影（悬浮效果，hover时使用）
>   inset内阴影（输入框内凹效果）
>   多层阴影叠加（更真实，模拟环境光+直射光）
>
> text-shadow -- 文字阴影
>   参数类似box-shadow，给标题文字加阴影效果
>   没有inset和扩展半径参数
>
> rgba颜色说明：
>   rgba(0,0,0,0.1) 最后一个值是透明度，0完全透明，1完全不透明
>   阴影用0.05-0.2比较自然，纯黑太硬了
>

## 代码区

```css

/* 卡片最常用的阴影 */
box-shadow: 0 2px 8px rgba(0,0,0,0.1);

/* 悬浮效果 */
box-shadow: 0 4px 12px rgba(0,0,0,0.15);

/* 内阴影 */
box-shadow: inset 0 1px 3px rgba(0,0,0,0.2);

/* 多层阴影 */
box-shadow: 0 1px 2px rgba(0,0,0,0.1),
            0 2px 8px rgba(0,0,0,0.1);

/* 文字阴影 */
text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
```
【演讲备注】
box-shadow给元素加阴影，做卡片效果的时候特别常用。没有阴影的卡片就像贴在屏幕上的纸片，加了阴影就有立体感和层次感。参数顺序是：水平偏移、垂直偏移、模糊半径、扩展半径（可以省略）、颜色。颜色建议用rgba，最后一个值控制透明度。纯黑阴影太硬了，0.1到0.2之间比较自然。inset是内阴影，做输入框那种内凹效果。多层阴影叠加可以让阴影更真实。text-shadow参数差不多，给标题文字加阴影用。

---

[P9]

## 标题区

伪元素 ::before / ::after - 用CSS插入虚拟内容

## 正文文字区

>
> 什么是伪元素？
>   伪元素是CSS创建的"虚拟标签"，不需要在HTML里写额外的标签
>   就能在元素内容的前面或后面插入装饰性内容
>
>   ::before  插入到元素内容的最前面
>   ::after   插入到元素内容的最后面
>
> 作用：
>   1. 纯装饰：加图标、箭头、装饰线，不污染HTML结构
>   2. 布局辅助：清除浮动、创建遮罩层
>   3. 内容增强：自动添加引号、序号等重复性文字
>
> 核心规则：
>   1. 必须写 content 属性，哪怕 content: ""，不写不显示
>   2. 伪元素默认是行内元素，设宽高要加 display: block 或 position: absolute
>   3. ::before 在元素内容前面，::after 在后面
>   4. 伪元素不属于DOM，JS无法直接操作
>   5. 每个元素只能有一个 ::before 和一个 ::after
>
> content属性的写法：
>   content: "文字"        插入文字
>   content: ""            空内容（只做装饰时常用）
>   content: attr(属性名)   读取HTML属性值并插入
>   content: counter(名)   插入计数器值（自动编号）
>

## 代码区

```css

/* 用法1：加装饰性文字 */
.link::before {
    content: "> ";
    color: #409eff;
}

/* 用法2：清除浮动（经典写法） */
.clearfix::after {
    content: "";
    display: block;
    clear: both;
}

/* 用法3：卡片左侧彩色竖条 */
.card {
    position: relative;
    padding-left: 16px;
}
.card::before {
    content: "";
    position: absolute;
    left: 0; top: 0;
    width: 4px; height: 100%;
    background: #409eff;
    border-radius: 2px;
}

/* 用法4：遮罩层 */
.overlay {
    position: relative;
}
.overlay::after {
    content: "";
    position: absolute;
    inset: 0;
    background: rgba(0,0,0,0.5);
}

/* 用法5：用attr()读取属性值做tooltip */
.tooltip {
    position: relative;
}
.tooltip::after {
    content: attr(data-tip);
    position: absolute;
    bottom: 100%;
    left: 50%;
    transform: translateX(-50%);
    background: #333;
    color: #fff;
    padding: 4px 8px;
    border-radius: 4px;
    font-size: 12px;
    white-space: nowrap;
}

/* 用法6：自动加引号 */
blockquote::before { content: "\201C"; }
blockquote::after  { content: "\201D"; }

/* 用法7：计数器自动编号 */
body { counter-reset: section; }
h2::before {
    counter-increment: section;
    content: "第" counter(section) "节 ";
}
```
【演讲备注】
伪元素是个很有意思的东西。::before和::after可以在元素内容的前面和后面插入虚拟内容，这个内容不在HTML里，是CSS生成的，所以JS也没法直接操作它。先理解它的作用：伪元素最大的价值就是"纯装饰"。如果一个装饰性的图标、箭头、竖线、遮罩只跟样式有关，跟内容无关，那就应该用伪元素来做。最重要的规则：必须写content属性，哪怕content是空字符串""，不写的话伪元素不会显示。content属性不只是写空字符串，还能写文字、用attr()读取HTML属性值、用counter()做自动编号。实际用途很多：加装饰性文字、清除浮动、卡片左侧彩色竖条、遮罩层、tooltip提示、自动加引号、计数器自动编号。伪元素默认是行内元素，如果要设置宽高，记得加display: block或者position: absolute。还有几个常见的坑要注意：伪元素不能放重要内容，因为屏幕阅读器读不到；伪元素JS无法直接操作，只能通过改父元素的class来间接控制样式。

---

[P10]

## 标题区

伪类 :hover / :focus / :nth-child()

## 正文文字区

>
> 伪类 -- 选中元素的某种状态（单冒号:）
> 伪元素 -- 创建虚拟元素（双冒号::）
> 别搞混了！
>
> 什么是伪类？
>   伪类是CSS的选择器，用来选中元素的某种"状态"或"位置"
>   它不创建新元素，而是给已有元素在不同情况下加不同样式
>
> 常用伪类及作用：
>   :hover        鼠标悬停时       按钮变色、卡片浮起、链接下划线
>   :active       鼠标按下没松开时 按钮按下的"按压感"
>   :focus        输入框获得焦点时 输入框高亮边框
>   :first-child  第一个子元素     列表第一项不加上边框
>   :last-child   最后一个子元素   列表最后一项不加下边框
>   :nth-child(n) 第n个子元素     表格隔行变色、选前几个
>
> :nth-child的写法：
>   :nth-child(3)       选第3个
>   :nth-child(odd)     选奇数个（1,3,5...）
>   :nth-child(even)    选偶数个（2,4,6...）
>   :nth-child(3n)      每3个选一个（3,6,9...）
>   :nth-child(-n+3)    选前3个（1,2,3）
>   :nth-child(3n+1)    从第1个开始每3个选一个（1,4,7...）
>
> LVHA顺序（重要）：
>   链接伪类要按这个顺序写，否则会覆盖
>   :link  -->  :visited  -->  :hover  -->  :active
>   口诀：LVHA
>

## 代码区

```css

/* 用法1：按钮交互三件套 */
.btn {
    background: #409eff;
    color: #fff;
    border: none;
    padding: 8px 20px;
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.3s;
}
.btn:hover {
    background: #66b1ff;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(64,158,255,0.4);
}
.btn:active {
    background: #3a8ee6;
    transform: translateY(0);
    box-shadow: none;
}
.btn:focus {
    outline: none;
    box-shadow: 0 0 0 3px rgba(64,158,255,0.3);
}

/* 用法2：输入框focus效果 */
input {
    border: 2px solid #dcdfe6;
    padding: 8px 12px;
    border-radius: 4px;
    transition: border-color 0.3s, box-shadow 0.3s;
}
input:focus {
    border-color: #409eff;
    outline: none;
    box-shadow: 0 0 0 3px rgba(64,158,255,0.2);
}

/* 用法3：列表隔行变色 */
li:nth-child(odd) { background: #f5f5f5; }
li:nth-child(even) { background: #fff; }

/* 用法4：列表首尾项特殊处理 */
li { padding: 8px 0; border-bottom: 1px solid #eee; }
li:first-child { border-top: 1px solid #eee; }
li:last-child { border-bottom: none; }

/* 用法5：导航栏hover高亮 */
.nav-link:hover {
    color: #409eff;
    border-bottom: 2px solid #409eff;
}
```
【演讲备注】
伪类和伪元素容易搞混，再强调一下：伪元素是创建一个虚拟元素，双冒号::；伪类是选中元素的某种状态，单冒号:。伪类不会创建新东西，它只是让已有元素在不同状态下有不同样式。:hover最常用，鼠标移上去触发样式变化。:focus是输入框被点击获得焦点的时候。:active是鼠标按下没松开的时候，这三个经常一起用做按钮的交互反馈。按钮交互三件套：hover时浮起来，active时按下去，focus时出现光晕。:first-child和:last-child也很实用，比如列表的边框处理。:nth-child可以选第几个子元素，odd是奇数even是偶数，做表格隔行变色特别方便。还有一个重要的点：链接伪类要按LVHA顺序写。

---

[P11]

## 标题区

transition - 让CSS属性变化有过渡动画

## 正文文字区

>
> transition -- 让CSS属性变化有过渡动画
>
> 什么是transition？
>   transition是CSS的过渡属性，让属性值的变化不是瞬间跳变而是平滑过渡
>   没有transition：hover时颜色"啪"一下就变了，体验生硬
>   加上transition：颜色在指定时间内平滑变化，体验丝滑
>
> 语法说明：
>   transition: 属性 时长 缓动函数;
>   属性：要过渡的CSS属性名，写all表示所有属性都过渡
>   时长：过渡持续时间，如0.3s（0.3秒）
>   缓动函数：控制过渡的速度曲线
>
> 缓动函数（控制变化快慢的节奏）：
>   ease          先快后慢（默认，最常用，最自然）
>   linear        匀速（机械感，不推荐）
>   ease-in       慢慢开始（加速感）
>   ease-out      慢慢结束（减速感）
>   ease-in-out   慢开始+慢结束（两端慢中间快）
>
> 重要规则：
>   transition写在元素本身上，不是写在:hover里！
>   写在:hover里：鼠标移开时没有过渡，直接跳回原样
>   写在元素本身：鼠标移入和移出都有平滑过渡
>

## 代码区

```css

transition: all 0.3s ease;           /* 所有属性0.3秒过渡 */
transition: background 0.3s ease;    /* 只过渡背景色 */
transition: transform 0.3s, box-shadow 0.3s;  /* 多个属性 */
```
【演讲备注】
transition让属性变化有个过渡动画。没有transition的话，hover的时候颜色"啪"一下就变了，体验很生硬。加上transition: all 0.3s ease，变化就是0.3秒平滑过渡。一般写all就行，时长0.2到0.3秒比较舒服。ease是最常用的缓动函数。transition要写在元素本身上，不是写在:hover里，这个很多人搞反。写在:hover里的话，鼠标移开的时候没有过渡，直接跳回原样，很突兀。

---

[P12]

## 标题区

卡片动画效果 - 实战合集

## 正文文字区

>
> 卡片动画效果 - 实战合集
>
> 什么是卡片动画？
>   卡片动画是hover时触发的视觉反馈效果
>   让用户感知到"这个元素可以交互"
>   核心原理：CSS属性变化 + transition平滑过渡
>
> 效果1：卡片悬浮上移
>   hover时卡片往上移几像素，阴影变大变深
>   最常见的卡片效果，几乎所有网站都在用
>
> 效果2：卡片放大
>   hover时卡片稍微放大，吸引注意力
>   注意放大比例不要太大，1.03到1.05就够了
>
> 效果3：卡片翻转（正面/背面）
>   hover时卡片像翻牌一样翻转到背面
>   需要transform-style: preserve-3d开启3D空间
>   backface-visibility: hidden隐藏背面
>
> 效果4：图片遮罩淡入
>   hover时图片上出现半透明遮罩层
>   遮罩层上可以放文字或图标
>   用伪元素做遮罩，opacity从0变1
>
> 效果5：底部边框滑入
>   hover时底部从左到右滑入一条彩色边框
>   原理：width从0变100%，transition让宽度平滑增长
>
> 核心思路都一样：
>   先定义初始状态，hover时改变属性，transition负责平滑过渡
>

## 代码区

```css

/* 效果1：悬浮上移 */
.card { transition: all 0.3s ease; }
.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 24px rgba(0,0,0,0.15);
}

/* 效果2：放大 */
.card:hover { transform: scale(1.05); }

/* 效果3：翻转 */
.card-inner {
    transition: transform 0.6s;
    transform-style: preserve-3d;
}
.card:hover .card-inner { transform: rotateY(180deg); }
.card-front, .card-back { backface-visibility: hidden; }
.card-back { transform: rotateY(180deg); }

/* 效果4：遮罩淡入 */
.card-img-wrapper::after {
    content: "";
    position: absolute; inset: 0;
    background: rgba(0,0,0,0.5);
    opacity: 0;
    transition: opacity 0.3s;
}
.card:hover .card-img-wrapper::after { opacity: 1; }

/* 效果5：底部边框滑入 */
.card::after {
    content: "";
    position: absolute;
    bottom: 0; left: 0;
    width: 0; height: 3px;
    background: #409eff;
    transition: width 0.3s;
}
.card:hover::after { width: 100%; }
```
【演讲备注】
来看几个常见的卡片动画效果。效果1悬浮上移，最常见，鼠标移上去卡片往上移8px，阴影变大变深。效果2卡片放大，scale(1.05)放大5%，注意别放大太多。效果3卡片翻转，用到了3D变换。效果4图片遮罩淡入，用伪元素做遮罩层，opacity从0变1。效果5底部边框滑入，width从0变100%。这些效果的核心思路都一样：先定义初始状态，hover时改变属性，transition负责平滑过渡。

---

# 第四章 CSS布局

---

[P13]

## 标题区

CSS三种布局方式

## 正文文字区

>
> CSS三种布局方式
>
> 什么是CSS布局？
>   CSS布局是控制页面元素排列位置和大小的方式
>   同样的HTML内容，不同的布局方式呈现完全不同的页面效果
>   选择合适的布局方式是前端开发的核心技能
>
> 1. 普通流（Normal Flow）
>    默认排列方式，块级元素独占一行，行内元素并排
>    不需要额外CSS，元素按默认规则排列
>
> 2. Flex布局（弹性盒布局，Flexible Box）
>    一维布局，控制一行或一列的排列
>    适合：导航栏、工具栏、卡片列表、居中
>    2009年提出，现在最主流的布局方式
>
> 3. Grid布局（网格布局，Grid Layout）
>    二维布局，同时控制行和列
>    适合：页面框架、仪表盘、卡片网格
>    2017年浏览器全面支持，最强大的布局方式
>
> 实际开发中的搭配：
>   Grid搭框架（页面大结构）+ Flex排细节（框架内部元素）
>

## 代码区

无
【演讲备注】
CSS布局是做页面最重要的部分。一共有三种方式：普通流、Flex、Grid。普通流就是默认的排列方式，大家都懂。重点讲Flex和Grid，这两个是现在做布局的主力。

---

[P14]

## 标题区

普通流 - 默认排列方式

## 正文文字区

>
> 普通流 - 默认排列方式
>
> 什么是普通流？
>   普通流是CSS的默认布局方式，不写任何布局CSS时元素就按普通流排列
>   块级元素从上到下依次排列，行内元素从左到右排列
>
> 元素类型及特点：
>   块级元素（div, p, h1-h6, ul, li）
>     独占一行，宽度默认撑满父容器
>     可以设置宽、高、margin、padding
>
>   行内元素（span, a, strong, em）
>     并排显示，不会独占一行
>     不能设置宽和高，上下margin不生效
>
>   行内块元素（img, input, button）
>     并排显示，能设宽高
>     既有行内元素的并排特性，又有块级元素的尺寸控制
>
> 脱离普通流的方式：
>   float: left/right     浮动（现在主要做文字环绕图片）
>   position: absolute    绝对定位（相对最近的定位祖先偏移）
>   position: fixed       固定定位（相对浏览器窗口）
>
> position定位详解：
>   static     默认，不定位，元素在普通流中
>   relative   相对自身原位置偏移（不脱离普通流，原位置保留）
>   absolute   相对最近的定位祖先偏移（脱离普通流，原位置不保留）
>   fixed      相对浏览器窗口固定（脱离普通流，滚动页面不动）
>   sticky     滚动到一定位置后固定（导航栏吸顶效果常用）
>
> display改变元素显示类型：
>   display: block        变块级（独占一行）
>   display: inline       变行内（并排显示）
>   display: inline-block 变行内块（并排+可设宽高）
>   display: none         隐藏元素（不占空间，页面上看不到）
>   visibility: hidden    隐藏元素（还占空间，位置保留）
>

## 代码区

无
【演讲备注】
普通流快速过一下。块级元素独占一行，行内元素并排显示。float以前经常用来做布局，但现在有Flex和Grid之后基本不用了，float回归它本来的用途——文字环绕图片。position: sticky做吸顶导航栏特别好用。display: none和visibility: hidden的区别：none完全不占空间，hidden还占空间只是看不见。

---

[P15]

## 标题区

Flex布局 - 一维布局利器

## 正文文字区

>
> Flex布局 - 一维布局利器
>
> 什么是Flex布局？
>   Flex是Flexible Box的缩写，意为"弹性盒布局"
>   给父容器加display: flex，子元素就变成"Flex项目"可以灵活排列
>   Flex是一维布局，一次只控制一个方向（一行或一列）
>
> 核心概念：
>   主轴：元素排列的方向，默认水平从左到右
>   交叉轴：与主轴垂直的方向，默认垂直从上到下
>   Flex容器：加了display: flex的父元素
>   Flex项目：Flex容器内的子元素
>
> 两套属性：
>   容器属性（写在父元素上）：控制整体排列方式
>     justify-content  主轴对齐
>     align-items      交叉轴对齐
>     flex-direction   主轴方向
>     flex-wrap        是否换行
>     gap              项目间距
>
>   项目属性（写在子元素上）：控制单个元素
>     flex-grow    放大比例
>     flex-shrink  缩小比例
>     flex-basis   初始大小
>

## 代码区

```css

.container {
    display: flex;
}
```
【演讲备注】
Flex布局是现在用得最多的布局方式。核心思路很简单：给父容器加display: flex，子元素就变成Flex项目，可以灵活排列。Flex有两个轴：主轴和交叉轴。主轴就是排列方向，默认从左到右；交叉轴跟主轴垂直，默认从上到下。后面讲的justify-content管主轴，align-items管交叉轴。

---

[P16]

## 标题区

Flex容器属性

## 正文文字区

>
> Flex容器属性 - 控制整体排列方式
>
> flex-direction -- 决定主轴方向（元素往哪个方向排）
>   row             水平从左到右（默认，最常用）
>   row-reverse     水平从右到左
>   column          垂直从上到下（做纵向列表时用）
>   column-reverse  垂直从下到上
>
> justify-content -- 主轴对齐（控制主轴方向怎么排，最常用）
>   flex-start      靠主轴起点（默认，从左开始）
>   flex-end        靠主轴终点（靠右）
>   center          主轴居中（水平居中）
>   space-between   两端对齐，中间等距（导航栏最常用）
>   space-around    每个项目两侧等距（两端有半个间距）
>   space-evenly    完全等距（两端也有完整间距）
>
> align-items -- 交叉轴对齐（控制垂直方向怎么对齐）
>   stretch     拉伸填满容器高度（默认）
>   flex-start  交叉轴起点对齐（顶部对齐）
>   flex-end    交叉轴终点对齐（底部对齐）
>   center      交叉轴居中（垂直居中）
>
> 经典组合：水平垂直双居中
>   display: flex + justify-content: center + align-items: center
>   这三行代码实现以前要写很多行才能实现的居中效果
>
> flex-wrap 和 gap
>   flex-wrap: nowrap   不换行（默认，所有项目挤在一行）
>   flex-wrap: wrap     允许换行（项目太多时自动换到下一行）
>   gap: 16px           行间距和列间距都是16px（替代margin更方便）
>

## 代码区

```css

/* 导航栏：logo在左，菜单在右 */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* 水平垂直双居中 */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
}

/* 卡片列表：自动换行+间距 */
.card-list {
    display: flex;
    flex-wrap: wrap;
    gap: 16px;
}
```
【演讲备注】
flex-direction决定主轴方向，row是默认值从左到右，column是从上到下垂直排列。justify-content控制主轴方向的对齐，space-between是两端对齐，做导航栏特别好用。align-items控制交叉轴方向的对齐。那个经典组合一定要记住：display: flex + justify-content: center + align-items: center，实现水平垂直双居中。flex-wrap默认不换行，改成wrap允许换行。gap是间距，以前要给子元素加margin然后处理最后一个，现在直接在父容器写gap就行。

---

[P17]

## 标题区

Flex项目属性

## 正文文字区

>
> Flex项目属性 - 控制单个元素的行为
>
> flex-grow -- 放大比例（默认0，不放大）
>   当容器有剩余空间时，项目按flex-grow的比例分配多余空间
>   flex-grow: 0 表示不放大，保持原始大小
>   flex-grow: 1 表示占满剩余空间
>
> flex-shrink -- 缩小比例（默认1，等比缩小）
>   当容器空间不够时，项目按flex-shrink的比例缩小
>   flex-shrink: 0 表示不缩小，保持原始大小
>
> flex-basis -- 初始大小（默认auto）
>   在分配多余空间之前，项目占据的主轴空间
>   设了具体值（如200px）就按这个值来
>
> 简写：flex: grow shrink basis
>
> 最常用的写法：
>   flex: 1              占满剩余空间（最常用）
>   flex: 0 0 200px      固定200px宽，不放大不缩小
>
> 经典组合：侧边栏固定 + 主内容自适应
>   侧边栏 flex: 0 0 200px（固定200px宽度）
>   主内容 flex: 1（占满剩余空间）
>
> 两个子元素都写flex: 1 --> 平分空间
> 一个flex: 1 一个flex: 2 --> 1:2比例分配
>

## 代码区

```css

.sidebar { flex: 0 0 200px; }
.main    { flex: 1; }
```
【演讲备注】
子元素上的属性，最常用的是flex简写。flex: 1的意思是占满剩余空间。如果有两个子元素都写了flex: 1，就平分空间；一个写flex: 1一个写flex: 2，就是1:2的比例。flex: 0 0 200px是固定宽度，不放大也不缩小。做侧边栏+主内容布局的时候，侧边栏固定宽度，主内容flex: 1自适应，这个组合特别常用。

---

[P18]

## 标题区

Grid布局 - 二维布局利器

## 正文文字区

>
> Grid布局 - 二维布局利器
>
> 什么是Grid布局？
>   Grid是CSS的网格布局系统，可以同时控制行和列
>   把页面划分成行和列组成的网格，元素放在网格单元格里
>   Grid是二维布局，比Flex多了一个维度的控制能力
>
> 核心概念：
>   给父容器加 display: grid，子元素就变成"Grid项目"
>   用 grid-template-columns 定义列（有几列，每列多宽）
>   用 grid-template-rows 定义行（有几行，每行多高）
>   可以同时控制行和列，这是Grid和Flex最大的区别
>
> 和Flex的区别：
>   Flex一次只控制一个方向（一行或一列），是一维布局
>   Grid同时控制行和列（整个网格），是二维布局
>   选哪个？一维排列用Flex，二维网格用Grid
>
> fr单位（fraction，份数）：
>   fr是Grid特有的单位，表示按比例分配剩余空间
>   类似Flex的flex-grow，但用在Grid的列宽和行高上
>   1fr 1fr 1fr = 三等分（每列占1份）
>   2fr 1fr = 2:1比例（第一列占2份，第二列占1份）
>

## 代码区

```css

.page {
    display: grid;
    grid-template-columns: 200px 1fr;
    grid-template-rows: 60px 1fr 40px;
}

/* 三列等宽 */
grid-template-columns: 1fr 1fr 1fr;
grid-template-columns: repeat(3, 1fr);

/* 2:1比例 */
grid-template-columns: 2fr 1fr;

/* 响应式：自动算一行放几个 */
grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
```
【演讲备注】
Grid是二维布局，可以同时控制行和列。怎么选？排列一行或一列的东西用Flex，需要行和列同时控制的用Grid。fr是Grid特有的单位，表示按比例分配空间。repeat(auto-fill, minmax(280px, 1fr))这行代码特别实用：每个卡片最小280px，自动算一行能放几个，窗口缩小的时候自动从三列变两列变一列，不用写媒体查询。

---

[P19]

## 标题区

grid-template-areas - 给区域起名字

## 正文文字区

>
> grid-template-areas - 给区域起名字
>
> 什么是grid-template-areas？
>   grid-template-areas是Grid的可视化布局方式
>   用字符串给网格区域起名字，一眼就能看出页面结构
>   比用行列坐标数字更直观，代码即设计图
>
> 用法说明：
>   每个引号内是一行的布局，用空格分隔不同区域
>   同名的区域会合并成一个大的区域
>   用点号.表示空白区域（不放置任何内容）
>
> 子元素用grid-area认领自己的位置：
>   grid-area: header  表示这个元素放在header区域
>

## 代码区

```css

.page {
    display: grid;
    grid-template-columns: 200px 1fr;
    grid-template-rows: 60px 1fr 40px;
    grid-template-areas:
        "header  header"
        "sidebar main"
        "footer  footer";
    gap: 10px;
}

.header  { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main    { grid-area: main; }
.footer  { grid-area: footer; }

/* 三列布局 */
grid-template-areas:
    "header  header  header"
    "sidebar main    aside"
    "footer  footer  footer";
```
【演讲备注】
grid-template-areas是Grid最直观的用法。你在父容器里画个"地图"，每个区域起个名字，子元素用grid-area认领自己的位置。一眼就能看出页面结构，比写坐标数字直观多了。

---

[P20]

## 标题区

常用界面模板1 - 顶部导航栏（Flex）

## 正文文字区

>
> 要点：
>   space-between让logo和菜单分居两侧
>   align-items: center垂直居中
>   box-shadow做底部阴影线
>

## 代码区

```html

<nav class="navbar">
    <div class="logo">Logo</div>
    <ul class="nav-links">
        <li>首页</li><li>关于</li><li>联系</li>
    </ul>
</nav>

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 24px;
    height: 60px;
    background: #fff;
    box-shadow: 0 2px 8px rgba(0,0,0,0.08);
}
.nav-links {
    display: flex;
    gap: 24px;
    list-style: none;
}
```
【演讲备注】
第一个是顶部导航栏，几乎所有页面都要用。Flex布局，space-between让logo在左边菜单在右边，align-items: center让内容垂直居中，box-shadow做底部一条淡淡的阴影线。

---

[P21]

## 标题区

常用界面模板2 - 卡片列表（Grid推荐）

## 正文文字区

>
> 要点：
>   overflow: hidden 让内容不超出圆角
>   hover时上移+阴影加深 = 悬浮效果
>   Grid版自动响应式，不用算calc
>

## 代码区

```css

/* Grid版（推荐） */
.card-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 16px;
}

.card {
    border-radius: 12px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    overflow: hidden;
    transition: all 0.3s;
}
.card:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 24px rgba(0,0,0,0.12);
}
```
【演讲备注】
第二个是卡片列表，展示商品、文章、作品集都用到。推荐Grid版，repeat(auto-fill, minmax(280px, 1fr))自动算一行放几个，不用手动calc，还自带响应式。卡片样式：border-radius做圆角，box-shadow做阴影，overflow: hidden让内容不超出圆角。hover时transform上移，阴影加深，就是之前讲的悬浮效果。

---

[P22]

## 标题区

常用界面模板3 - 登录表单（Flex居中）与模板4 - 后台管理（Grid+Flex）

## 正文文字区

>
> 登录表单要点：
>   Flex双居中让表单卡片在页面正中间
>   input:focus加蓝色边框和光晕
>   min-height: 100vh占满整个屏幕高度
>
> 后台管理要点：
>   Grid搭整体框架（哪块放什么）
>   Flex排框架内部的细节（导航栏里的元素）
>   这就是实际开发中最常见的搭配方式
>

## 代码区

```css

/* 登录表单 */
.form-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #f5f5f5;
}
.form-card {
    width: 400px;
    padding: 32px;
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 4px 16px rgba(0,0,0,0.08);
}
.form-card input:focus {
    border-color: #409eff;
    outline: none;
    box-shadow: 0 0 0 3px rgba(64,158,255,0.2);
}

/* 后台管理 */
.layout {
    display: grid;
    grid-template-columns: 200px 1fr;
    grid-template-rows: 60px 1fr;
    grid-template-areas:
        "sidebar header"
        "sidebar main";
    min-height: 100vh;
}
.header  { grid-area: header; display: flex; align-items: center; }
.sidebar { grid-area: sidebar; background: #304156; }
.main    { grid-area: main; padding: 20px; background: #f0f2f5; }
```
【演讲备注】
第三个是登录表单，课程设计里肯定用得到。外层Flex双居中，min-height: 100vh占满整个屏幕高度，表单卡片就在正中间。第四个是后台管理页面，Grid搭整体框架，header在上，sidebar在左，main在右。header里面再用Flex排用户名、搜索框这些细节。Grid和Flex搭配的标准用法：Grid管大框架，Flex管小细节。

---

# 第五章 JS基础

---

[P23]

## 标题区

var有什么问题？

## 正文文字区

>
> var有什么问题？
>
> 什么是var/let/const？
>   var、let、const都是JS中声明变量的关键字
>   var是ES5时代的声明方式，有设计缺陷
>   let和const是ES6（2015年）新增的声明方式，修复了var的问题
>
> 1. 作用域泄露 -- var会跑出if和for的大括号
>    作用域是变量生效的范围
>    在C/Java里，变量出了if或for的大括号就不存在了
>    但var只有函数作用域，没有块级作用域，所以会"泄露"出去
>
> 2. 允许重复声明 -- 不报错但值被覆盖
>    同一个变量名声明两次，var不会报错
>    代码一长，这种bug很难找
>
> 3. 变量提升 -- 声明前访问不报错
>    var声明的变量会被"提升"到作用域顶部
>    但只提升声明不提升赋值，所以拿到undefined
>    拿到undefined比报错更危险，因为不容易发现
>
> 解决方案：let 和 const
>   let   可重新赋值，块级作用域，不能重复声明
>   const 不可重新赋值，块级作用域，不能重复声明
>
> 选择策略：默认用const，需要改的用let，var别用了
>   const存数组和对象时，内容可以改（push、修改属性），只是引用不能变
>

## 代码区

```javascript

/* 作用域泄露 */
if (true) { var x = 10; }
console.log(x);  // 10，跑出来了

/* 重复声明 */
var name = "小明";
var name = "小红";  // 不报错

/* 变量提升 */
console.log(a);  // undefined
var a = 1;

/* let/const 解决 */
if (true) { let y = 10; }
console.log(y);  // 报错，y不存在

const arr = [1, 2, 3];
arr.push(4);   // 可以，改的是内容
arr = [5, 6];  // 报错，不能改引用
```
【演讲备注】
JS部分从大家最熟悉的var说起。var有几个坑：作用域泄露、允许重复声明、变量提升。let和const解决了这些问题。const不能重新赋值，但存对象或数组时内容可以改，const限制的是"引用不能变"不是"内容不能变"。策略：默认const，需要改的用let，var别用了。

---

[P24]

## 标题区

JS数据类型

## 正文文字区

>
> JS数据类型
>
> 什么是数据类型？
>   数据类型是JS对数据的分类，不同类型的数据有不同的操作方式
>   JS是动态类型语言，变量不需要提前声明类型，赋什么值就是什么类型
>
> 基本类型（赋值时复制值，互不影响）
>   Number     数字       18, 3.14, -5, NaN（不是数字）, Infinity（无穷大）
>   String     字符串     "hello", 'world'，用引号包裹
>   Boolean    布尔       true（真）/ false（假），做条件判断
>   undefined  未定义     声明了变量但没赋值时的默认值
>   null       空值       主动设为"空"，表示"这里应该有值但现在没有"
>   Symbol     唯一值     ES6新增，创建不可重复的标识符（了解即可）
>   BigInt     大整数     处理超过Number范围的超大数字（了解即可）
>
> 引用类型（赋值时复制地址，改一个另一个也变）
>   Object     对象       { name: "小明", age: 20 }，键值对集合
>   Array      数组       [1, 2, 3]，有序的数据列表
>   Function   函数       function() {}，可重复执行的代码块
>
> 基本类型 vs 引用类型的区别：
>   基本类型赋值 = 复制值（两份独立的数据，互不影响）
>   引用类型赋值 = 复制地址（两个变量指向同一份数据，改一个另一个也变）
>
> typeof 判断类型（注意两个坑）
>   typeof null       返回 "object"  坑！这是JS的历史bug，null不是对象
>   typeof []         返回 "object"  坑！数组本质也是对象
>
> 判断数组的正确方法：Array.isArray([1,2,3])  返回 true
>

## 代码区

```javascript

typeof 123        // "number"
typeof "hello"    // "string"
typeof true       // "boolean"
typeof undefined  // "undefined"
typeof null       // "object"  坑！
typeof {}         // "object"
typeof []         // "object"  坑！

Array.isArray([1,2,3])  // true
```
【演讲备注】
数据类型这块，基本类型大家课上学过Number、String、Boolean，补充两个：undefined是"声明了但没赋值"的默认值，null是你主动设的"空"。typeof可以判断类型，但有两个坑：typeof null返回"object"，这是历史bug；typeof数组也返回"object"。判断数组要用Array.isArray()。基本类型和引用类型的区别很重要：基本类型赋值是复制值，互不影响；引用类型赋值是复制地址，改一个另一个也变。

---

[P25]

## 标题区

数组 - JS里用得最多的数据结构

## 正文文字区

>
> 数组 - JS里用得最多的数据结构
>
> 什么是数组？
>   数组是按顺序存储多个值的有序列表
>   用方括号[]创建，元素之间用逗号分隔
>   每个元素有一个编号（索引），从0开始计数
>
> 声明和访问
>   索引从0开始：第一个元素是[0]，第二个是[1]
>   fruits.length 获取数组长度（元素个数）
>   fruits[fruits.length - 1] 获取最后一个元素
>
> 常用方法
>   push / pop      末尾添加/删除（最常用）
>   unshift / shift  开头添加/删除（会移动所有元素，少用）
>   indexOf / includes  查找元素（indexOf返回索引，includes返回布尔值）
>   splice / slice  splice修改原数组（删除/插入），slice不修改原数组（截取）
>   join            数组转字符串，用指定分隔符连接
>
> 遍历方式
>   传统for循环    需要索引时使用
>   forEach        对每个元素执行操作，没有返回值
>   for...of       直接获取元素值，简洁推荐
>

## 代码区

```javascript

const fruits = ["苹果", "香蕉", "橙子"];
fruits[0]                        // "苹果"
fruits[fruits.length - 1]        // "橙子"

fruits.push("芒果")              // 末尾添加
fruits.pop()                     // 末尾删除
fruits.indexOf("香蕉")           // 找索引
fruits.includes("苹果")          // 是否包含
fruits.splice(1, 1)              // 从索引1删1个（修改原数组）
fruits.slice(0, 2)               // 截取（不修改原数组）
fruits.join(", ")                // "苹果, 香蕉"

/* 遍历 */
for (let i = 0; i < fruits.length; i++) { ... }
fruits.forEach(item => console.log(item));
for (const item of fruits) { console.log(item); }
```
【演讲备注】
数组是JS里用得最多的数据结构。常用方法：push末尾加、pop末尾删、indexOf找索引、includes判断有没有。splice和slice容易搞混：splice会修改原数组，slice不会。遍历三种方式，推荐for...of，简洁而且可以用break和continue。

---

[P26]

## 标题区

数组高阶方法

## 正文文字区

>
> 数组高阶方法
>
> 什么是高阶方法？
>   高阶方法是指接收函数作为参数的方法
>   它们让数组处理变得更简洁，一行代码完成以前要写循环才能做的事
>   这些方法都不修改原数组，返回新的结果
>
> map      对每个元素加工，返回新数组
>   原理：遍历数组，对每个元素执行回调函数，收集返回值组成新数组
>   用途：批量转换数据，如价格加税、提取对象属性
>
> filter   过滤，保留满足条件的元素
>   原理：遍历数组，对每个元素执行判断函数，保留返回true的元素
>   用途：筛选数据，如过滤及格成绩、筛选在售商品
>
> reduce   累计计算
>   原理：从左到右遍历，把当前元素和上一次的计算结果合并
>   用途：求和、求最大值、数组转对象
>
> find     找第一个满足条件的元素
>   原理：遍历数组，返回第一个使判断函数为true的元素
>   用途：在列表中查找特定项
>
> some     判断有没有满足条件的（返回布尔值）
> every    判断是不是全部满足条件（返回布尔值）
>

## 代码区

```javascript

/* map */
const doubled = [1, 2, 3].map(n => n * 2);  // [2, 4, 6]
const names = [{name: "小明"}, {name: "小红"}].map(u => u.name);

/* filter */
const passed = [45, 80, 92, 55, 78].filter(s => s >= 60);  // [80, 92, 78]

/* reduce */
const sum = [1, 2, 3, 4].reduce((acc, cur) => acc + cur, 0);  // 10

/* find */
[45, 80, 92].find(s => s >= 60);  // 80

/* some / every */
[1, 2, 3].some(n => n > 2);    // true
[1, 2, 3].every(n => n > 2);   // false
```
【演讲备注】
数组的高阶方法，做项目和打比赛都会频繁用到。map是对每个元素做加工返回新数组。filter是过滤只保留满足条件的。reduce是累计计算，acc是累加器，cur是当前元素，最后的0是初始值。find找第一个满足条件的，some判断有没有满足的，every判断是不是全部满足。这些方法都不改变原数组。

---

[P27]

## 标题区

对象 + 模板字符串

## 正文文字区

>
> 对象 + 模板字符串
>
> 什么是对象？
>   对象是键值对（key-value）的集合，用花括号{}包裹
>   键（key）是属性名，值（value）是属性值
>   对象用来描述一个事物，如一个学生的姓名、年龄、专业
>
> 对象操作：
>   访问属性：obj.name 或 obj["age"]（点语法和方括号语法）
>   修改属性：obj.age = 21（直接赋值覆盖）
>   添加属性：obj.grade = "大二"（不存在的key自动创建）
>   删除属性：delete obj.major
>   遍历属性：for (let key in obj)（遍历的是key不是value）
>
> ES6对象简写：
>   解构赋值：const { name, age } = obj（从对象中提取属性）
>   展开运算符：const copy = { ...obj }（浅复制对象）
>   合并对象：const merged = { ...obj, gpa: 3.8 }（复制+新增）
>
> 什么是模板字符串？
>   模板字符串是ES6新增的字符串写法，用反引号``包裹
>   用${}插入变量或表达式，比用加号拼接更清晰
>   支持换行，不需要写\n
>
> 模板字符串优势：
>   不用加号拼接，代码更易读
>   ${}内可以写任意JS表达式（变量、运算、函数调用）
>   支持多行字符串，拼HTML特别方便
>

## 代码区

```javascript

const student = { name: "小明", age: 20, major: "计算机" };

student.name                    // "小明"
student["age"]                  // 20
student.age = 21                // 修改
student.grade = "大二"          // 添加
delete student.major            // 删除

for (let key in student) { console.log(key, student[key]); }

const { name, age } = student;  // 解构
const copy = { ...student };    // 展开

/* 模板字符串 */
const name = "小明"; const age = 20;

// 以前
"我叫" + name + "，今年" + age + "岁"

// 现在
`我叫${name}，今年${age}岁`
`明年${age + 1}岁`
```
【演讲备注】
对象就是键值对，用花括号包起来。访问属性用点语法或者方括号。遍历对象用for...in，注意这个遍历的是key不是value。解构赋值可以从对象里直接提取属性，展开运算符可以复制或者合并对象。模板字符串用反引号包起来，变量用${}包裹，比用加号拼字符串方便太多。而且支持换行，不用写\n了。${}里面还能写表达式。

---

# 第六章 JS运算符与流程控制

---

[P28]

## 标题区

== vs ===

## 正文文字区

>
> == vs ===
>
> 什么是==和===？
>   ==是相等运算符，比较时会自动进行类型转换
>   ===是全等运算符，比较时不做类型转换，类型不同直接返回false
>
> ==的问题：类型转换规则太离谱
>   "3"等于3，空字符串等于false，空数组等于false
>   这些转换规则不符合直觉，容易产生难以发现的bug
>
> 结论：永远用 === 和 !==，不要用 == 和 !=
>
> NaN的特殊性：
>   NaN是Not a Number的缩写，表示"不是一个合法数字"
>   NaN不等于任何值，包括它自己（NaN === NaN 返回false）
>   判断NaN要用Number.isNaN()方法
>

## 代码区

```javascript

3 == "3"    // true   （"3"被转成数字3）
3 === "3"   // false  （数字和字符串类型不同）
"" == false // true   （空字符串转0，false也转0）
0 == false  // true
[] == false // true

NaN == NaN  // false
NaN === NaN // false

Number.isNaN(NaN)  // true
```
【演讲备注】
==和===的区别，竞赛必考。==会做类型转换，===不会。空字符串、0、空数组用==比较都等于false，太离谱了。结论：永远用===。NaN是JS里唯一一个不等于自己的值，判断NaN要用Number.isNaN()。

---

[P29]

## 标题区

条件判断与循环

## 正文文字区

>
> 条件判断与循环
>
> 条件判断 -- 根据不同情况执行不同代码
>   if / else if / else  最基本的条件判断
>   三元运算符：条件 ? 值1 : 值2  if-else的简写，适合简单的二选一
>
> 循环 -- 重复执行一段代码
>   for       知道循环次数时使用（如遍历数组）
>   while     不知道循环次数时使用（如等待某个条件满足）
>   for...of  遍历数组，直接获取元素值（推荐）
>   for...in  遍历对象，获取属性名（key）
>
> 循环控制：
>   break     跳出整个循环（不再执行后续循环）
>   continue  跳过当前这一轮，进入下一轮
>

## 代码区

```javascript

/* 三元运算符 */
let result = score >= 60 ? "及格" : "挂科";

/* for循环 */
for (let i = 0; i < 10; i++) { ... }

/* while循环 */
while (condition) { ... }

/* for...of 遍历数组 */
for (const item of array) { ... }

/* for...in 遍历对象 */
for (const key in object) { ... }
```
【演讲备注】
条件和循环大家都有基础，快速过。三元运算符是if-else的简写，适合简单的二选一。for...of遍历数组拿值，for...in遍历对象拿key，别搞混。

---

[P30]

## 标题区

实战：九九乘法表

## 正文文字区

>
> 思路：
>   外层循环控制行（i从1到9）
>   内层循环控制列（j从1到i）
>   模板字符串拼接每一项
>

## 代码区

```javascript

for (let i = 1; i <= 9; i++) {
    let row = "";
    for (let j = 1; j <= i; j++) {
        row += `${j}x${i}=${i * j}\t`;
    }
    console.log(row);
}

// 输出：
// 1x1=1
// 1x2=2  2x2=4
// 1x3=3  2x3=6  3x3=9
// ...
```
【演讲备注】
九九乘法表，嵌套循环最经典的例子。外层循环i控制行，从1到9。内层循环j控制列，从1到i。为什么j只到i？因为乘法表是三角形的，第i行只有i个式子。这个练习把for循环、嵌套循环、模板字符串都串起来了。

---

[P31]

## 标题区

实战：打印三角形

## 正文文字区

>
> 直角三角形：第i行i个星号
> 等腰三角形：第i行有(5-i)个空格 + (2i-1)个星号
> repeat(n)方法：把字符串重复n次
>

## 代码区

```javascript

/* 直角三角形 */
for (let i = 1; i <= 5; i++) {
    console.log("*".repeat(i));
}
// *
// **
// ***
// ****
// *****

/* 等腰三角形 */
for (let i = 1; i <= 5; i++) {
    const spaces = " ".repeat(5 - i);
    const stars = "*".repeat(2 * i - 1);
    console.log(spaces + stars);
}
//     *
//    ***
//   *****
//  *******
// *********
```
【演讲备注】
打印三角形，也是循环的经典练习。直角三角形很简单，第i行i个星号，用repeat方法重复字符串就行。等腰三角形稍微复杂一点，每行前面有空格，空格数是5-i，星号数是2i-1。这两个练习练的是循环的核心思路：外层控制行，内层控制每行的内容。

---

# 第七章 JS函数

---

[P32]

## 标题区

函数三种写法

## 正文文字区

>
> 函数三种写法
>
> 什么是函数？
>   函数是一段可以重复使用的代码块
>   接收输入（参数），执行操作，返回输出（返回值）
>   函数让代码更简洁、更易维护、可复用
>
> 三种写法：
>   函数声明    function add(a, b) { return a + b; }
>   函数表达式  const add = function(a, b) { return a + b; };
>   箭头函数    const add = (a, b) => a + b;
>
> 函数声明 vs 函数表达式：
>   函数声明有整体提升，可以在声明前调用
>   函数表达式不会提升，必须先声明再调用
>   实际写代码都是先声明再调用，区别不大
>
> 箭头函数简写规则：
>   一个参数省括号：  x => x * 2
>   多个参数要括号：  (a, b) => a + b
>   一行代码省大括号和return（自动返回表达式的值）
>   多行代码要大括号和return（需要手动写return）
>

## 代码区

```javascript

// 函数声明
function add(a, b) { return a + b; }

// 函数表达式
const add = function(a, b) { return a + b; };

// 箭头函数
const add = (a, b) => a + b;

// 箭头函数多行
const add = (a, b) => {
    const sum = a + b;
    return sum * 2;
};
```
【演讲备注】
函数是JS的核心概念。三种写法效果一样，但有个关键区别——this的指向不同。先看三种写法长什么样。函数声明和函数表达式的区别是：函数声明有整体提升，你可以在声明之前调用它；函数表达式不行。不过实际写代码都是先声明再调用，这个区别影响不大。箭头函数是重点，写法短。

---

[P33]

## 标题区

this指向 - 三种写法最大的区别

## 正文文字区

>
> this指向 - 三种写法最大的区别
>
> 什么是this？
>   this是函数内部的特殊变量，指向"调用这个函数的对象"
>   this的值取决于函数怎么被调用，而不是在哪里定义
>
> 普通函数 vs 箭头函数的this：
>   普通函数：this取决于"谁调用了它"
>     btn.addEventListener("click", function) --> this指向btn
>   箭头函数：this继承定义时所在作用域的this
>     btn.addEventListener("click", () => {}) --> this指向外层作用域
>
> 选择规则：
>   需要用this（操作触发事件的元素） --> 用普通函数
>   不需要this（纯数据处理） --> 箭头函数更简洁
>

## 代码区

```javascript

const btn = document.querySelector("#myBtn");

// 普通函数 -- this指向btn，正确
btn.addEventListener("click", function() {
    this.textContent = "已点击";
});

// 箭头函数 -- this指向window，不对
btn.addEventListener("click", () => {
    this.textContent = "已点击";
});
```
【演讲备注】
三种写法最大的区别是this的指向。来看个实际场景：页面上有个按钮，点击后改按钮文字。用普通函数，this指向btn，正确。用箭头函数，this指向window，不对。因为普通函数的this是"谁调用我this就是谁"，箭头函数没有自己的this，它从外层"继承"this。所以规则很简单：需要用this的时候用普通函数，其他时候箭头函数更简洁。

---

[P34]

## 标题区

参数默认值 + 解构参数

## 正文文字区

>
> 参数默认值 + 解构参数
>
> 什么是参数默认值？
>   参数默认值是ES6新增的语法，函数调用时不传参就用默认值
>   以前要用 if (name === undefined) 来判断，现在直接在参数列表里写默认值
>
> 参数默认值用法：
>   function greet(name = "同学") {} -- 不传name时默认是"同学"
>   箭头函数也能用：const greet = (name = "同学") => {}
>
> 什么是解构参数？
>   解构参数是把传入的对象自动拆开，提取需要的属性
>   没传的属性用默认值，传了的用传的值
>   做配置项的时候特别方便
>
> 注意事项：
>   解构参数如果不传任何参数会报错（因为要对undefined解构）
>   解决方法：在最外层加 = {} 作为默认值
>

## 代码区

```javascript

/* 参数默认值 */
function greet(name = "同学") {
    console.log("你好，" + name);
}
greet();       // "你好，同学"
greet("小明"); // "你好，小明"

/* 箭头函数也能用 */
const greet = (name = "同学") => `你好，${name}`;

/* 解构参数 */
function createUser({ name = "匿名", age = 18, role = "user" }) {
    return { name, age, role };
}
createUser({ name: "小明" });
// { name: "小明", age: 18, role: "user" }

/* 不传参的默认值 */
function createUser({ name = "匿名", age = 18 } = {}) {
    return { name, age };
}
createUser();  // { name: "匿名", age: 18 }
```
【演讲备注】
参数默认值，不传就用默认值，传了就用传的值。做项目的时候很常用。还有个解构参数的写法，传对象进去，自动解构，没传的属性用默认值。做配置项的时候特别方便。注意如果不传参数会报错，要在最外层加个={}作为默认值。

---

# 第八章 JS DOM与事件

---

[P35]

## 标题区

DOM操作 - JS操控页面

## 正文文字区

>
> DOM操作 - JS操控页面
>
> 什么是DOM？
>   DOM是Document Object Model（文档对象模型）的缩写
>   浏览器把HTML解析成一棵树状结构（DOM树），每个HTML标签是树上的一个节点
>   JS通过document对象访问和操作这棵树，就能动态改变页面内容
>
> 找元素（最常用的三种方法）：
>   querySelector("#id")       按CSS选择器找，返回第一个匹配的元素
>   querySelector(".class")    按class找，返回第一个匹配的元素
>   querySelectorAll("li")     找所有匹配的元素，返回一个列表
>
> 改内容：
>   textContent = "文字"       改纯文本内容（安全，不会解析HTML标签）
>   innerHTML = "<b>HTML</b>"  改HTML内容（会解析标签，有安全风险）
>
> 改class：
>   classList.add("active")     加class名
>   classList.remove("active")  删class名
>   classList.toggle("active")  切换class名（有则删，无则加）
>
> 绑事件：
>   addEventListener("click", () => { ... })
>   第一个参数是事件类型，第二个参数是事件触发时执行的函数
>
> 前端交互的基本套路：
>   用户操作 --> 事件触发 --> JS处理数据 --> 更新页面
>   所有前端交互都遵循这个流程
>

## 代码区

```javascript

const el = document.querySelector("#myId");
el.textContent = "新文字";
el.classList.add("active");
el.addEventListener("click", () => { ... });
```
【演讲备注】
DOM这部分大家还没深入学，简单过一下知道怎么回事就行。核心就三步：找到元素、改内容、绑事件。找元素推荐用querySelector，CSS选择器语法，一个方法搞定。改文字用textContent，操作class用classList。绑事件用addEventListener。所有前端交互都是同一个套路：用户操作触发事件，JS处理数据，然后更新页面。

---

[P36]

## 标题区

实战：按键点击给文本框赋值

## 正文文字区

>
> 场景：点击按钮，把内容填进输入框
>   搜索框的快捷搜索词、表单的默认值填充、表情选择器
>
> 核心知识点：
>   input.value = "文字"    给输入框赋值（读取也用.value）
>   btn.dataset.text        读取 data-text 属性
>   querySelectorAll + forEach  批量给多个按钮绑事件
>
> 进阶1：追加内容而不是替换
>   input.value += text
>
> 进阶2：实时预览输入内容
>   input事件比change事件更实时
>

## 代码区

```

<!-- HTML -->
<input type="text" id="msgInput" placeholder="请输入内容">
<p id="preview">预览区域</p>
<button class="quick-btn" data-text="你好">快捷1：你好</button>
<button class="quick-btn" data-text="在吗">快捷2：在吗</button>
<button class="quick-btn" data-text="收到">快捷3：收到</button>
<button id="clearBtn">清空</button>

// JS
const msgInput = document.getElementById("msgInput");
const preview = document.getElementById("preview");
const quickBtns = document.querySelectorAll(".quick-btn");
const clearBtn = document.getElementById("clearBtn");

// 点击快捷按钮 -> 给输入框赋值
quickBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        msgInput.value = btn.dataset.text;
        preview.textContent = "已填入：" + btn.dataset.text;
    });
});

// 清空按钮
clearBtn.addEventListener("click", () => {
    msgInput.value = "";
    preview.textContent = "";
});

// 进阶：追加内容
msgInput.value += btn.dataset.text;

// 进阶：实时预览
msgInput.addEventListener("input", () => {
    preview.textContent = "正在输入：" + msgInput.value;
});
```
【演讲备注】
接下来做一个最常见也最实用的交互——点击按钮给文本框赋值。HTML部分，一个输入框、一个预览区、几个快捷按钮。按钮上用data-text属性存要填入的文字，JS里用dataset.text读取。JS逻辑分两块：第一块，querySelectorAll选中所有快捷按钮，forEach遍历，每个按钮绑click事件，点击时把data-text的值赋给input.value。注意输入框的值用value属性读写，不是textContent。第二块，清空按钮把value设为空字符串。进阶用法：追加内容用+=，实时预览用input事件。

---

[P37]

## 标题区

实战：简易计算器

## 正文文字区

>
> 涉及知识点：
>   getElementById获取元素
>   input.value获取输入值
>   Number()转数字（input.value是字符串）
>   if-else条件判断
>   模板字符串拼接结果
>   textContent更新页面
>

## 代码区

```

<!-- HTML -->
<input type="number" id="num1" placeholder="数字1">
<select id="op">
    <option value="+">+</option>
    <option value="-">-</option>
    <option value="*">*</option>
    <option value="/">/</option>
</select>
<input type="number" id="num2" placeholder="数字2">
<button id="calcBtn">计算</button>
<p id="result"></p>

// JS
const num1 = document.getElementById("num1");
const num2 = document.getElementById("num2");
const op = document.getElementById("op");
const calcBtn = document.getElementById("calcBtn");
const result = document.getElementById("result");

calcBtn.addEventListener("click", () => {
    const a = Number(num1.value);
    const b = Number(num2.value);
    const operator = op.value;
    let res;

    if (operator === "+") res = a + b;
    else if (operator === "-") res = a - b;
    else if (operator === "*") res = a * b;
    else if (operator === "/") {
        if (b === 0) {
            result.textContent = "除数不能为0";
            return;
        }
        res = a / b;
    }

    result.textContent = `结果：${res}`;
});
```
【演讲备注】
来做个综合练习——简易计算器。逻辑拆开看：先获取所有元素的引用。点击按钮时，用input.value拿到输入值，注意value是字符串，要用Number()转成数字。然后根据运算符做不同的计算，if-else判断。除法要特殊处理，除数不能为0。最后用textContent把结果显示出来。这个例子把今天讲的很多东西都串起来了。

---

# 第九章 竞赛题与收尾

---

[P38]

## 标题区

竞赛高频题

## 正文文字区

>
> 题1：var + setTimeout 闭包
> 题2：typeof null 陷阱
> 题3：事件循环执行顺序
> 题4：引用类型赋值
> 题5：隐式类型转换
>

## 代码区

无
【演讲备注】
最后来几道竞赛和面试里的高频题，大家可以当自我检测。

---

[P39]

## 标题区

题目1：var + setTimeout 闭包

## 正文文字区

>
> 答案：3, 3, 3
>
> 原因：var只有函数作用域，三个回调共享同一个i
>       等回调执行时循环已结束，i变成了3
>
> 改法1：var换成let（最简单）
> 改法2：IIFE闭包，每次循环把i传进立即执行函数，j被"锁住"
>

## 代码区

```javascript

for (var i = 0; i < 3; i++) {
    setTimeout(function() {
        console.log(i);
    }, 0);
}
// 输出：3, 3, 3

// 改法1：let
for (let i = 0; i < 3; i++) {
    setTimeout(function() {
        console.log(i);
    }, 0);
}
// 输出：0, 1, 2

// 改法2：IIFE闭包
for (var i = 0; i < 3; i++) {
    (function(j) {
        setTimeout(function() {
            console.log(j);
        }, 0);
    })(i);
}
```
【演讲备注】
var只有函数作用域，三个回调共享同一个i，执行时i已经是3。改成let每次循环独立的i。或者用立即执行函数创建闭包，把每次的i锁住。这个题蓝桥杯、前端面试出现率极高。

---

[P40]

## 标题区

题目2：typeof null 陷阱

## 正文文字区

>
> typeof null      返回 "object"  （历史bug，null不是对象）
> typeof undefined 返回 "undefined"
>
> null == undefined    返回 true  （规范规定）
> null === undefined   返回 false （类型不同）
>
> null vs undefined：
>   null      主动设的"空"      let a = null
>   undefined 还没赋值的默认值   let b; （不赋值就是undefined）
>
> 延伸：typeof typeof 1 返回 "string"
>   typeof 1 返回 "number"（字符串）
>   typeof "number" 返回 "string"
>   typeof的返回值永远是字符串
>

## 代码区

```javascript

typeof null       // "object"  坑！
typeof undefined  // "undefined"
null == undefined // true
null === undefined // false

typeof typeof 1   // "string"
```
【演讲备注】
typeof null返回"object"，历史bug。null是主动设的空，undefined是还没赋值。typeof的返回值永远是字符串，所以typeof typeof 1是"string"。

---

[P41]

## 标题区

题目3：事件循环执行顺序

## 正文文字区

>
> 答案：1, 4, 3, 2
>
> JS执行顺序：同步 > 微任务 > 宏任务
>
> 同步代码：  console.log(1), console.log(4)  先执行
> 微任务队列：Promise.then                    其次执行
> 宏任务队列：setTimeout                      最后执行
>
> setTimeout延迟是0也排在微任务后面
> "尽快执行"不等于"最先执行"
>

## 代码区

```javascript

console.log(1);
setTimeout(() => console.log(2), 0);
Promise.resolve().then(() => console.log(3));
console.log(4);

// 输出顺序：1, 4, 3, 2
```
【演讲备注】
蓝桥杯高频题。JS执行顺序：先同步，再微任务，最后宏任务。console.log同步，Promise.then微任务，setTimeout宏任务。延迟0毫秒只是说"尽快执行"，但再快也排在微任务后面。记住：同步 > 微任务 > 宏任务。

---

[P42]

## 标题区

题目4：引用类型赋值

## 正文文字区

>
> 答案："小红"
>
> 原因：对象是引用类型，a和b指向同一块内存
>       赋值复制的是地址，不是内容
>
> 规则：
>   基本类型赋值 = 复制值（各管各的）
>   引用类型赋值 = 复制地址（改一个另一个也变）
>
> 想真正复制对象：
>   展开运算符做浅拷贝
>   JSON方法做深拷贝
>

## 代码区

```javascript

const a = { name: "小明" };
const b = a;
b.name = "小红";
console.log(a.name);  // "小红"

// 对比基本类型
const c = 10;
let d = c;
d = 20;
console.log(c);  // 10，互不影响

// 浅拷贝
const copy = { ...obj };

// 深拷贝
const deepCopy = JSON.parse(JSON.stringify(obj));
```
【演讲备注】
a和b指向同一个对象，改b就是改a。对象和数组是引用类型，赋值复制地址。基本类型赋值才是复制值。想真正复制对象要用展开运算符做浅拷贝，或者JSON方法做深拷贝。

---

[P43]

## 标题区

题目5：隐式类型转换

## 正文文字区

>
> [] == false 返回 true
>
> 转换过程：[] --> "" --> 0，false --> 0，0 == 0 --> true
> 换成 === 就是 false，因为类型不同
>
> 结论：==的类型转换规则太离谱，永远用===
>       +遇到字符串拼接，-遇到字符串转数字
>

## 代码区

```

[] == false  // true
[] == ![]    // true（![]是false，然后[] == false）
"1" + 1     // "11"（+遇到字符串会拼接）
"1" - 1     // 0  （-会把字符串转数字）
1 + 2 + "3" // "33"（先1+2=3，再拼"3"）
"1" + 2 + 3 // "123"（从左到右，"1"+2="12"，再+3="123"）
```
【演讲备注】
空数组等于false，因为类型转换太离谱。这就是为什么用===不用==。隐式转换的题竞赛里经常出，记住+遇到字符串拼接，-遇到字符串转数字，从左到右依次计算。

---

[P44]

## 标题区

今天聊了这些

## 正文文字区

>
> HTML介绍：
>   Markdown语法速览 + HTML快速复习
>   Markdown vs HTML 语法对比与使用场景
>
> CSS属性：
>   border-radius / box-shadow / 伪元素 / 伪类 / transition
>   卡片动画效果：悬浮上移、放大、翻转、遮罩、边框滑入
>
> CSS布局：
>   Flex布局（一维）+ Grid布局（二维）
>   常用模板：导航栏 / 卡片列表 / 登录表单 / 后台管理
>
> JS基础：
>   var的坑，用let和const
>   数据类型、数组方法(map/filter/reduce)、对象
>   ==有坑，用===
>   函数三种写法，注意this指向
>
> JS实战：
>   按键点击赋值、九九乘法表、三角形、简易计算器
>
> 竞赛重点：
>   var/let闭包 | typeof陷阱 | 事件循环 | 引用类型 | 隐式转换
>
> 回去可以继续看：
>   CSS动画 @keyframes / 响应式 @media
>   数组方法 map/filter/reduce 多练
>   Promise / async-await
>   Vue / React
>

## 代码区

无
【演讲备注】
今天内容不少，总结一下。开头聊了Markdown和HTML的关系，写文档用Markdown，写网页用HTML，Markdown最终会转成HTML。CSS部分重点讲了常用属性和卡片动画效果，Flex和Grid两种布局方式，还有四个常用界面模板。JS部分讲了var的坑、数据类型、数组对象、==和===、函数三种写法的this区别，还有按键点击赋值、九九乘法表、三角形、计算器实战例子。竞赛重点就是那五道题。回去把今天讲的代码自己敲一遍，光看学不会。有问题群里问。谢谢大家。

---

【制作参考】
适用对象：计算机系大二学生（有HTML/CSS/JS基础）
建议时长：90分钟

时间分配：
| 环节 | 内容 | 时间 |
|------|------|------|
| 开场 | 前端三件套定位 | 3分钟 |
| HTML介绍 | Markdown语法 vs HTML快速复习 | 5分钟 |
| CSS属性 | 圆角、阴影、伪元素、过渡、卡片效果 | 12分钟 |
| CSS布局 | 普通流 / Flex / Grid + 常用界面模板 | 17分钟 |
| JS基础 | var的坑、数据类型、数组、对象 | 16分钟 |
| JS运算符与流程 | ==和===、条件、循环 + 乘法表/三角形 | 10分钟 |
| JS函数 | 三种写法、this、参数默认值 | 12分钟 |
| JS DOM与事件 | 按键赋值 + 计算器实例 | 8分钟 |
| 竞赛题 + 收尾 | 高频理论题 + 总结 | 7分钟 |

时间把控：
| 时间 | 到哪里 |
|------|--------|
| 3分钟 | 开场结束 |
| 8分钟 | HTML介绍讲完 |
| 20分钟 | CSS属性+卡片动画讲完 |
| 37分钟 | CSS布局+模板讲完 |
| 53分钟 | JS基础讲完 |
| 63分钟 | 运算符+乘法表+三角形讲完 |
| 75分钟 | 函数讲完 |
| 83分钟 | DOM+计算器讲完 |
| 90分钟 | 竞赛题+收尾 |
