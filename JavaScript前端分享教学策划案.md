# JavaScript前端分享 - 策划案


## 时间分配（90分钟）

| 环节 | 内容 | 时间 |
|------|------|------|
| 开场 | 前端三件套定位 | 3分钟 |
| CSS属性 | 圆角、阴影、伪元素、过渡、卡片效果 | 14分钟 |
| CSS布局 | 普通流 / Flex / Grid + 常用界面模板 | 20分钟 |
| JS基础 | var的坑、数据类型、数组、对象 | 16分钟 |
| JS运算符与流程 | ==和===、条件、循环 + 乘法表/三角形 | 10分钟 |
| JS函数 | 三种写法、this、参数默认值 | 12分钟 |
| JS DOM与事件 | 简单过 + 计算器实例 | 8分钟 |
| 竞赛题 + 收尾 | 高频理论题 + 总结 | 7分钟 |

---

## 一、开场（3分钟）

### PPT页面

```
前端三件套

HTML  - 页面有什么内容（结构层）
  标题、段落、图片、按钮、输入框、表格...

CSS   - 页面长什么样（表现层）
  颜色、字体、间距、布局、动画、圆角、阴影...

JS    - 页面会做什么（行为层）
  点击响应、表单验证、动态更新、数据处理...

一个网页 = HTML骨架 + CSS皮肤 + JS让东西动起来
今天的内容：CSS进阶属性 + CSS布局 + JS基础
```

### 说的话

> 今天聊前端，CSS和JS都会涉及。先说下三件套的关系：HTML搭结构，CSS管样式，JS管行为。打个比方，HTML是毛坯房，CSS是装修，JS是智能家居——没有JS，页面就是个静态海报；有了JS，按钮能点、表单能提交、内容能动态变化。
>
> 今天前半段讲CSS，重点放在课上可能没细讲的属性和布局上，这些东西做课程设计、打比赛、写个人主页的时候天天用。后半段讲JS，从学校教的var开始，补充一些课上没展开但以后写代码绕不开的东西。大家都有基础，所以不会从零讲，直接上干货。

---

## 二、CSS常用属性（14分钟）

### PPT页面

```
CSS常用属性速览 -- 课上没细讲但做项目天天用的

盒模型（课上学过，不展开）
  margin / padding / border / width / height

今天重点讲的属性
  border-radius    圆角
  box-shadow       盒子阴影
  text-shadow      文字阴影
  transition       过渡动画
  ::before / ::after  伪元素
  :hover / :focus / :nth-child()  伪类

这些属性组合起来能做出各种好看的卡片效果
```

### 说的话

> 先过一遍CSS里做项目用得最多、但课上可能没细讲的属性。盒模型大家应该都学过了，margin外边距、padding内边距、border边框、width/height宽高，这个不展开。重点讲几个课上可能一笔带过的属性，这些属性组合起来就是各种好看的卡片、按钮效果。

---

### 2.1 border-radius -- 圆角

### PPT页面

```
border-radius -- 让方角变圆角

写法：
  border-radius: 10px;            四个角统一10px圆角
  border-radius: 50%;             正方形变正圆，长方形变椭圆
  border-radius: 10px 0;          左上右下10px，右上左下0
  border-radius: 10px 0 10px 0;   左上10px 右上0 右下10px 左下0
                                 顺序：左上→右上→右下→左下（顺时针）

实际用途：
  头像变圆形      border-radius: 50%
  按钮变胶囊形    border-radius: 999px（给一个超大的值）
  卡片做圆角      border-radius: 8px 或 12px（8-12px比较舒服）
  只圆上面两个角  border-radius: 12px 12px 0 0

注意：50%圆角 + 正方形 = 正圆
      50%圆角 + 长方形 = 椭圆（不是正圆）
```

### 说的话

> border-radius做圆角，这个做项目的时候几乎每个元素都会用到。写一个值就是四个角都一样，写四个值就是顺时针方向：左上、右上、右下、左下。
>
> 几个常见的用法：头像做圆形就50%，但注意元素本身得是正方形，不然变成椭圆；按钮做胶囊形状就给一个特别大的值比如999px，因为圆角值超过高度的一半就会完全圆化；卡片做圆角一般8px到12px比较好看，太大了像气球。
>
> 还有个技巧：只圆上面两个角可以写border-radius: 12px 12px 0 0，做弹窗或者卡片顶部的时候常用。

---

### 2.2 box-shadow -- 阴影

### PPT页面

```
box-shadow -- 给元素加阴影，做出立体感和层次感

完整参数：
  box-shadow: 水平偏移 垂直偏移 模糊半径 扩展半径 颜色;

常用写法：
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  /* 水平0 垂直2px往下 模糊8px 颜色黑色透明度0.1 */
  /* 这是卡片最常用的阴影，柔和自然 */

  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  /* 稍微重一点的阴影，悬浮效果 */

  box-shadow: inset 0 1px 3px rgba(0,0,0,0.2);
  /* inset内阴影，做输入框内凹效果 */

  box-shadow: 0 1px 2px rgba(0,0,0,0.1),
              0 2px 8px rgba(0,0,0,0.1);
  /* 多层阴影叠加，更真实 */

text-shadow -- 文字阴影
  text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
  /* 参数类似，给标题加阴影 */

rgba颜色说明：
  rgba(0,0,0,0.1)  最后一个值是透明度，0完全透明，1完全不透明
  阴影用0.05-0.2比较自然，纯黑rgba(0,0,0,1)太硬了
```

### 说的话

> box-shadow给元素加阴影，做卡片效果的时候特别常用。没有阴影的卡片就像贴在屏幕上的纸片，加了阴影就有立体感和层次感。
>
> 参数顺序是：水平偏移、垂直偏移、模糊半径、扩展半径（可以省略）、颜色。水平正值往右，负值往左；垂直正值往下，负值往上。模糊半径越大阴影越柔和、越淡。
>
> 颜色建议用rgba，最后一个值控制透明度。纯黑阴影太硬了，0.1到0.2之间比较自然。做项目的时候，卡片阴影一般写`box-shadow: 0 2px 8px rgba(0,0,0,0.1)`，垂直偏移2px让阴影往下走，模糊8px让阴影柔和，透明度0.1不会太重。
>
> inset是内阴影，做输入框那种内凹效果的时候用。多层阴影叠加可以让阴影更真实，一层做近距离的硬阴影，一层做远距离的软阴影。
>
> text-shadow参数差不多，给标题文字加阴影用。

---

### 2.3 伪元素 ::before / ::after

### PPT页面

