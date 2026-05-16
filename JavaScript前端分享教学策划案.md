# JavaScript前端分享 - 策划案


## 时间分配（90分钟）

| 环节 | 内容 | 时间 |
|------|------|------|
| 开场 | 前端三件套定位 | 3分钟 |
| CSS属性 | 圆角、阴影、伪元素等常用属性 | 12分钟 |
| CSS布局 | 普通流 / Flex / Grid | 20分钟 |
| JS基础 | var的坑、数据类型、数组、对象 | 18分钟 |
| JS运算符与流程 | ==和===、条件、循环 | 8分钟 |
| JS函数 | 三种写法、this、参数默认值 | 12分钟 |
| JS DOM与事件 | 简单过，知道怎么回事就行 | 8分钟 |
| 竞赛题 + 收尾 | 高频理论题 + 总结 | 9分钟 |

---

## 一、开场（3分钟）

### PPT页面

```
前端三件套

HTML  - 页面有什么（结构）
CSS   - 页面长什么样（样式）
JS    - 页面会做什么（行为）

今天的内容：CSS进阶 + JS基础
```

### 说的话

> 今天聊前端，CSS和JS都会涉及。先说下三件套的关系：HTML搭结构，CSS管样式，JS管行为。HTML是毛坯房，CSS是装修，JS是智能家居。
>
> 今天前半段讲CSS，重点放在布局和常用属性上，这些做项目的时候天天用。后半段讲JS，从学校教的var开始，补充一些课上没展开的东西。大家都有基础，所以不会从头讲，直接上干货。

---

## 二、CSS常用属性（12分钟）

### PPT页面

```
CSS常用属性速览

盒模型：margin / padding / border / width / height
圆角：border-radius
阴影：box-shadow / text-shadow
背景：background-color / background-image / background-size
过渡：transition
伪元素：::before / ::after
伪类：:hover / :focus / :nth-child()
```

### 说的话

> 先过一遍CSS里做项目用得最多的属性。盒模型大家应该都学过了，margin外边距、padding内边距、border边框、width/height宽高，这个不展开。
>
> 重点讲几个课上可能没细说的。

---

### 2.1 border-radius -- 圆角

### PPT页面

```
border-radius

div {
    border-radius: 10px;         /* 四个角都是10px圆角 */
    border-radius: 50%;          /* 正方形变圆，长方形变椭圆 */
    border-radius: 10px 0 10px 0; /* 左上 右上 右下 左下 */
}

实际用途：
- 头像做成圆形：border-radius: 50%
- 按钮做成胶囊：border-radius: 999px
- 卡片做圆角：border-radius: 8px
```

### 说的话

> border-radius做圆角，这个很常用。写一个值就是四个角都一样，写四个值就是左上、右上、右下、左下分别控制。
>
> 几个常见的用法：头像做圆形就50%，按钮做胶囊形状就给一个特别大的值比如999px，卡片做圆角一般8px到12px比较好看。
>
> 有个容易搞混的点：50%圆角要求元素本身是正方形才能变成完美的圆，如果是长方形就变成椭圆。

---

### 2.2 box-shadow -- 阴影

### PPT页面

```
box-shadow

div {
    box-shadow: 2px 2px 5px rgba(0,0,0,0.3);
    /*           水平  垂直  模糊  颜色 */
}

/* 带扩展和内阴影 */
box-shadow: 0 2px 8px 0 rgba(0,0,0,0.1);
/*          水平 垂直 模糊 扩展 颜色 */

/* 多层阴影 */
box-shadow: 0 1px 2px rgba(0,0,0,0.1),
            0 2px 8px rgba(0,0,0,0.1);

/* 内阴影 */
box-shadow: inset 0 1px 3px rgba(0,0,0,0.2);

text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
/* 文字阴影，参数类似 */
```

### 说的话

> box-shadow给元素加阴影，做卡片效果的时候特别常用。
>
> 参数顺序是：水平偏移、垂直偏移、模糊半径、扩展半径（可选）、颜色。水平正值往右，垂直正值往下。模糊半径越大阴影越柔和。
>
> 颜色建议用rgba，最后一个值控制透明度，0.1到0.3之间比较自然，纯黑阴影太硬了。
>
> 还有个text-shadow，参数差不多，给文字加阴影。
>
> 做项目的时候，卡片阴影一般这么写：`box-shadow: 0 2px 8px rgba(0,0,0,0.1)`，垂直偏移2px，模糊8px，透明度0.1，看起来很舒服。

---

### 2.3 伪元素 ::before 和 ::after

### PPT页面

```
伪元素 ::before / ::after

在元素内容的前面/后面插入虚拟内容
必须配合 content 属性使用

/* 在文字前加个图标 */
.link::before {
    content: "-> ";
}

/* 清除浮动（经典用法） */
.clearfix::after {
    content: "";
    display: block;
    clear: both;
}

/* 装饰性元素 */
.card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 4px;
    height: 100%;
    background: #409eff;
}
```

### 说的话

> 伪元素是个很有意思的东西。::before和::after可以在元素内容的前面和后面插入虚拟的内容，这个内容不在HTML里，是CSS生成的。
>
> 最重要的规则：**必须写content属性**，哪怕content是空字符串""，不写的话伪元素不会显示。
>
> 实际用途很多：在链接前面加个小箭头、给卡片左边加个彩色竖条装饰、做清除浮动。清除浮动那个写法比较经典，以后做项目会碰到。
>
> 伪元素默认是行内元素，如果要设置宽高，记得加display: block或者display: inline-block。

---

### 2.4 伪类 :hover / :focus / :nth-child()

### PPT页面

```
伪类 -- 元素的某种状态

:hover       鼠标悬停
:focus       获得焦点（输入框被点击）
:active      鼠标按下没松开
:first-child 第一个子元素
:last-child  最后一个子元素
:nth-child(n) 第n个子元素

/* 按钮悬停变色 */
.btn:hover {
    background-color: #409eff;
    color: white;
}

/* 输入框聚焦时加边框 */
input:focus {
    border-color: #409eff;
    outline: none;
}

/* 列表隔行变色 */
li:nth-child(odd) { background: #f5f5f5; }
li:nth-child(even) { background: white; }

/* 前三个子元素 */
li:nth-child(-n+3) { font-weight: bold; }
```

### 说的话

> 伪类和伪元素容易搞混。伪元素是创建一个虚拟元素，双冒号::；伪类是选中元素的某种状态，单冒号:。
>
> :hover最常用，鼠标移上去变色。:focus是输入框被点击获得焦点的时候。:nth-child可以选第几个子元素，odd是奇数，even是偶数，做表格隔行变色特别方便。
>
> :nth-child(-n+3)选中前三个，这个写法有点反直觉，-n+3就是从1到3。

---

### 2.5 transition -- 过渡

### PPT页面

```
transition -- 让变化有动画效果

div {
    background: white;
    transition: all 0.3s ease;
}

div:hover {
    background: #409eff;
}
/* 鼠标移上去，背景色0.3秒平滑过渡 */

transition: 属性 时长 缓动函数;
transition: background 0.3s ease;
transition: all 0.3s ease-in-out;

缓动函数：
ease        先快后慢（默认）
linear      匀速
ease-in     慢慢开始
ease-out    慢慢结束
ease-in-out 慢慢开始+慢慢结束
```

### 说的话

> transition让属性变化有个过渡动画，不然hover的时候颜色"啪"一下就变了，体验很生硬。加上transition: all 0.3s ease，变化就是0.3秒平滑过渡。
>
> 一般写all就行，所有可动画的属性都会过渡。也可以指定具体属性，比如只过渡background。时长0.2到0.3秒比较舒服，太长显得拖沓。
>
> transition要写在元素本身上，不是写在:hover里，这个很多人搞反。

---

## 三、CSS布局（20分钟）

### PPT页面

```
CSS三种布局方式

1. 普通流（Normal Flow）-- 默认
2. Flex布局 -- 一维布局，一行或一列
3. Grid布局 -- 二维布局，行和列同时控制
```

### 说的话

> CSS布局是做页面最重要的部分。一共有三种方式：普通流、Flex、Grid。普通流就是默认的排列方式，大家应该都懂。重点讲Flex和Grid，这两个是现在做布局的主力。

---

### 3.1 普通流 -- 快速过

### PPT页面

```
普通流（Normal Flow）

块级元素（div, p, h1）-- 独占一行
行内元素（span, a, strong）-- 并排显示
行内块（img, input）-- 并排但能设宽高

脱离普通流的方式：
float: left/right   -- 浮动
position: absolute   -- 绝对定位
position: fixed      -- 固定定位

display属性可以改变元素类型：
display: block       -- 块级
display: inline      -- 行内
display: inline-block -- 行内块
display: none        -- 隐藏
```