```
伪元素 ::before / ::after -- 用CSS插入虚拟内容

什么是伪元素？
  伪元素是CSS创建的"虚拟标签"，不需要在HTML里写额外的标签
  就能在元素内容的前面或后面插入装饰性内容

  结构示意：
  ┌─────────────────────────────┐
  │  ::before  │  元素内容  │  ::after  │
  └─────────────────────────────┘

  ::before  → 插入到元素内容的最前面
  ::after   → 插入到元素内容的最后面

作用：
  1. 纯装饰：加图标、箭头、装饰线，不污染HTML结构
  2. 布局辅助：清除浮动、创建遮罩层
  3. 内容增强：自动添加引号、序号等重复性文字

核心规则：
  1. 必须写 content 属性，哪怕 content: ""，不写不显示
  2. 伪元素默认是行内元素，设宽高要加 display: block 或 position: absolute
  3. ::before 在元素内容前面，::after 在后面
  4. 伪元素不属于DOM，JS无法直接操作
  5. 每个元素只能有一个 ::before 和一个 ::after

content属性的写法：
  content: "文字"       插入文字
  content: ""           空内容（只做装饰时常用）
  content: attr(属性名)  读取HTML属性值并插入
  content: url(图片路径) 插入图片
  content: counter(名)  插入计数器值（自动编号）

用法1：加装饰性文字
  .link::before {
      content: "> ";
      color: #409eff;
  }
  /* 每个链接前面自动加个蓝色箭头 */

  <!-- HTML -->
  <a class="link" href="#">首页</a>
  <a class="link" href="#">关于</a>

  <!-- 渲染效果 -->
  > 首页
  > 关于

用法2：清除浮动（经典写法）
  .clearfix::after {
      content: "";
      display: block;
      clear: both;
  }
  /* 父元素加clearfix类名，解决子元素浮动导致父元素高度塌陷 */

  <!-- HTML -->
  <div class="clearfix">
      <div style="float: left;">左栏</div>
      <div style="float: right;">右栏</div>
  </div>
  <!-- 不加clearfix：父div高度为0 -->
  <!-- 加了clearfix：父div正常包裹子元素 -->

用法3：卡片左侧彩色竖条
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
  /* 不用额外HTML标签就能加装饰线 */

  <!-- HTML -->
  <div class="card">
      <h3>通知标题</h3>
      <p>通知内容</p>
  </div>

  <!-- 渲染效果 -->
  ┃ 通知标题
  ┃ 通知内容
  （左侧有一条蓝色竖线）

用法4：遮罩层
  .overlay {
      position: relative;
  }
  .overlay::after {
      content: "";
      position: absolute;
      inset: 0;  /* top/right/bottom/left都是0 */
      background: rgba(0,0,0,0.5);
  }

  <!-- HTML -->
  <div class="overlay">
      <img src="photo.jpg" alt="照片">
  </div>
  <!-- 图片上盖了一层半透明黑色遮罩 -->

用法5：用attr()读取属性值
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

  <!-- HTML -->
  <button class="tooltip" data-tip="点击保存">保存</button>
  <!-- 鼠标悬停时按钮上方出现提示文字"点击保存" -->

用法6：自动加引号
  blockquote::before { content: "\201C"; }  /* 左双引号 " */
  blockquote::after  { content: "\201D"; }  /* 右双引号 " */

  <!-- HTML -->
  <blockquote>学而不思则罔</blockquote>
  <!-- 渲染效果："学而不思则罔" -->

用法7：计数器自动编号
  body { counter-reset: section; }
  h2::before {
      counter-increment: section;
      content: "第" counter(section) "节 ";
  }

  <!-- HTML -->
  <h2>CSS基础</h2>
  <h2>CSS布局</h2>
  <h2>JS基础</h2>
  <!-- 渲染效果：第1节 CSS基础 / 第2节 CSS布局 / 第3节 JS基础 -->

常见坑：
  ❌ 忘了写content → 伪元素不显示
  ❌ 想设宽高但没加display: block → 宽高不生效
  ❌ 用JS操作伪元素 → 无法直接操作，只能改父元素的class间接控制
  ❌ 伪元素放重要内容 → 屏幕阅读器读不到，SEO也不收录
```

### 说的话

> 伪元素是个很有意思的东西。::before和::after可以在元素内容的前面和后面插入虚拟内容，这个内容不在HTML里，是CSS生成的，所以JS也没法直接操作它。
>
> 先理解它的作用：伪元素最大的价值就是"纯装饰"。如果一个装饰性的图标、箭头、竖线、遮罩只跟样式有关，跟内容无关，那就应该用伪元素来做，而不是在HTML里加个空标签。这样HTML只管内容，CSS只管样式，职责分明。
>
> 最重要的规则：**必须写content属性**，哪怕content是空字符串""，不写的话伪元素不会显示。这个坑很多人踩过，写了半天伪元素发现不出来，结果就是忘了写content。
>
> content属性不只是写空字符串，还能写文字、用attr()读取HTML属性值、用url()插入图片、用counter()做自动编号。attr()特别实用，比如tooltip效果，把提示文字写在data-tip属性里，伪元素用attr(data-tip)读出来显示，一个CSS搞定所有tooltip。
>
> 实际用途很多。第一个，加装饰性文字，比如每个链接前面自动加个箭头，不用在HTML里手动写。第二个，清除浮动，这是个经典写法，父元素加个clearfix类名就行。第三个，卡片左侧彩色竖条，用伪元素做装饰线不用额外加HTML标签，保持HTML干净。第四个，遮罩层，图片上盖一层半透明黑色，做hover效果的时候常用。第五个，tooltip提示，用attr()读取属性值显示。第六个，自动加引号。第七个，计数器自动编号，做目录的时候很方便。
>
> 伪元素默认是行内元素，如果要设置宽高，记得加display: block或者position: absolute。
>
> 还有几个常见的坑要注意：伪元素不能放重要内容，因为屏幕阅读器读不到，搜索引擎也不收录；伪元素JS无法直接操作，只能通过改父元素的class来间接控制样式。

---

### 2.4 伪类 :hover / :focus / :nth-child()

### PPT页面

```
伪类 -- 选中元素的某种状态（单冒号:）
伪元素 -- 创建虚拟元素（双冒号::）
别搞混了！

什么是伪类？
  伪类是CSS的选择器，用来选中元素的某种"状态"或"位置"
  它不创建新元素，而是给已有元素在不同情况下加不同样式

  伪类 vs 伪元素：
  伪类  → 选中已有元素的某种状态（如鼠标悬停、第3个子元素）
  伪元素 → 创建一个虚拟的新元素（如在内容前插入箭头）

常用伪类及作用：
  :hover        鼠标悬停时       → 按钮变色、卡片浮起、链接下划线
  :active       鼠标按下没松开时 → 按钮按下的"按压感"
  :focus        输入框获得焦点时 → 输入框高亮边框
  :first-child  第一个子元素     → 列表第一项不加上边框
  :last-child   最后一个子元素   → 列表最后一项不加下边框
  :nth-child(n) 第n个子元素     → 表格隔行变色、选前几个

:nth-child的写法：
  :nth-child(3)       选第3个
  :nth-child(odd)     选奇数个（1,3,5...）
  :nth-child(even)    选偶数个（2,4,6...）
  :nth-child(3n)      每3个选一个（3,6,9...）
  :nth-child(-n+3)    选前3个（1,2,3）
  :nth-child(3n+1)    从第1个开始每3个选一个（1,4,7...）

用法1：按钮交互三件套（hover + active + focus）
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

  <!-- HTML -->
  <button class="btn">提交</button>
  <!-- hover：鼠标移上去按钮变浅色+浮起+阴影 -->
  <!-- active：按下时按钮变深色+沉下去 -->
  <!-- focus：键盘Tab聚焦时出现蓝色光晕 -->

用法2：输入框focus效果
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

  <!-- HTML -->
  <input type="text" placeholder="请输入用户名">
  <!-- 点击输入框时边框变蓝+出现蓝色光晕 -->

用法3：列表隔行变色
  li:nth-child(odd) { background: #f5f5f5; }
  li:nth-child(even) { background: #fff; }

  <!-- HTML -->
  <ul>
      <li>第1行（灰色）</li>
      <li>第2行（白色）</li>
      <li>第3行（灰色）</li>
      <li>第4行（白色）</li>
  </ul>

用法4：列表首尾项特殊处理
  li {
      padding: 8px 0;
      border-bottom: 1px solid #eee;
  }
  li:first-child {
      border-top: 1px solid #eee;
  }
  li:last-child {
      border-bottom: none;
  }

  <!-- HTML -->
  <ul>
      <li>第一项（有上边框）</li>
      <li>中间项（只有下边框）</li>
      <li>最后一项（没有下边框）</li>
  </ul>

用法5：导航栏当前页高亮
  .nav-link:hover {
      color: #409eff;
      border-bottom: 2px solid #409eff;
  }

  <!-- HTML -->
  <a class="nav-link" href="#">首页</a>
  <a class="nav-link" href="#">关于</a>
  <!-- 鼠标移上去文字变蓝+底部出现蓝色下划线 -->

LVHA顺序（重要！）：
  链接伪类要按这个顺序写，否则会覆盖：
  :link    → 未访问的链接
  :visited → 已访问的链接
  :hover   → 鼠标悬停
  :active  → 鼠标按下
  口诀：LVHA（Link Visited Hover Active）
```