### 说的话

> 普通流快速过一下。块级元素独占一行，行内元素并排显示，这个大家都懂。
>
> float和position可以脱离普通流。float以前经常用来做布局，但现在有Flex和Grid之后基本不用了，float回归它本来的用途——文字环绕图片。position: absolute是相对最近的定位祖先元素偏移，fixed是相对浏览器窗口固定。
>
> display属性可以改变元素的显示类型，block变块级，inline变行内，none直接隐藏。

---

### 3.2 Flex布局 -- 重点

### PPT页面

```
Flex布局 -- 一维布局利器

给父容器加 display: flex，子元素就按Flex规则排列

.container {
    display: flex;
}
```

### 说的话

> Flex布局是现在用得最多的布局方式。核心思路很简单：给父容器加display: flex，子元素就变成Flex项目，可以灵活排列。
>
> Flex是一维布局，一次只控制一个方向——要么水平排列，要么垂直排列。

---

### PPT页面

```
Flex容器属性（写在父元素上）

flex-direction   排列方向
justify-content  主轴对齐
align-items      交叉轴对齐
flex-wrap        是否换行
gap              间距
```

### 说的话

> Flex的属性分两组：容器属性写在父元素上，项目属性写在子元素上。先看容器属性。

---

### PPT页面

```
flex-direction -- 排列方向

row             水平（默认）
row-reverse     水平反向
column          垂直
column-reverse  垂直反向

.container {
    display: flex;
    flex-direction: column;
}
/* 子元素从上到下排列 */
```

### 说的话

> flex-direction决定主轴方向。row是默认值，从左到右水平排列。column是从上到下垂直排列。加reverse就是反方向。

---

### PPT页面

```
justify-content -- 主轴对齐（最常用）

flex-start      靠左/靠上（默认）
flex-end        靠右/靠下
center          居中
space-between   两端对齐，中间等距
space-around    每个两侧等距
space-evenly    完全等距

.container {
    display: flex;
    justify-content: space-between;
}
/* 子元素两端对齐，中间自动分配间距 */
```

### 说的话

> justify-content控制主轴方向的对齐，这个用得最多。
>
> space-between是两端对齐，第一个贴左边，最后一个贴右边，中间等距。做导航栏的时候特别好用——logo在左边，菜单在右边，一行代码搞定。
>
> center就是居中，配合align-items: center可以实现水平垂直双居中，这个以后会经常写。

---

### PPT页面

```
align-items -- 交叉轴对齐

stretch     拉伸填满（默认）
flex-start  靠上/靠左
flex-end    靠下/靠右
center      居中

经典组合：水平垂直居中
.container {
    display: flex;
    justify-content: center;
    align-items: center;
}
```

### 说的话

> align-items控制交叉轴方向的对齐。如果主轴是水平的，交叉轴就是垂直的，align-items就控制垂直方向的对齐。
>
> 那个经典组合一定要记住：display: flex + justify-content: center + align-items: center，实现水平垂直双居中。以前用各种奇技淫巧才能居中，Flex一行搞定。

---

### PPT页面

```
flex-wrap 和 gap

flex-wrap: nowrap   不换行（默认，会压缩）
flex-wrap: wrap     换行

gap: 10px           行列间距都是10px
gap: 10px 20px      行间距10px 列间距20px

.container {
    display: flex;
    flex-wrap: wrap;
    gap: 16px;
}
```

### 说的话

> flex-wrap默认是不换行的，子元素多了会被压缩。改成wrap就允许换行。
>
> gap是间距，以前要给子元素加margin然后处理最后一个的间距，现在直接在父容器写gap就行了，简洁很多。

---

### PPT页面

```
Flex项目属性（写在子元素上）

flex-grow    放大比例（默认0，不放大）
flex-shrink  缩小比例（默认1，等比缩小）
flex-basis   初始大小（默认auto）

简写：flex: grow shrink basis

常用写法：
flex: 1        占满剩余空间
flex: 0 0 200px  固定200px宽，不放大不缩小

/* 侧边栏固定 + 主内容自适应 */
.sidebar { flex: 0 0 200px; }
.main    { flex: 1; }
```

### 说的话

> 子元素上的属性，最常用的是flex简写。
>
> flex: 1的意思是占满剩余空间。如果有两个子元素都写了flex: 1，就平分空间；一个写flex: 1一个写flex: 2，就是1:2的比例。
>
> flex: 0 0 200px是固定宽度，不放大也不缩小。做侧边栏+主内容布局的时候，侧边栏固定宽度，主内容flex: 1自适应，这个组合特别常用。

---

### PPT页面

```
Flex实战：经典布局

/* 顶部导航栏 */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
    height: 60px;
}

/* 卡片列表 */
.card-list {
    display: flex;
    flex-wrap: wrap;
    gap: 16px;
}
.card {
    flex: 0 0 calc(33.33% - 11px);
    /* 一行三个卡片 */
}

/* 圣杯布局 */
.layout {
    display: flex;
    min-height: 100vh;
}
.sidebar { flex: 0 0 200px; }
.main    { flex: 1; }
.aside   { flex: 0 0 150px; }
```

### 说的话

> 来看几个Flex的典型用法。
>
> 导航栏：水平排列，space-between让logo和菜单分居两侧，align-items: center垂直居中。
>
> 卡片列表：flex-wrap: wrap允许换行，gap控制间距，每个卡片用calc算宽度实现一行三个。
>
> 圣杯布局：侧边栏固定宽度，中间内容flex: 1自适应。这种布局做后台管理页面特别常见。

---

### 3.3 Grid布局 -- 重点

### PPT页面

```
Grid布局 -- 二维布局利器

给父容器加 display: grid
可以同时控制行和列

.container {
    display: grid;
    grid-template-columns: 200px 1fr 150px;
    grid-template-rows: 60px 1fr;
    gap: 16px;
}
```

### 说的话

> Grid是二维布局，可以同时控制行和列。Flex是一次控制一个方向，Grid是一次控制整个网格。
>
> 怎么选？排列一行或一列的东西用Flex，需要行和列同时控制的用Grid。比如导航栏用Flex，整个页面框架用Grid。

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
/* 两列，比例2:1 */

fr单位：fraction，按比例分配剩余空间
类似Flex的flex-grow
```

### 说的话

> grid-template-columns定义列，grid-template-rows定义行。每个值对应一列或一行的大小。
>
> fr是Grid特有的单位，表示按比例分配空间。1fr 1fr 1fr就是三等分，repeat(3, 1fr)是简写。2fr 1fr就是2:1的比例。
>
> fr和Flex的flex-grow很像，都是按比例分配。区别是fr用在Grid里，flex-grow用在Flex里。

---

### PPT页面

```
gap -- 间距

gap: 16px;           行列间距都是16px
gap: 10px 20px;      行间距10px 列间距20px
row-gap: 10px;       只设行间距
column-gap: 20px;    只设列间距

Grid和Flex都支持gap
```

### 说的话

> gap在Grid里跟Flex里一样，控制间距。可以分别设行间距和列间距。

---

### PPT页面

```
grid-area -- 子元素定位

用网格线编号定位：
grid-column: 1 / 3;   从第1条线到第3条线（跨2列）
grid-row: 1 / 3;      从第1条线到第3条线（跨2行）

简写：
grid-area: 行起始 / 列起始 / 行结束 / 列结束;
grid-area: 1 / 1 / 3 / 3;

/* 头部横跨整行 */
.header { grid-area: 1 / 1 / 2 / 4; }
```

### 说的话

> Grid的子元素可以用grid-area指定位置。网格线从1开始编号，1/3就是从第1条线到第3条线，跨2列或2行。
>
> 这个在做复杂布局的时候很有用，比如头部横跨整行，侧边栏占左边一列，主内容占右边。

---

### PPT页面

```
grid-template-areas -- 给区域起名字

.container {
    display: grid;
    grid-template-columns: 200px 1fr;
    grid-template-rows: 60px 1fr 40px;
    grid-template-areas:
        "header header"
        "sidebar main"
        "footer footer";
    gap: 10px;
}

.header  { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main    { grid-area: main; }
.footer  { grid-area: footer; }
```

### 说的话

> grid-template-areas是Grid最直观的用法。你在父容器里画个"地图"，每个区域起个名字，子元素用grid-area认领自己的位置。
>
> 看这个例子：header横跨两列，sidebar在左边，main在右边，footer横跨两列。一眼就能看出页面结构，比写坐标数字直观多了。
>
> 做后台管理页面、博客布局这种有明确区域的页面，用grid-template-areas特别合适。

---

### PPT页面

```
Grid实战：常见布局

/* 等宽卡片网格 */
.card-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 16px;
}
/* 自动填充，每个卡片最小280px，自动算一行放几个 */