### 说的话

> 伪类和伪元素容易搞混，再强调一下：伪元素是创建一个虚拟元素，双冒号::；伪类是选中元素的某种状态，单冒号:。伪类不会创建新东西，它只是让已有元素在不同状态下有不同样式。
>
> :hover最常用，鼠标移上去触发样式变化。:focus是输入框被点击获得焦点的时候。:active是鼠标按下没松开的时候，这三个经常一起用做按钮的交互反馈。按钮交互三件套：hover时浮起来，active时按下去，focus时出现光晕，配合transition就是丝滑的交互体验。
>
> :first-child和:last-child也很实用，比如列表的边框处理，第一项加上边框，最后一项去掉下边框，中间项只保留下边框，这样所有项之间的间距就统一了。
>
> :nth-child可以选第几个子元素，odd是奇数even是偶数，做表格隔行变色特别方便。:nth-child(-n+3)选中前三个，这个写法有点反直觉，-n+3就是从1到3。:nth-child(3n+1)是从第1个开始每3个选一个，就是1、4、7。
>
> 看那个按钮hover效果的例子：鼠标移上去背景变浅、往上移2px、加个蓝色阴影。配合transition就有平滑的动画效果，按钮像是浮起来了。输入框focus的时候边框变蓝、加个蓝色光晕，这个效果在各种网站上都能看到。
>
> 还有一个重要的点：链接伪类要按LVHA顺序写，:link、:visited、:hover、:active。因为CSS是后写的覆盖先写的，如果hover写在visited前面，已访问的链接鼠标悬停时不会变色。

---

### 2.5 transition + 卡片动画效果

### PPT页面

```
transition -- 让CSS属性变化有过渡动画

语法：
  transition: 属性 时长 缓动函数;
  transition: all 0.3s ease;           所有属性0.3秒过渡
  transition: background 0.3s ease;    只过渡背景色
  transition: transform 0.3s, box-shadow 0.3s;  多个属性

缓动函数：
  ease          先快后慢（默认，最常用）
  linear        匀速
  ease-in       慢慢开始
  ease-out      慢慢结束
  ease-in-out   慢开始+慢结束

重要：transition写在元素本身上，不是写在:hover里！
```

### 说的话

> transition让属性变化有个过渡动画。没有transition的话，hover的时候颜色"啪"一下就变了，体验很生硬。加上transition: all 0.3s ease，变化就是0.3秒平滑过渡。
>
> 一般写all就行，所有可动画的属性都会过渡。时长0.2到0.3秒比较舒服，太短看不出效果，太长显得拖沓。ease是最常用的缓动函数，先快后慢，看起来很自然。
>
> **transition要写在元素本身上，不是写在:hover里**，这个很多人搞反。写在:hover里的话，鼠标移开的时候没有过渡，直接跳回原样，很突兀。

---

### PPT页面

```
卡片动画效果 -- 实战合集

效果1：卡片悬浮上移
  .card {
      transition: all 0.3s ease;
  }
  .card:hover {
      transform: translateY(-8px);
      box-shadow: 0 12px 24px rgba(0,0,0,0.15);
  }

效果2：卡片放大
  .card:hover {
      transform: scale(1.05);
  }

效果3：卡片翻转（正面/背面）
  .card-inner {
      transition: transform 0.6s;
      transform-style: preserve-3d;
  }
  .card:hover .card-inner {
      transform: rotateY(180deg);
  }
  .card-front, .card-back {
      backface-visibility: hidden;
  }
  .card-back {
      transform: rotateY(180deg);
  }

效果4：图片遮罩淡入
  .card-img-wrapper::after {
      content: "";
      position: absolute; inset: 0;
      background: rgba(0,0,0,0.5);
      opacity: 0;
      transition: opacity 0.3s;
  }
  .card:hover .card-img-wrapper::after {
      opacity: 1;
  }

效果5：底部边框滑入
  .card::after {
      content: "";
      position: absolute;
      bottom: 0; left: 0;
      width: 0; height: 3px;
      background: #409eff;
      transition: width 0.3s;
  }
  .card:hover::after {
      width: 100%;
  }
```

### 说的话

> 来看几个常见的卡片动画效果，这些都是做项目的时候经常用的。
>
> 效果1，悬浮上移，最常见。鼠标移上去卡片往上移8px，阴影变大变深，看起来像卡片浮起来了。这个效果在各种产品展示页、博客卡片上到处都是。
>
> 效果2，卡片放大，鼠标移上去scale(1.05)放大5%，配合圆角和阴影也很好看。注意别放大太多，1.03到1.08比较合适。
>
> 效果3，卡片翻转，正面是图片，鼠标移上去翻转到背面显示文字。这个用到了3D变换，transform-style: preserve-3d让子元素保持3D效果，backface-visibility: hidden让背面不可见。这个效果做作品集展示特别酷。
>
> 效果4，图片遮罩淡入，鼠标移上去图片上盖一层半透明黑色，上面可以放文字。用伪元素做遮罩层，opacity从0变1，配合transition就是淡入效果。
>
> 效果5，底部边框滑入，鼠标移上去底部从左到右滑出一条蓝色线。width从0变100%，配合transition就是滑入动画。
>
> 这些效果的核心思路都一样：先定义初始状态，hover时改变属性，transition负责平滑过渡。掌握了这个套路，各种效果都能自己组合出来。

---

## 三、CSS布局（20分钟）

### PPT页面

```
CSS三种布局方式

1. 普通流（Normal Flow）
   默认排列方式，块级元素独占一行，行内元素并排

2. Flex布局（弹性盒布局）
   一维布局，控制一行或一列的排列
   适合：导航栏、工具栏、卡片列表、居中

3. Grid布局（网格布局）
   二维布局，同时控制行和列
   适合：页面框架、仪表盘、卡片网格

实际开发：Grid搭框架 + Flex排细节
```

### 说的话

> CSS布局是做页面最重要的部分。一共有三种方式：普通流、Flex、Grid。普通流就是默认的排列方式，大家都懂。重点讲Flex和Grid，这两个是现在做布局的主力。最后再给大家几个常用的界面模板，直接拿去用。

---

### 3.1 普通流 -- 快速过

### PPT页面

```
普通流（Normal Flow）-- 默认排列方式

块级元素（div, p, h1-h6, ul, li）  独占一行
行内元素（span, a, strong, em）     并排显示，不能设宽高
行内块元素（img, input, button）     并排显示，能设宽高

脱离普通流的方式：
  float: left/right     浮动（现在主要做文字环绕图片）
  position: absolute    绝对定位（相对最近的定位祖先偏移）
  position: fixed       固定定位（相对浏览器窗口）

display改变元素类型：
  display: block        变块级
  display: inline       变行内
  display: inline-block 变行内块
  display: none         隐藏（不占空间）
  visibility: hidden    隐藏（还占空间）

position定位：
  static     默认，不定位
  relative   相对自身原位置偏移（不脱离普通流）
  absolute   相对最近的定位祖先偏移（脱离普通流）
  fixed      相对浏览器窗口固定（脱离普通流）
  sticky     滚动到一定位置后固定（导航栏常用）
```