/* 经典页面框架 */
.page {
    display: grid;
    grid-template-areas:
        "header header"
        "sidebar main"
        "footer footer";
    grid-template-columns: 200px 1fr;
    grid-template-rows: 60px 1fr 40px;
    min-height: 100vh;
}
```

### 说的话

> 两个实战例子。
>
> 第一个是响应式卡片网格。repeat(auto-fill, minmax(280px, 1fr))这行代码很实用：每个卡片最小280px，自动算一行能放几个，放不下就换行。窗口缩小的时候自动从三列变两列变一列，不用写媒体查询。
>
> 第二个是经典页面框架，用grid-template-areas画出来，结构一目了然。

---

### PPT页面

```
Flex vs Grid 怎么选？

Flex                    Grid
一维（一行或一列）        二维（行和列同时）
子元素大小灵活           先定义网格再放内容
适合导航栏、工具栏        适合页面框架、卡片网格
justify-content对齐      grid-template-areas布局

实际开发：两者经常搭配使用
页面整体框架用Grid
框架内部的局部用Flex
```

### 说的话

> Flex和Grid怎么选？简单说：一维用Flex，二维用Grid。
>
> 导航栏、按钮组、一行卡片——用Flex。页面整体框架、需要行和列同时控制的——用Grid。
>
> 实际做项目的时候两者经常搭配：外层Grid搭框架，内层Flex排内容。

---

## 四、JS基础（18分钟）

### 4.1 var的坑 -- 从var到let/const

### PPT页面

```
var有什么问题？

1. 作用域泄露 -- var跑出if和for
2. 允许重复声明 -- 不报错但值被覆盖
3. 变量提升 -- 声明前访问不报错

解决方案：let 和 const
let   可重新赋值，块级作用域
const 不可重新赋值，块级作用域
```

### 说的话

> JS部分从大家最熟悉的var说起。课上学变量声明用的都是var，但var有几个坑。
>
> **第一个：作用域泄露。**
>
> ```javascript
> if (true) {
>     var x = 10;
> }
> console.log(x);  // 10，跑出来了
> ```
>
> 在C里if里面声明的变量出了if就没了，但var会跑出来，因为它只有函数作用域。循环里更坑：
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：3, 3, 3，不是0, 1, 2
> ```
>
> 三个setTimeout共享同一个i，等执行的时候i已经是3了。换成let就正常，每次循环独立的i。
>
> **第二个：允许重复声明。**
>
> ```javascript
> var name = "小明";
> var name = "小红";  // 不报错，但覆盖了
> ```
>
> let和const直接报错，反而帮你避坑。
>
> **第三个：变量提升。**
>
> ```javascript
> console.log(a);  // undefined，不报错
> var a = 1;
> ```
>
> var把声明提到顶部但赋值不提，拿到undefined。let和const在声明前访问直接报ReferenceError，报错比不报错好。
>
> **let和const怎么选？** const不能重新赋值，let可以。但const存对象或数组时内容可以改：
>
> ```javascript
> const arr = [1, 2, 3];
> arr.push(4);   // 可以
> arr = [5, 6];  // 报错
> ```
>
> 策略：默认const，需要改的用let，var别用了。

---

### 4.2 数据类型

### PPT页面

```
JS数据类型

基本类型
Number     数字       18, 3.14, -5, NaN
String     字符串     "hello", 'world'
Boolean    布尔       true / false
undefined  未定义     声明了但没赋值
null       空值       主动设为"空"
Symbol     唯一值     （了解就行）
BigInt     大整数     （了解就行）

引用类型
Object     对象       { name: "小明", age: 20 }
Array      数组       [1, 2, 3]
Function   函数       function() {}

typeof 判断类型
typeof 123        // "number"
typeof "hello"    // "string"
typeof true       // "boolean"
typeof undefined  // "undefined"
typeof null       // "object"  （bug！）
typeof {}         // "object"
typeof []         // "object"  （数组也是object）
```

### 说的话

> 数据类型这块，基本类型大家课上学过Number、String、Boolean，补充两个：undefined是"声明了但没赋值"，null是你主动设的"空"。
>
> 引用类型重点说对象和数组，函数后面单独讲。
>
> typeof可以判断类型，但有两个坑：typeof null返回"object"，这是历史bug；typeof数组也返回"object"，分不清对象和数组。判断数组要用Array.isArray()。

---

### 4.3 数组

### PPT页面

```
数组 -- 最常用的数据结构

const fruits = ["苹果", "香蕉", "橙子"];

访问和修改
fruits[0]          // "苹果"
fruits[1] = "葡萄"  // 修改
fruits.length       // 3

常用方法
fruits.push("芒果")      // 末尾添加
fruits.pop()             // 末尾删除
fruits.unshift("西瓜")   // 开头添加
fruits.shift()           // 开头删除
fruits.indexOf("香蕉")   // 找索引
fruits.includes("苹果")  // 是否包含
fruits.splice(1, 1)      // 从索引1删1个

遍历
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}

fruits.forEach(item => {
    console.log(item);
});
```

### 说的话

> 数组是JS里用得最多的数据结构。声明用方括号，访问用索引，从0开始。
>
> 常用方法：push末尾加、pop末尾删、unshift开头加、shift开头删、indexOf找索引、includes判断有没有、splice删除指定位置。
>
> 遍历数组两种方式：传统for循环，或者forEach。forEach更简洁，不用管索引。

---

### PPT页面

```
数组高阶方法（竞赛和项目都常用）

map -- 对每个元素加工，返回新数组
const nums = [1, 2, 3];
const doubled = nums.map(n => n * 2);  // [2, 4, 6]

filter -- 过滤，返回满足条件的元素
const scores = [45, 80, 92, 55, 78];
const passed = scores.filter(s => s >= 60);  // [80, 92, 78]

reduce -- 累计计算
const sum = [1, 2, 3, 4].reduce((acc, cur) => acc + cur, 0);  // 10

find -- 找第一个满足条件的
const first = [45, 80, 92].find(s => s >= 60);  // 80

some -- 是否有满足条件的（返回布尔）
every -- 是否全部满足（返回布尔）
[1, 2, 3].some(n => n > 2);   // true
[1, 2, 3].every(n => n > 2);  // false
```

### 说的话

> 数组的高阶方法，这些以后做项目和打比赛都会频繁用到。
>
> map是对每个元素做加工，返回新数组，原数组不变。比如每个数字乘2。
>
> filter是过滤，只保留满足条件的。比如筛出及格的分数。
>
> reduce是累计计算，从左到右把每个元素合并成一个值。比如求和、求最大值。
>
> find找第一个满足条件的，some判断有没有满足的，every判断是不是全部满足。
>
> 这些方法的特点是都不改变原数组，返回新结果，用起来很安全。

---

### 4.4 对象

### PPT页面

```
对象 -- 键值对的集合

const student = {
    name: "小明",
    age: 20,
    major: "计算机"
};

访问属性
student.name        // "小明"
student["age"]      // 20

修改和添加
student.age = 21;
student.grade = "大二";

删除属性
delete student.major;

遍历对象
for (let key in student) {
    console.log(key, student[key]);
}

对象解构
const { name, age } = student;
// name = "小明", age = 21

展开运算符
const copy = { ...student };
const extra = { ...student, gpa: 3.8 };
```

### 说的话

> 对象就是键值对，用花括号包起来。访问属性用点语法或者方括号。修改直接赋值，添加也是直接赋值，不存在的key会自动创建。
>
> 遍历对象用for...in，注意这个遍历的是key不是value。
>
> 两个实用语法：解构赋值和展开运算符。解构可以从对象里直接提取属性，不用一个个写student.name、student.age。展开运算符可以复制对象或者合并对象，比手动复制方便。

---

### 4.5 字符串模板

### PPT页面

```
模板字符串 -- 用反引号

const name = "小明";
const age = 20;

// 以前：拼字符串
"我叫" + name + "，今年" + age + "岁"

// 现在：模板字符串
`我叫${name}，今年${age}岁`

// 支持换行
const html = `
    <div>
        <h1>${name}</h1>
        <p>年龄：${age}</p>
    </div>
`;

// 支持表达式
`明年${age + 1}岁`
`合计：${items.reduce((s, i) => s + i.price, 0)}元`
```

### 说的话