### 说的话

> 普通流快速过一下。块级元素独占一行，行内元素并排显示，这个大家都懂。
>
> float以前经常用来做布局，但现在有Flex和Grid之后基本不用了，float回归它本来的用途——文字环绕图片。position: absolute是相对最近的定位祖先元素偏移，fixed是相对浏览器窗口固定，sticky是滚动到一定位置后固定住，做吸顶导航栏特别好用。
>
> display: none和visibility: hidden的区别：none完全不占空间，hidden还占空间只是看不见。

---

### 3.2 Flex布局 -- 重点

### PPT页面

```
Flex布局（Flexible Box）-- 一维布局利器

核心概念：
  给父容器加 display: flex，子元素就变成"Flex项目"
  主轴：排列方向（默认水平从左到右）
  交叉轴：与主轴垂直的方向

两套属性：
  容器属性（写在父元素上）：控制整体排列
  项目属性（写在子元素上）：控制单个元素
```

### 说的话

> Flex布局是现在用得最多的布局方式。核心思路很简单：给父容器加display: flex，子元素就变成Flex项目，可以灵活排列。
>
> Flex有两个轴：主轴和交叉轴。主轴就是排列方向，默认从左到右；交叉轴跟主轴垂直，默认从上到下。后面讲的justify-content管主轴，align-items管交叉轴，搞清这两个轴就搞清了Flex。

---

### PPT页面

```
flex-direction -- 决定主轴方向（子元素怎么排）

  row             水平从左到右（默认）
  row-reverse     水平从右到左
  column          垂直从上到下
  column-reverse  垂直从下到上

示例：
  .container {
      display: flex;
      flex-direction: column;  /* 子元素从上到下排列 */
  }
```

### 说的话

> flex-direction决定主轴方向，也就是子元素怎么排。row是默认值，从左到右水平排列。column是从上到下垂直排列，做侧边栏或者表单的时候常用。加reverse就是反方向。

---

### PPT页面

```
justify-content -- 主轴对齐（最常用的属性之一）

  flex-start      靠主轴起点（默认，左对齐/上对齐）
  flex-end        靠主轴终点（右对齐/下对齐）
  center          主轴居中
  space-between   两端对齐，中间等距（第一个贴左，最后一个贴右）
  space-around    每个项目两侧等距（两端也有间距）
  space-evenly    完全等距（两端和中间间距一样）

示例：
  .navbar {
      display: flex;
      justify-content: space-between;
  }
  /* logo在左，菜单在右，一行代码搞定导航栏 */
```

### 说的话

> justify-content控制主轴方向的对齐，这个用得最多。
>
> space-between是两端对齐，第一个贴左边，最后一个贴右边，中间等距。做导航栏的时候特别好用——logo在左边，菜单在右边，一行代码搞定。space-around和space-evenly的区别是around两端间距是中间的一半，evenly全部一样。
>
> center就是居中，配合align-items: center可以实现水平垂直双居中。

---

### PPT页面

```
align-items -- 交叉轴对齐

  stretch     拉伸填满容器（默认）
  flex-start  交叉轴起点对齐（靠上/靠左）
  flex-end    交叉轴终点对齐（靠下/靠右）
  center      交叉轴居中

经典组合：水平垂直双居中
  .container {
      display: flex;
      justify-content: center;  /* 水平居中 */
      align-items: center;      /* 垂直居中 */
  }
  /* 以前要写一堆代码才能居中，Flex两行搞定 */
```

### 说的话

> align-items控制交叉轴方向的对齐。如果主轴是水平的，交叉轴就是垂直的，align-items就控制垂直方向的对齐。
>
> 那个经典组合一定要记住：display: flex + justify-content: center + align-items: center，实现水平垂直双居中。以前用各种奇技淫巧才能居中，Flex两行搞定。做登录框居中、弹窗居中、图标居中，到处都用。

---

### PPT页面

```
flex-wrap 和 gap

  flex-wrap: nowrap   不换行（默认，子元素多了会被压缩）
  flex-wrap: wrap     允许换行

  gap: 16px           行间距和列间距都是16px
  gap: 10px 20px      行间距10px 列间距20px

示例：
  .card-list {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
  }
  /* 卡片多了自动换行，间距统一16px */
```

### 说的话

> flex-wrap默认是不换行的，子元素多了会被压缩变窄。改成wrap就允许换行。
>
> gap是间距，以前要给子元素加margin然后处理最后一个的间距，特别麻烦。现在直接在父容器写gap就行了，简洁很多。Flex和Grid都支持gap。

---

### PPT页面

```
Flex项目属性（写在子元素上）

  flex-grow    放大比例（默认0，不放大）
  flex-shrink  缩小比例（默认1，等比缩小）
  flex-basis   初始大小（默认auto）

简写：flex: grow shrink basis

最常用的写法：
  flex: 1              占满剩余空间
  flex: 0 0 200px      固定200px宽，不放大不缩小

经典组合：侧边栏固定 + 主内容自适应
  .sidebar { flex: 0 0 200px; }   /* 固定200px */
  .main    { flex: 1; }            /* 占满剩余空间 */

两个子元素都写flex: 1 → 平分空间
一个flex: 1 一个flex: 2 → 1:2比例
```

### 说的话

> 子元素上的属性，最常用的是flex简写。
>
> flex: 1的意思是占满剩余空间。如果有两个子元素都写了flex: 1，就平分空间；一个写flex: 1一个写flex: 2，就是1:2的比例。
>
> flex: 0 0 200px是固定宽度，不放大也不缩小。做侧边栏+主内容布局的时候，侧边栏固定宽度，主内容flex: 1自适应，这个组合特别常用。

---

### 3.3 Grid布局 -- 重点

### PPT页面

```
Grid布局（Grid）-- 二维布局利器

核心概念：
  给父容器加 display: grid
  用 grid-template-columns 定义列
  用 grid-template-rows 定义行
  可以同时控制行和列

和Flex的区别：
  Flex一次只控制一个方向（一行或一列）
  Grid同时控制行和列（整个网格）
  选哪个？一维用Flex，二维用Grid

fr单位（fraction）：
  按比例分配剩余空间，类似Flex的flex-grow
  1fr 1fr 1fr = 三等分
  2fr 1fr = 2:1比例
```

### 说的话

> Grid是二维布局，可以同时控制行和列。Flex是一次控制一个方向，Grid是一次控制整个网格。
>
> 怎么选？排列一行或一列的东西用Flex，比如导航栏、按钮组。需要行和列同时控制的用Grid，比如页面框架、仪表盘。实际做项目的时候两者经常搭配：外层Grid搭框架，内层Flex排内容。

---

### PPT页面

```
grid-template-columns / rows -- 定义网格

  grid-template-columns: 200px 1fr 200px;
  /* 三列：200px | 自适应 | 200px */

  grid-template-columns: 1fr 1fr 1fr;
  /* 三列等宽 */
  grid-template-columns: repeat(3, 1fr);
  /* 同上，repeat简写 */

  grid-template-columns: 2fr 1fr;
  /* 两列，2:1比例 */

  grid-template-rows: 60px 1fr 40px;
  /* 三行：60px | 自适应 | 40px */

  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  /* 响应式：每个最小280px，自动算一行放几个 */
  /* 窗口缩小自动从三列变两列变一列，不用写媒体查询 */
```