> 模板字符串用反引号包起来，变量用${}包裹。比用加号拼字符串方便太多，特别是拼接HTML的时候。
>
> 而且模板字符串支持换行，不用写\n了。${}里面还能写表达式，不只是变量。

---

## 五、JS运算符与流程控制（8分钟）

### PPT页面

```
== vs ===

==   会做类型转换再比较
===  不转换，类型不同直接false

3 == "3"    → true
3 === "3"   → false
"" == false → true
0 == false  → true
[] == false → true

结论：永远用 ===
```

### 说的话

> ==和===的区别，竞赛必考。==会做类型转换，===不会。空字符串、0、空数组用==比较都等于false，太离谱了。结论：永远用===。

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
break -- 跳出整个循环
continue -- 跳过当前轮

for...of -- 遍历数组
const arr = [10, 20, 30];
for (const item of arr) {
    console.log(item);
}

for...in -- 遍历对象
const obj = { a: 1, b: 2 };
for (const key in obj) {
    console.log(key, obj[key]);
}
```

### 说的话

> 条件和循环快速过。三元运算符是if-else的简写，适合简单的二选一。
>
> 补充两个遍历的语法：for...of遍历数组，直接拿到值；for...in遍历对象，拿到key。别搞混了——数组用for...of，对象用for...in。

---

## 六、JS函数（12分钟）

### PPT页面

```
函数三种写法

function add(a, b) { return a + b; }         // 函数声明
const add = function(a, b) { return a + b; }; // 函数表达式
const add = (a, b) => a + b;                   // 箭头函数

关键区别：this指向不同
普通函数：this取决于谁调用了它
箭头函数：this继承定义时所在作用域
```

### 说的话

> 函数是JS的核心概念。三种写法效果一样，但this指向不同。
>
> 箭头函数是重点，写法短，但this不一样。来看个实际场景：
>
> ```javascript
> const btn = document.querySelector("#myBtn");
>
> // 普通函数 -- this指向btn
> btn.addEventListener("click", function() {
>     this.textContent = "已点击";
> });
>
> // 箭头函数 -- this指向window，不对
> btn.addEventListener("click", () => {
>     this.textContent = "已点击";
> });
> ```
>
> 普通函数的this是"谁调用我this就是谁"，箭头函数没有自己的this，从外层继承。所以需要用this的时候用普通函数，其他时候箭头函数更简洁。
>
> 箭头函数简写规则：一个参数省括号`x => x * 2`，一行代码省大括号和return`const add = (a, b) => a + b`。

---

### PPT页面

```
参数默认值

function greet(name = "同学") {
    console.log("你好，" + name);
}
greet();       // "你好，同学"
greet("小明"); // "你好，小明"

箭头函数也能用
const greet = (name = "同学") => `你好，${name}`;

解构参数
function createUser({ name = "匿名", age = 18 }) {
    return { name, age };
}
createUser({ name: "小明" });  // { name: "小明", age: 18 }
```

### 说的话

> 参数默认值，不传就用默认值，传了就用传的值。做项目的时候很常用。
>
> 还有个解构参数的写法，传对象进去，自动解构，没传的属性用默认值。做配置项的时候特别方便。

---

## 七、JS DOM与事件（8分钟）

### PPT页面

```
DOM操作 -- JS操控页面

浏览器把HTML解析成一棵树
JS通过document对象找到并操作页面元素

找元素
document.querySelector("#id")
document.querySelector(".class")
document.querySelectorAll("li")

改内容
element.textContent = "文字"
element.innerHTML = "<b>HTML</b>"

改class
element.classList.add("active")
element.classList.remove("active")
element.classList.toggle("active")

绑事件
element.addEventListener("click", () => { ... })
```

### 说的话

> DOM这部分大家还没深入学，简单过一下知道怎么回事就行。
>
> 核心就三步：找到元素、改内容、绑事件。
>
> 找元素推荐用querySelector，CSS选择器语法，一个方法搞定所有查找。改文字用textContent，改HTML用innerHTML。操作class用classList，toggle特别好用，做展开收起一行代码搞定。
>
> 绑事件用addEventListener，比onclick灵活，可以绑多个。

---

### PPT页面

```
实例：点击计数器

<button id="btn">点我</button>
<p id="output">还没有点击</p>

const btn = document.getElementById("btn");
const output = document.getElementById("output");
let count = 0;