### 说的话

> grid-template-columns定义列，grid-template-rows定义行。每个值对应一列或一行的大小。
>
> fr是Grid特有的单位，表示按比例分配空间。1fr 1fr 1fr就是三等分，repeat(3, 1fr)是简写。2fr 1fr就是2:1的比例。
>
> repeat(auto-fill, minmax(280px, 1fr))这行代码特别实用：每个卡片最小280px，自动算一行能放几个，放不下就换行。窗口缩小的时候自动从三列变两列变一列，不用写媒体查询，一行CSS搞定响应式。

---

### PPT页面

```
grid-template-areas -- 给区域起名字，画"地图"

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

一眼就能看出页面结构：
  header横跨两列
  sidebar在左，main在右
  footer横跨两列

用点号表示空白区域：
  grid-template-areas:
      "header  header  header"
      "sidebar main    aside"
      "footer  footer  footer";
```

### 说的话

> grid-template-areas是Grid最直观的用法。你在父容器里画个"地图"，每个区域起个名字，子元素用grid-area认领自己的位置。
>
> 看这个例子：header横跨两列，sidebar在左边，main在右边，footer横跨两列。一眼就能看出页面结构，比写坐标数字直观多了。做后台管理页面、博客布局这种有明确区域的页面，用grid-template-areas特别合适。

---

### 3.4 常用界面模板

### PPT页面

```
模板1：顶部导航栏（Flex）

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

要点：space-between让logo和菜单分居两侧
      align-items: center垂直居中
      box-shadow做底部阴影线
```

### 说的话

> 来看几个常用的界面模板，做课程设计或者比赛的时候直接拿去改。
>
> 第一个是顶部导航栏，几乎所有页面都要用。Flex布局，space-between让logo在左边菜单在右边，align-items: center让内容垂直居中，box-shadow做底部一条淡淡的阴影线。nav-links本身也是flex，gap控制菜单项间距。

---

### PPT页面

```
模板2：卡片列表（Flex换行 或 Grid）

  Flex版：
  .card-list {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
  }
  .card {
      flex: 0 0 calc(33.33% - 11px);
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: all 0.3s;
  }
  .card:hover {
      transform: translateY(-4px);
      box-shadow: 0 8px 24px rgba(0,0,0,0.12);
  }

  Grid版（推荐，更简洁）：
  .card-list {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 16px;
  }
  .card样式同上

要点：overflow: hidden 让图片不超出圆角
      hover时上移+阴影加深 = 悬浮效果
      Grid版自动响应式，不用算calc
```

### 说的话

> 第二个是卡片列表，展示商品、文章、作品集都用到。两种写法：Flex换行或者Grid。推荐Grid版，repeat(auto-fill, minmax(280px, 1fr))自动算一行放几个，不用手动calc，还自带响应式。
>
> 卡片样式：border-radius做圆角，box-shadow做阴影，overflow: hidden让图片不超出圆角（这个很多人忘了写，图片会从圆角处露出来）。hover时transform: translateY(-4px)上移，阴影加深，就是之前讲的悬浮效果。

---

### PPT页面

```
模板3：登录/注册表单（Flex居中）

  <div class="form-wrapper">
      <div class="form-card">
          <h2>登录</h2>
          <input type="text" placeholder="用户名">
          <input type="password" placeholder="密码">
          <button>登录</button>
      </div>
  </div>

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
  .form-card input {
      width: 100%;
      padding: 12px;
      margin-bottom: 16px;
      border: 1px solid #ddd;
      border-radius: 8px;
  }
  .form-card input:focus {
      border-color: #409eff;
      outline: none;
      box-shadow: 0 0 0 3px rgba(64,158,255,0.2);
  }

要点：Flex双居中让表单卡片在页面正中间
      input:focus加蓝色边框和光晕
      min-height: 100vh占满整个屏幕高度
```

### 说的话

> 第三个是登录表单，课程设计里肯定用得到。外层Flex双居中，min-height: 100vh占满整个屏幕高度，表单卡片就在正中间。卡片里面input的focus效果，边框变蓝加光晕，就是之前讲的伪类:focus的用法。

---

### PPT页面

```
模板4：后台管理页面（Grid框架 + Flex细节）

  .layout {
      display: grid;
      grid-template-columns: 200px 1fr;
      grid-template-rows: 60px 1fr;
      grid-template-areas:
          "sidebar header"
          "sidebar main";
      min-height: 100vh;
  }
  .header  { grid-area: header; display: flex; align-items: center; padding: 0 20px; }
  .sidebar { grid-area: sidebar; background: #304156; }
  .main    { grid-area: main; padding: 20px; background: #f0f2f5; }

  Grid搭整体框架（哪块放什么）
  Flex排框架内部的细节（导航栏里的元素）

这就是实际开发中最常见的搭配方式
```

### 说的话

> 第四个是后台管理页面，做课程设计的时候很常见。Grid搭整体框架，header在上，sidebar在左，main在右。header里面再用Flex排用户名、搜索框这些细节。
>
> 这就是Grid和Flex搭配的标准用法：Grid管大框架，Flex管小细节。记住这个思路，大部分页面布局都能搞定。

---

## 四、JS基础（16分钟）

### 4.1 var的坑 -- 从var到let/const

### PPT页面

```
var有什么问题？

1. 作用域泄露 -- var会跑出if和for的大括号
   if (true) { var x = 10; }
   console.log(x);  // 10，跑出来了
   在C/Java里出了if就没了，但var会泄露

2. 允许重复声明 -- 不报错但值被覆盖
   var name = "小明";
   var name = "小红";  // 不报错！
   代码一长，这种bug很难找

3. 变量提升 -- 声明前访问不报错
   console.log(a);  // undefined
   var a = 1;
   拿到undefined比报错更危险

解决方案：let 和 const
  let   可重新赋值，块级作用域，不能重复声明
  const 不可重新赋值，块级作用域，不能重复声明
```

### 说的话

> JS部分从大家最熟悉的var说起。课上学变量声明用的都是var，但var有几个坑，我来举几个例子你们感受一下。
>
> 第一个坑：作用域泄露。在C或者Java里，if里面声明的变量出了if就没了，但var不是，它会跑出来。因为var只有函数作用域，没有块级作用域。这个在循环里更坑：
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：3, 3, 3，不是0, 1, 2
> ```
>
> 你以为输出0、1、2，实际输出三个3。因为三个setTimeout共享同一个i，等它们执行的时候循环已经结束了，i变成了3。换成let就正常了，let是块级作用域，每次循环创建一个独立的i。这个题竞赛里考得特别多，后面还会再提。
>
> 第二个坑：var允许重复声明，不会报错但值被覆盖了。代码一长，这种bug很难找。let和const直接报错，反而帮你避坑。
>
> 第三个坑：变量提升。var把声明提到作用域顶部但赋值不提，拿到undefined。let和const在声明前访问直接报ReferenceError，这个叫"暂时性死区"。报错比不报错好——至少你知道出问题了。
>
> 那let和const怎么选？const不能重新赋值，let可以。但有个细节：const存对象或数组时，里面的内容可以改：
>
> ```javascript
> const arr = [1, 2, 3];
> arr.push(4);   // 可以，改的是内容
> arr = [5, 6];  // 报错，不能改引用
> ```
>
> const限制的是"引用不能变"，不是"内容不能变"。策略：默认const，需要改的用let，var别用了。

---

### 4.2 数据类型

### PPT页面

```
JS数据类型

基本类型（赋值时复制值，互不影响）
  Number     数字       18, 3.14, -5, NaN, Infinity
  String     字符串     "hello", 'world', `模板`
  Boolean    布尔       true / false
  undefined  未定义     声明了但没赋值
  null       空值       主动设为"空"
  Symbol     唯一值     （了解，ES6新增）
  BigInt     大整数     （了解，处理超大数字）

引用类型（赋值时复制地址，改一个另一个也变）
  Object     对象       { name: "小明", age: 20 }
  Array      数组       [1, 2, 3]
  Function   函数       function() {}

typeof 判断类型（注意两个坑）
  typeof 123        // "number"
  typeof "hello"    // "string"
  typeof true       // "boolean"
  typeof undefined  // "undefined"
  typeof null       // "object"  坑！历史bug
  typeof {}         // "object"
  typeof []         // "object"  坑！数组也是object

判断数组：Array.isArray([1,2,3])  // true
```

### 说的话

> 数据类型这块，基本类型大家课上学过Number、String、Boolean，补充两个：undefined是"声明了但没赋值"的默认值，null是你主动设的"空"。
>
> 引用类型重点说对象和数组，函数后面单独讲。
>
> typeof可以判断类型，但有两个坑：typeof null返回"object"，这是历史bug，null明明不是对象；typeof数组也返回"object"，分不清对象和数组。判断数组要用Array.isArray()。
>
> 基本类型和引用类型的区别很重要：基本类型赋值是复制值，互不影响；引用类型赋值是复制地址，改一个另一个也变。这个后面竞赛题还会考。

---

### 4.3 数组

### PPT页面

```
数组 -- JS里用得最多的数据结构

声明和访问
  const fruits = ["苹果", "香蕉", "橙子"];
  fruits[0]          // "苹果"（索引从0开始）
  fruits.length       // 3
  fruits[fruits.length - 1]  // "橙子"（最后一个元素）

常用方法
  fruits.push("芒果")      // 末尾添加，返回新长度
  fruits.pop()             // 末尾删除，返回删除的元素
  fruits.unshift("西瓜")   // 开头添加
  fruits.shift()           // 开头删除
  fruits.indexOf("香蕉")   // 找索引，没有返回-1
  fruits.includes("苹果")  // 是否包含，返回true/false
  fruits.splice(1, 1)      // 从索引1删1个（会修改原数组）
  fruits.slice(0, 2)       // 截取索引0到2（不修改原数组）
  fruits.join(", ")        // 数组转字符串："苹果, 香蕉"

遍历方式
  // 传统for
  for (let i = 0; i < fruits.length; i++) { ... }

  // forEach
  fruits.forEach(item => console.log(item));

  // for...of（推荐，简洁）
  for (const item of fruits) { console.log(item); }
```

### 说的话

> 数组是JS里用得最多的数据结构。声明用方括号，访问用索引从0开始。
>
> 常用方法：push末尾加、pop末尾删、unshift开头加、shift开头删、indexOf找索引、includes判断有没有。splice和slice容易搞混：splice会修改原数组，slice不会。join把数组转成字符串。
>
> 遍历三种方式：传统for循环、forEach、for...of。推荐for...of，简洁而且可以用break和continue，forEach不行。

---

### PPT页面

```
数组高阶方法（竞赛和项目都常用）

map -- 对每个元素加工，返回新数组
  const nums = [1, 2, 3];
  const doubled = nums.map(n => n * 2);  // [2, 4, 6]
  const users = [{name: "小明"}, {name: "小红"}];
  const names = users.map(u => u.name);  // ["小明", "小红"]

filter -- 过滤，保留满足条件的
  const scores = [45, 80, 92, 55, 78];
  const passed = scores.filter(s => s >= 60);  // [80, 92, 78]

reduce -- 累计计算
  const sum = [1, 2, 3, 4].reduce((acc, cur) => acc + cur, 0);  // 10
  // acc是累加器，cur是当前值，0是初始值
  // 第1轮：acc=0, cur=1 → 1
  // 第2轮：acc=1, cur=2 → 3
  // 第3轮：acc=3, cur=3 → 6
  // 第4轮：acc=6, cur=4 → 10

find -- 找第一个满足条件的
  [45, 80, 92].find(s => s >= 60);  // 80

some / every -- 判断
  [1, 2, 3].some(n => n > 2);    // true（有满足的）
  [1, 2, 3].every(n => n > 2);   // false（不是全部满足）

这些方法都不修改原数组，返回新结果
```

### 说的话

> 数组的高阶方法，做项目和打比赛都会频繁用到。所谓"高阶"就是参数是个函数。
>
> map是对每个元素做加工，返回新数组。比如每个数字乘2，或者从用户数组里提取所有名字。
>
> filter是过滤，只保留满足条件的。比如筛出及格的分数。
>
> reduce是累计计算，这个稍微复杂一点。它从左到右把每个元素合并成一个值。acc是累加器，保存上一轮的结果；cur是当前元素；最后的0是初始值。求和、求最大值、数组去重都能用reduce。
>
> find找第一个满足条件的，some判断有没有满足的，every判断是不是全部满足。
>
> 这些方法的特点是都不改变原数组，返回新结果，用起来很安全。

---

### 4.4 对象 + 模板字符串

### PPT页面

```
对象 -- 键值对的集合

  const student = { name: "小明", age: 20, major: "计算机" };

  访问：student.name 或 student["age"]
  修改：student.age = 21
  添加：student.grade = "大二"（不存在的key自动创建）
  删除：delete student.major

  遍历：for (let key in student) { console.log(key, student[key]); }

  解构赋值：const { name, age } = student;
  展开运算符：const copy = { ...student };
  合并：const merged = { ...student, gpa: 3.8 };

模板字符串 -- 用反引号` `包裹，${}插入变量

  const name = "小明"; const age = 20;

  // 以前：拼字符串
  "我叫" + name + "，今年" + age + "岁"

  // 现在：模板字符串
  `我叫${name}，今年${age}岁`

  支持换行、支持表达式：`明年${age + 1}岁`
  拼HTML特别方便：
  `<div class="card"><h3>${item.name}</h3><p>${item.desc}</p></div>`
```

### 说的话

> 对象就是键值对，用花括号包起来。访问属性用点语法或者方括号。修改直接赋值，添加也是直接赋值，不存在的key会自动创建。
>
> 遍历对象用for...in，注意这个遍历的是key不是value。解构赋值可以从对象里直接提取属性，展开运算符可以复制或者合并对象。
>
> 模板字符串用反引号包起来，变量用${}包裹，比用加号拼字符串方便太多。而且支持换行，不用写\n了。${}里面还能写表达式。拼HTML的时候特别方便，之前做卡片列表的时候经常用。

---

## 五、JS运算符与流程控制 + 实战例子（10分钟）

### PPT页面

```
== vs ===

  ==   会做类型转换再比较（不推荐）
  ===  不转换，类型不同直接false（推荐）

  3 == "3"    → true   （"3"被转成数字3）
  3 === "3"   → false  （数字和字符串类型不同）
  "" == false → true   （空字符串转0，false也转0）
  0 == false  → true
  [] == false → true

  NaN == NaN  → false  （NaN不等于任何值，包括自己）
  NaN === NaN → false

结论：永远用 === 和 !==
判断NaN：Number.isNaN(x)
```

### 说的话

> ==和===的区别，竞赛必考。==会做类型转换，===不会。空字符串、0、空数组用==比较都等于false，太离谱了。结论：永远用===。
>
> NaN是JS里唯一一个不等于自己的值，==和===都是false。判断NaN要用Number.isNaN()。

---

### PPT页面

```
条件判断
  if / else if / else
  三元运算符：条件 ? 值1 : 值2
  let result = score >= 60 ? "及格" : "挂科";