btn.addEventListener("click", () => {
    count++;
    output.textContent = `点击了 ${count} 次`;
});

前端交互的基本套路：
用户操作 -> 事件触发 -> JS处理数据 -> 更新页面
```

### 说的话

> 来看个最简单的例子。点击按钮，数字加1。
>
> 这个例子虽然简单，但套路是通用的：用户操作触发事件，JS处理数据，然后更新页面。以后不管做登录、搜索、表单提交，基本套路都是这个。DOM和事件后面课上会细讲，今天知道这个思路就行。

---

## 八、竞赛题 + 收尾（9分钟）

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

> 最后来几道竞赛和面试里的高频题。

---

### 题目1

### PPT页面

```
for (var i = 0; i < 3; i++) {
    setTimeout(function() {
        console.log(i);
    }, 0);
}

答案：3, 3, 3

改法1：var换成let
改法2：IIFE闭包
for (var i = 0; i < 3; i++) {
    (function(j) {
        setTimeout(function() {
            console.log(j);
        }, 0);
    })(i);
}
```

### 说的话

> var只有函数作用域，三个回调共享同一个i，执行时i已经是3。改成let每次循环独立的i。或者用立即执行函数创建闭包，把每次的i锁住。

---

### 题目2

### PPT页面

```
typeof null      → "object"  （bug）
typeof undefined → "undefined"
null == undefined   → true
null === undefined  → false

延伸：typeof typeof 1 → "string"
```

### 说的话

> typeof null返回"object"，历史bug。null是主动设的空，undefined是还没赋值。typeof的返回值永远是字符串，所以typeof typeof 1是"string"。

---

### 题目3

### PPT页面

```
console.log(1);
setTimeout(() => console.log(2), 0);
Promise.resolve().then(() => console.log(3));
console.log(4);

答案：1, 4, 3, 2

规则：同步 > 微任务 > 宏任务
```

### 说的话

> 蓝桥杯高频题。JS执行顺序：先同步，再微任务，最后宏任务。console.log同步，Promise.then微任务，setTimeout宏任务。延迟0毫秒也排在微任务后面。

---

### 题目4

### PPT页面

```
const a = { name: "小明" };
const b = a;
b.name = "小红";
console.log(a.name);

答案："小红"

基本类型赋值 = 复制值（互不影响）
引用类型赋值 = 复制地址（改一个另一个也变）
```

### 说的话

> 对象和数组是引用类型，赋值复制的是地址。a和b指向同一个对象，改b就是改a。基本类型赋值才是复制值。

---

### 题目5

### PPT页面

```
[] == false → true

[] → "" → 0
false → 0
0 == 0 → true

相关：
"1" + 1  → "11"
"1" - 1  → 0
1 + 2 + "3" → "33"
[] == ![] → true
```

### 说的话

> 空数组等于false，因为类型转换太离谱。这就是为什么用===，不用==。隐式转换的题竞赛里经常出选择判断，记住+遇到字符串拼接，-遇到字符串转数字。

---

## 收尾

### PPT页面

```
今天聊了这些

CSS：
border-radius / box-shadow / 伪元素 / 伪类 / transition
Flex布局（一维）+ Grid布局（二维）

JS：
var的坑，用let和const
数据类型、数组方法、对象
==有坑，用===
函数三种写法，注意this
DOM操作和事件（简单了解）

竞赛重点
var/let闭包 | typeof陷阱 | 事件循环 | 引用类型 | 隐式转换

回去可以继续看
CSS动画 / 响应式设计
数组方法 map/filter/reduce
Promise / async-await
Vue / React
```

### 说的话

> 今天内容不少，总结一下。CSS部分重点讲了常用属性和两种布局方式：Flex管一维，Grid管二维，两者经常搭配使用。JS部分讲了var的坑、数据类型、数组对象、==和===、函数三种写法的this区别，DOM和事件简单过了下思路。
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
| 15分钟 | CSS属性讲完 |
| 35分钟 | Flex和Grid讲完 |
| 53分钟 | JS基础讲完（var/类型/数组/对象） |
| 61分钟 | 运算符和流程控制过完 |
| 73分钟 | 函数讲完 |
| 81分钟 | DOM和事件过完 |
| 90分钟 | 竞赛题+收尾 |

---

适用对象：计算机系大二学生（有HTML/CSS/JS基础）
建议时长：90分钟