循环
  for -- 知道次数
  while -- 不知道次数
  for...of -- 遍历数组
  for...in -- 遍历对象
  break -- 跳出整个循环
  continue -- 跳过当前轮
```

### 说的话

> 条件和循环大家都有基础，快速过。三元运算符是if-else的简写，适合简单的二选一。for...of遍历数组拿值，for...in遍历对象拿key，别搞混。

---

### 实战：九九乘法表

### PPT页面

```
九九乘法表 -- 嵌套循环经典练习

  for (let i = 1; i <= 9; i++) {
      let row = "";
      for (let j = 1; j <= i; j++) {
          row += `${j}x${i}=${i * j}\t`;
      }
      console.log(row);
  }

输出：
  1x1=1
  1x2=2  2x2=4
  1x3=3  2x3=6  3x3=9
  ...

思路：
  外层循环控制行（i从1到9）
  内层循环控制列（j从1到i，只算到i因为是对称的）
  模板字符串拼接每一项
```

### 说的话

> 来做个练习——九九乘法表，这是嵌套循环最经典的例子。
>
> 外层循环i控制行，从1到9。内层循环j控制列，从1到i。为什么j只到i？因为乘法表是三角形的，第i行只有i个式子。模板字符串拼接每一项，\t是制表符让每列对齐。
>
> 这个练习把for循环、嵌套循环、模板字符串都串起来了。大家可以自己跑一下，试着改成网页版——用JS生成HTML表格。

---

### 实战：打印三角形

### PPT页面

```
打印三角形 -- 另一个循环经典练习

直角三角形：
  for (let i = 1; i <= 5; i++) {
      console.log("*".repeat(i));
  }
  输出：
  *
  **
  ***
  ****
  *****

等腰三角形：
  for (let i = 1; i <= 5; i++) {
      const spaces = " ".repeat(5 - i);
      const stars = "*".repeat(2 * i - 1);
      console.log(spaces + stars);
  }
  输出：
      *
     ***
    *****
   *******
  *********

思路：
  直角三角形：第i行i个星号
  等腰三角形：第i行有(5-i)个空格 + (2i-1)个星号
  repeat(n)方法：把字符串重复n次
```

### 说的话

> 再来一个——打印三角形，也是循环的经典练习。
>
> 直角三角形很简单，第i行i个星号，用repeat方法重复字符串就行。
>
> 等腰三角形稍微复杂一点，每行前面有空格，空格数是5-i，星号数是2i-1。为什么是2i-1？因为第1行1个星，第2行3个星，第3行5个星，是个等差数列。
>
> 这两个练习看起来简单，但它们练的是循环的核心思路：外层控制行，内层控制每行的内容。以后做网页布局、生成表格、渲染列表，都是这个套路。

---

## 六、JS函数（12分钟）

### PPT页面

```
函数三种写法

  function add(a, b) { return a + b; }         // 函数声明
  const add = function(a, b) { return a + b; }; // 函数表达式
  const add = (a, b) => a + b;                   // 箭头函数

函数声明 vs 函数表达式：
  函数声明有整体提升，可以在声明前调用
  函数表达式不会提升，必须先声明再调用
  实际写代码都是先声明再调用，区别不大

箭头函数简写规则：
  一个参数省括号：  x => x * 2
  多个参数要括号：  (a, b) => a + b
  一行代码省大括号和return：  (a, b) => a + b
  多行代码要大括号和return：
    (a, b) => { const sum = a + b; return sum * 2; }
```

### 说的话

> 函数是JS的核心概念。三种写法效果一样，但有个关键区别——this的指向不同。
>
> 先看三种写法长什么样。函数声明和函数表达式的区别是：函数声明有整体提升，你可以在声明之前调用它；函数表达式不行。不过实际写代码都是先声明再调用，这个区别影响不大。
>
> 箭头函数是重点，写法短。简写规则：一个参数省括号，一行代码省大括号和return。

---

### PPT页面

```
this指向 -- 三种写法最大的区别

  普通函数：this取决于"谁调用了它"
  箭头函数：this继承定义时所在作用域的this

实际场景：按钮点击事件
  const btn = document.querySelector("#myBtn");

  // 普通函数 -- this指向btn，正确
  btn.addEventListener("click", function() {
      this.textContent = "已点击";
  });

  // 箭头函数 -- this指向window，不对
  btn.addEventListener("click", () => {
      this.textContent = "已点击";
  });

规则：
  需要用this → 用普通函数
  不需要this → 箭头函数更简洁
```

### 说的话

> 三种写法最大的区别是this的指向。来看个实际场景：页面上有个按钮，点击后改按钮文字。
>
> 用普通函数，this指向btn，正确。用箭头函数，this指向window，不对。因为普通函数的this是"谁调用我this就是谁"，按钮调用就指向按钮。箭头函数没有自己的this，它从外层"继承"this，在这里外层是window。
>
> 所以规则很简单：需要用this的时候用普通函数，其他时候箭头函数更简洁。

---

### PPT页面

```
参数默认值 + 解构参数

  参数默认值：
  function greet(name = "同学") {
      console.log("你好，" + name);
  }
  greet();       // "你好，同学"
  greet("小明"); // "你好，小明"

  箭头函数也能用：
  const greet = (name = "同学") => `你好，${name}`;

  解构参数（做配置项的时候特别方便）：
  function createUser({ name = "匿名", age = 18, role = "user" }) {
      return { name, age, role };
  }
  createUser({ name: "小明" });
  // { name: "小明", age: 18, role: "user" }

  不传参怎么设默认值：
  function createUser({ name = "匿名", age = 18 } = {}) {
      return { name, age };
  }
  createUser();  // { name: "匿名", age: 18 }
  // 最外层 = {} 防止不传参数时报错
```

### 说的话

> 参数默认值，不传就用默认值，传了就用传的值。做项目的时候很常用，比如表单有些字段是可选的，给个默认值就不会出undefined的bug。
>
> 还有个解构参数的写法，传对象进去，自动解构，没传的属性用默认值。做配置项的时候特别方便。注意如果不传参数会报错，要在最外层加个={}作为默认值。

---

## 七、JS DOM与事件 + 计算器实例（8分钟）

### PPT页面

```
DOM操作 -- JS操控页面（简单了解，后面课会细讲）

  浏览器把HTML解析成一棵树（DOM树）
  JS通过document对象找到并操作页面元素

  找元素：
  document.querySelector("#id")       按id找
  document.querySelector(".class")    按class找
  document.querySelectorAll("li")     找所有li

  改内容：
  element.textContent = "文字"        改纯文本
  element.innerHTML = "<b>HTML</b>"   改HTML

  改class：
  element.classList.add("active")     加class
  element.classList.remove("active")  删class
  element.classList.toggle("active")  切换class

  绑事件：
  element.addEventListener("click", () => { ... })

  前端交互的基本套路：
  用户操作 → 事件触发 → JS处理数据 → 更新页面
```

### 说的话

> DOM这部分大家还没深入学，简单过一下知道怎么回事就行。
>
> 核心就三步：找到元素、改内容、绑事件。找元素推荐用querySelector，CSS选择器语法，一个方法搞定。改文字用textContent，操作class用classList。绑事件用addEventListener。
>
> 所有前端交互都是同一个套路：用户操作触发事件，JS处理数据，然后更新页面。

---

### 实战：简易计算器

### PPT页面

```
简易计算器 -- 综合练习

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

涉及知识点：
  getElementById获取元素
  input.value获取输入值
  Number()转数字（input.value是字符串）
  if-else条件判断
  模板字符串拼接结果
  textContent更新页面
```

### 说的话

> 来做个综合练习——简易计算器。两个输入框输数字，一个下拉框选运算符，点按钮算结果。
>
> 逻辑拆开看：先获取所有元素的引用。点击按钮时，用input.value拿到输入值，注意value是字符串，要用Number()转成数字。然后根据运算符做不同的计算，if-else判断。除法要特殊处理，除数不能为0。最后用textContent把结果显示出来。
>
> 这个例子把今天讲的很多东西都串起来了：getElementById、事件监听、if-else、模板字符串、textContent。大家可以回去自己跑一下，试着加个求余运算，或者加个清空按钮。

---

## 八、竞赛题 + 收尾（7分钟）

### PPT页面

```
竞赛高频题

  题1：var + setTimeout 闭包
  题2：typeof null 陷阱
  题3：事件循环执行顺序
  题4：引用类型赋值
  题5：隐式类型转换
```

### 说的话

> 最后来几道竞赛和面试里的高频题，大家可以当自我检测。

---

### 题目1

### PPT页面

```
以下代码输出什么？

  for (var i = 0; i < 3; i++) {
      setTimeout(function() {
          console.log(i);
      }, 0);
  }

  答案：3, 3, 3

  原因：var只有函数作用域，三个回调共享同一个i
        等回调执行时循环已结束，i变成了3

  改法1：var换成let（最简单）
  改法2：IIFE闭包
  for (var i = 0; i < 3; i++) {
      (function(j) {
          setTimeout(function() {
              console.log(j);
          }, 0);
      })(i);
  }
  每次循环把i传进立即执行函数，j被"锁住"
```

### 说的话

> var只有函数作用域，三个回调共享同一个i，执行时i已经是3。改成let每次循环独立的i。或者用立即执行函数创建闭包，把每次的i锁住。这个题蓝桥杯、前端面试出现率极高。

---

### 题目2

### PPT页面

```
  typeof null      → "object"  （历史bug，null不是对象）
  typeof undefined → "undefined"
  null == undefined   → true   （规范规定）
  null === undefined  → false  （类型不同）

  null vs undefined：
  null      主动设的"空"      let a = null
  undefined 还没赋值的默认值   let b; （不赋值就是undefined）

  延伸：typeof typeof 1 → "string"
  解析：typeof 1 → "number"（字符串）
        typeof "number" → "string"
        typeof的返回值永远是字符串
```

### 说的话

> typeof null返回"object"，历史bug。null是主动设的空，undefined是还没赋值。typeof的返回值永远是字符串，所以typeof typeof 1是"string"。

---

### 题目3

### PPT页面

```
以下代码输出顺序？

  console.log(1);
  setTimeout(() => console.log(2), 0);
  Promise.resolve().then(() => console.log(3));
  console.log(4);

  答案：1, 4, 3, 2

  JS执行顺序：同步 > 微任务 > 宏任务

  同步代码：  console.log(1), console.log(4)  → 先执行
  微任务队列：Promise.then                    → 其次执行
  宏任务队列：setTimeout                      → 最后执行

  setTimeout延迟是0也排在微任务后面
  "尽快执行"不等于"最先执行"
```

### 说的话

> 蓝桥杯高频题。JS执行顺序：先同步，再微任务，最后宏任务。console.log同步，Promise.then微任务，setTimeout宏任务。延迟0毫秒只是说"尽快执行"，但再快也排在微任务后面。记住：同步 > 微任务 > 宏任务。

---

### 题目4

### PPT页面

```
以下代码输出什么？

  const a = { name: "小明" };
  const b = a;
  b.name = "小红";
  console.log(a.name);

  答案："小红"

  原因：对象是引用类型，a和b指向同一块内存
        赋值复制的是地址，不是内容

  对比基本类型：
  const c = 10;
  let d = c;
  d = 20;
  console.log(c);  // 10，互不影响

  规则：
  基本类型赋值 = 复制值（各管各的）
  引用类型赋值 = 复制地址（改一个另一个也变）

  想真正复制对象：
  const copy = { ...obj };         // 浅拷贝
  const deepCopy = JSON.parse(JSON.stringify(obj));  // 深拷贝
```

### 说的话

> a和b指向同一个对象，改b就是改a。对象和数组是引用类型，赋值复制地址。基本类型赋值才是复制值。想真正复制对象要用展开运算符做浅拷贝，或者JSON方法做深拷贝。

---

### 题目5

### PPT页面

```
  [] == false → true

  转换过程：[] → "" → 0，false → 0，0 == 0 → true
  换成 === 就是 false，因为类型不同

  相关题目：
  [] == ![]     → true   （![]是false，然后[] == false）
  "1" + 1      → "11"   （+遇到字符串会拼接）
  "1" - 1      → 0      （-会把字符串转数字）
  1 + 2 + "3"  → "33"   （先1+2=3，再拼"3"）
  "1" + 2 + 3  → "123"  （从左到右，"1"+2="12"，再+3="123"）

  结论：==的类型转换规则太离谱，永远用===
        +遇到字符串拼接，-遇到字符串转数字
```

### 说的话

> 空数组等于false，因为类型转换太离谱。这就是为什么用===不用==。隐式转换的题竞赛里经常出，记住+遇到字符串拼接，-遇到字符串转数字，从左到右依次计算。

---

## 收尾

### PPT页面

```
今天聊了这些

CSS属性：
  border-radius / box-shadow / 伪元素 / 伪类 / transition
  卡片动画效果：悬浮上移、放大、翻转、遮罩、边框滑入

CSS布局：
  Flex布局（一维）+ Grid布局（二维）
  常用模板：导航栏 / 卡片列表 / 登录表单 / 后台管理

JS基础：
  var的坑，用let和const
  数据类型、数组方法(map/filter/reduce)、对象
  ==有坑，用===
  函数三种写法，注意this指向

JS实战：
  九九乘法表、三角形、简易计算器

竞赛重点：
  var/let闭包 | typeof陷阱 | 事件循环 | 引用类型 | 隐式转换

回去可以继续看：
  CSS动画 @keyframes / 响应式 @media
  数组方法 map/filter/reduce 多练
  Promise / async-await
  Vue / React
```

### 说的话

> 今天内容不少，总结一下。CSS部分重点讲了常用属性和卡片动画效果，Flex和Grid两种布局方式，还有四个常用界面模板。JS部分讲了var的坑、数据类型、数组对象、==和===、函数三种写法的this区别，还有九九乘法表、三角形、计算器三个实战例子。
>
> 竞赛重点就是那五道题：var/let闭包、typeof陷阱、事件循环、引用类型赋值、隐式类型转换。
>
> 回去把今天讲的代码自己敲一遍，光看学不会。有问题群里问。
>
> 谢谢大家。

---

## 时间把控

| 时间 | 到哪里 |
|------|--------|
| 3分钟 | 开场结束 |
| 17分钟 | CSS属性+卡片动画讲完 |
| 37分钟 | CSS布局+模板讲完 |
| 53分钟 | JS基础讲完（var/类型/数组/对象） |
| 63分钟 | 运算符+乘法表+三角形讲完 |
| 75分钟 | 函数讲完 |
| 83分钟 | DOM+计算器讲完 |
| 90分钟 | 竞赛题+收尾 |

---

适用对象：计算机系大二学生（有HTML/CSS/JS基础）
建议时长：90分钟
