# JavaScript前端分享 - 教学策划案


## 整体时间分配（60分钟）

| 环节 | 内容 | 时间 | 备注 |
|------|------|------|------|
| 开场 | 前端三件套概述 + JS定位 | 5分钟 | 承上启下 |
| 回顾 | 大家已经学过的JS基础 | 5分钟 | 快速过，重点讲升级 |
| 进阶 | 变量声明对比、数据类型 | 10分钟 | var/let/const详细对比 |
| 核心 | 运算符 + 条件判断 + 循环 | 10分钟 | ==和===重点对比 |
| 重点 | 函数三种写法对比 | 12分钟 | 详细对比优劣 |
| 实战 | DOM操作 + 事件处理 | 12分钟 | 实际场景演示 |
| 结尾 | 竞赛理论题 + 总结 | 6分钟 | 竞赛题型+讲解 |

---

## 第一部分：开场 - 前端三件套（5分钟）

### PPT内容要点

```
【页面标题】
前端三件套：HTML + CSS + JavaScript

【内容】
HTML = 结构层
  决定页面有什么内容：标题、段落、图片、按钮

CSS = 表现层
  决定页面长什么样：颜色、布局、动画

JavaScript = 行为层
  决定页面会做什么：点击响应、数据处理、动态更新

【三者关系示意】
一个网页 = HTML(骨架) + CSS(外观) + JS(行为)
缺了HTML没内容，缺了CSS不好看，缺了JS不会动
```

### 演讲稿

> 大家好，今天我们来聊JavaScript。在正式开始之前，先说一下前端三件套的关系，帮大家理清定位。
>
> 做一个网页，需要三样东西：HTML搭结构，CSS管样式，JavaScript管行为。打个比方，HTML就是毛坯房，CSS是装修，JS是给房子装上智能家居——按个开关灯就亮，刷个卡门就开。
>
> 大家现在课上学的东西，document.write、getElementById这些，其实就是JS在操控HTML页面的手段。今天我们会先快速回顾一下这些基础，然后补充一些课上可能没细讲、但实际写项目的时候天天用的东西。

---

## 第二部分：JS基础回顾（5分钟）

### PPT内容要点

```
【页面标题】
这些你已经会了

【代码示例 - 输出到页面】
document.write("Hello World!");

document.getElementById("demo").innerHTML = "新内容";

【代码示例 - 变量声明】
var name = "小明";
var age = 20;

【代码示例 - 数据类型】
String   字符串  "hello"
Number   数字    18, 3.14
Boolean  布尔    true / false
```

### 演讲稿

> 先快速过一下大家课上学过的，就当热身。
>
> 第一个，怎么把内容输出到页面上。最直接的方式是document.write：
>
> ```javascript
> document.write("Hello World!");
> ```
>
> 页面上就会显示这行字。但这个方法有个坑——如果在页面加载完之后调用document.write，它会覆盖掉整个页面的内容。所以实际开发中基本不用它，一般只在快速测试的时候用一下。
>
> 第二个，getElementById配合innerHTML，这个才是正路：
>
> ```javascript
> document.getElementById("demo").innerHTML = "新内容";
> ```
>
> 这行代码做了两件事：先通过id找到页面上的元素，然后把它的内容替换掉。不会影响页面其他部分。
>
> 第三个，变量声明。大家课上学的是用var，这个后面会重点讲，因为var有不少问题，现在有更好的替代方案。

---

## 第三部分：变量声明对比 - var / let / const（10分钟）

### PPT内容要点

```
【页面标题】
var vs let vs const - 到底用哪个？

【对比表格】
                    var          let          const
作用域              函数作用域     块级作用域     块级作用域
能否重复声明         能           不能          不能
能否重新赋值         能           能           不能
变量提升             有           无           无
声明前访问           undefined    报错         报错
```

### 演讲稿

> 这是今天第一个重点对比。var、let、const三个都能声明变量，但区别很大，搞不清楚的话代码容易出bug。
>
> 先说最大的区别：**作用域**。
>
> var是函数作用域，意思是只要在同一个函数里，到处都能访问到这个变量。let和const是块级作用域，只在当前的大括号{}里面有效。
>
> 来看个例子：
>
> ```javascript
> // 用var
> if (true) {
>     var x = 10;
> }
> console.log(x);  // 10，能访问到，var泄露到外面了
>
> // 用let
> if (true) {
>     let y = 10;
> }
> console.log(y);  // 报错！y is not defined，let被限制在大括号内
> ```
>
> var这个"泄露"的特性，在循环里特别坑：
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：3, 3, 3（不是0, 1, 2！）
>
> for (let i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：0, 1, 2（正确）
> ```
>
> 为什么var输出三个3？因为var只有函数作用域，循环结束后i变成了3，三个setTimeout回调共享同一个i。而let每次循环都创建一个新的i，所以每个回调拿到的是各自那次的值。这个知识点竞赛里考得很多。
>
> 再说第二个区别：**重复声明**。
>
> ```javascript
> var name = "小明";
> var name = "小红";  // 不报错，后面的覆盖前面的
> console.log(name);  // "小红"
>
> let age = 20;
> let age = 21;  // 报错！SyntaxError
> ```
>
> var允许重复声明，这很容易出问题——你可能在别的地方已经声明过同名变量，再声明一次不会报错，但值被覆盖了，debug的时候根本找不到原因。let和const直接报错，反而帮你避免了这种隐患。
>
> 第三个区别：**变量提升**。
>
> ```javascript
> console.log(a);  // undefined，var声明被提升了，但赋值没有
> var a = 1;
>
> console.log(b);  // 报错！ReferenceError
> let b = 2;
> ```
>
> var会把声明"提升"到作用域顶部，所以你在声明之前访问不会报错，只是拿到undefined。这很容易让人误以为代码没问题，实际上逻辑已经不对了。let和const在声明之前访问直接报错，这种"暂时性死区"的机制反而更安全。
>
> 最后是const和let的区别：const声明后不能重新赋值。
>
> ```javascript
> const PI = 3.14;
> PI = 3;  // 报错！Assignment to constant variable
>
> let score = 90;
> score = 95;  // 没问题
> ```
>
> 但要注意，const限制的是"引用"不能变，如果存的是对象或数组，里面的内容还是可以改的：
>
> ```javascript
> const arr = [1, 2, 3];
> arr.push(4);     // 可以，修改的是数组内容
> arr = [5, 6];    // 报错！不能重新赋值整个数组
> ```
>
> **总结一下选择策略：**
> - 默认用const，因为大部分变量声明后就不需要改了
> - 需要重新赋值的才用let（比如循环计数器、累加器）
> - 不要再用var

---

## 第四部分：运算符 + 条件判断 + 循环（10分钟）

### PPT内容要点

```
【页面标题】
== 和 === - 一个等号引发的血案

【对比表格】
              ==               ===
名称          相等运算符        严格相等运算符
类型转换       会自动转换         不会转换
比较规则       转换后再比较       类型不同直接false
安全性         低，容易出意外      高，结果可预测
推荐程度       不推荐            推荐

【典型例子】
3 == "3"      // true  （"3"被转成数字3）
3 === "3"     // false （数字和字符串，类型不同）

"" == false   // true  （空字符串和false都转成0）
"" === false  // false （字符串和布尔，类型不同）

0 == false    // true  （0和false都转成0）
0 === false   // false （数字和布尔，类型不同）

null == undefined   // true  （特殊规则，两者相等）
null === undefined  // false （类型不同）

NaN == NaN   // false （NaN不等于任何值，包括自己）
NaN === NaN  // false
```

### 演讲稿

> 运算符这块快速过，重点讲一个竞赛和面试都特别爱考的点：==和===的区别。
>
> ==叫相等运算符，===叫严格相等运算符。区别就一个：==会做类型转换，===不会。
>
> 来看几个经典的坑：
>
> ```javascript
> console.log(3 == "3");    // true
> console.log(3 === "3");   // false
> ```
>
> ==把字符串"3"转成了数字3，然后比较，所以相等。===不转换，数字和字符串类型不同，直接false。
>
> 再看更离谱的：
>
> ```javascript
> console.log("" == false);  // true
> console.log(0 == false);   // true
> console.log([] == false);  // true
> ```
>
> 空字符串、0、空数组，用==比较都等于false。这在实际代码中很容易出bug——你以为在比较值，其实类型转换在背后搞鬼。
>
> 还有一个特殊情况：
>
> ```javascript
> console.log(NaN == NaN);   // false
> console.log(NaN === NaN);  // false
> ```
>
> NaN是JavaScript里唯一一个不等于自己的值。判断一个值是不是NaN，要用isNaN()函数或者Number.isNaN()。
>
> **结论：写代码统一用===和!==，不要用==和!=。** 这样可以避免类型转换带来的各种意外。

### PPT内容要点

```
【页面标题】
条件判断和循环

【if-else】
let score = 85;

if (score >= 90) {
    console.log("优秀");
} else if (score >= 60) {
    console.log("及格");
} else {
    console.log("不及格");
}

【三元运算符 - if-else的简写】
条件 ? 值1 : 值2

let result = score >= 60 ? "及格" : "挂科";
// 等价于：
// if (score >= 60) { result = "及格"; }
// else { result = "挂科"; }

【for循环】
for (let i = 0; i < 5; i++) {
    console.log(i);  // 0, 1, 2, 3, 4
}

【while循环】
let n = 0;
while (n < 3) {
    console.log(n);  // 0, 1, 2
    n++;
}

【break和continue】
break    - 跳出整个循环
continue - 跳过这一次，继续下一轮

for (let i = 0; i < 5; i++) {
    if (i === 2) continue;  // 跳过2
    if (i === 4) break;     // 到4就停
    console.log(i);         // 输出：0, 1, 3
}
```

### 演讲稿

> 条件判断和循环大家应该都有基础，快速过一下重点。
>
> if-else没什么好说的，就一个建议：能用三元运算符的简单判断就别写if-else，代码更短。
>
> ```javascript
> // 冗长写法
> let result;
> if (score >= 60) {
>     result = "及格";
> } else {
>     result = "挂科";
> }
>
> // 简洁写法
> let result = score >= 60 ? "及格" : "挂科";
> ```
>
> 但注意，三元运算符只适合简单的二选一，逻辑复杂的话还是老老实实写if-else，可读性更重要。
>
> 循环的话，for和while选哪个？知道循环次数用for，不知道用while。比如遍历数组知道长度，用for；用户输入密码直到正确为止，不知道要试几次，用while。
>
> break和continue的区别：break是直接退出整个循环，continue是跳过当前这一轮继续下一轮。上面那个例子，i等于2时continue跳过，i等于4时break直接退出，所以最终输出0、1、3。

---

## 第五部分：函数三种写法对比（12分钟）

### PPT内容要点

```
【页面标题】
函数的三种写法 - 你该用哪个？

【写法一：函数声明】
function add(a, b) {
    return a + b;
}

【写法二：函数表达式】
const add = function(a, b) {
    return a + b;
};

【写法三：箭头函数】
const add = (a, b) => a + b;

【对比表格】
                  函数声明         函数表达式        箭头函数
声明方式          function开头      赋值给变量        => 箭头
this指向          调用者            调用者           定义时所在作用域
能否作为构造函数   能              能              不能
arguments对象     有              有              没有
变量提升          整体提升          只提升变量名      只提升变量名
适合场景          通用             回调/传参        简短回调、链式调用
```

### 演讲稿

> 函数是JS里最核心的概念，今天重点讲。函数有三种写法，很多人搞不清区别，我们来一个个看。
>
> **写法一：函数声明**
>
> ```javascript
> function add(a, b) {
>     return a + b;
> }
> ```
>
> 最传统的写法，function关键字开头。特点是有变量提升——你可以在声明之前调用它：
>
> ```javascript
> console.log(add(1, 2));  // 3，不会报错
> function add(a, b) {
>     return a + b;
> }
> ```
>
> 引擎会把整个函数声明提升到作用域顶部，所以不管你写在哪里，都能在前面调用。
>
> **写法二：函数表达式**
>
> ```javascript
> const add = function(a, b) {
>     return a + b;
> };
> ```
>
> 把一个匿名函数赋值给变量。和函数声明的关键区别是：没有整体提升，只有变量名提升。
>
> ```javascript
> console.log(add(1, 2));  // 报错！TypeError: add is not a function
> const add = function(a, b) {
>     return a + b;
> };
> ```
>
> 因为const不会提升赋值，在声明之前add还是undefined，调用就报错了。
>
> **写法三：箭头函数** -- 重点
>
> ```javascript
> const add = (a, b) => a + b;
> ```
>
> 这是ES6引入的语法，现在开发中用得最多。它和前两种最大的区别是this的指向不同。
>
> 来看一个场景：页面上有个按钮，点击后要修改按钮文字。
>
> ```javascript
> const btn = document.querySelector("#myBtn");
>
> // 用普通函数
> btn.addEventListener("click", function() {
>     console.log(this);  // this指向btn元素，正确
>     this.textContent = "已点击";
> });
>
> // 用箭头函数
> btn.addEventListener("click", () => {
>     console.log(this);  // this指向外层作用域（window），不是btn
>     this.textContent = "已点击";  // 不对！
> });
> ```
>
> 普通函数的this取决于"谁调用了它"，按钮调用就指向按钮。箭头函数没有自己的this，它会继承定义时所在作用域的this，在这里就是window。
>
> 所以结论是：**需要用this的时候别用箭头函数**，其他情况箭头函数更简洁。
>
> 再看一个箭头函数的简写规则：
>
> ```javascript
> // 只有一个参数，省略括号
> const double = x => x * 2;
>
> // 多个参数，要括号
> const add = (a, b) => a + b;
>
> // 函数体多行，要大括号和return
> const calc = (a, b) => {
>     const sum = a + b;
>     return sum * 2;
> };
>
> // 函数体一行，省略大括号，自动return
> const square = x => x * x;
> ```
>
> **选择建议：**
> - 简短的回调函数、工具函数：用箭头函数
> - 需要用this的场景（事件处理、对象方法）：用普通函数
> - 函数声明和函数表达式功能上差不多，但函数表达式更灵活，可以当参数传递

### PPT内容要点

```
【页面标题】
函数参数默认值

【场景：用户没传参数怎么办？】
// 不设默认值
function greet(name) {
    console.log("你好，" + name);
}
greet();  // "你好，undefined" -- 不太对

// 设默认值
function greet(name = "同学") {
    console.log("你好，" + name);
}
greet();       // "你好，同学"
greet("小明"); // "你好，小明"

// 箭头函数也能用
const greet = (name = "同学") => "你好，" + name;

【场景：多个参数都有默认值】
function createUser(name = "匿名", age = 18, role = "user") {
    return { name, age, role };
}

createUser();                    // {name: "匿名", age: 18, role: "user"}
createUser("小明");              // {name: "小明", age: 18, role: "user"}
createUser("小明", 20, "admin"); // {name: "小明", age: 20, role: "admin"}
```

### 演讲稿

> 函数参数默认值这个功能很实用。场景就是：调用函数的时候，用户可能不传某个参数，你不设默认值的话，那个参数就是undefined，后续操作可能就出bug了。
>
> ```javascript
> function greet(name = "同学") {
>     console.log("你好，" + name);
> }
> ```
>
> 语法就是在参数后面加个等号和默认值。不传就用默认值，传了就用传的值。
>
> 多个参数可以分别设默认值，没传的用默认值，传了的用实际值。这个在做项目的时候特别常用，比如表单提交，有些字段是可选的，就可以给默认值。

---

## 第六部分：DOM操作 + 事件处理（12分钟）

### PPT内容要点

```
【页面标题】
DOM - JS操控页面的桥梁

【什么是DOM？】
DOM = Document Object Model（文档对象模型）
浏览器加载HTML后，把页面变成一棵"节点树"
JS通过document对象访问这棵树，找到并操作页面元素

【DOM树示意】
document
  └── html
       ├── head
       │    └── title
       └── body
            ├── h1
            ├── p
            └── button
```

### 演讲稿

> DOM操作是前端JS最核心的实战内容。DOM就是浏览器把HTML页面解析成的一棵树，每个标签是树上的一个节点。JS通过document对象可以找到任意节点，修改它的内容、样式、属性。
>
> 之前大家用的document.getElementById就是在DOM树上按id找节点。

### PPT内容要点

```
【页面标题】
获取元素的方法对比

【对比表格】
方法                    参数           返回值          兼容性
getElementById         id字符串       单个元素        所有浏览器
getElementsByClassName class字符串    HTMLCollection  IE9+
getElementsByTagName   标签名         HTMLCollection  所有浏览器
querySelector          CSS选择器      单个元素        IE8+
querySelectorAll       CSS选择器      NodeList        IE8+

【实际开发推荐】
日常用querySelector和querySelectorAll就够了
原因：CSS选择器语法通用，一个方法搞定所有查找需求

【代码示例】
// 按id找
document.getElementById("title");
document.querySelector("#title");    // 等价写法

// 按class找
document.querySelector(".card");           // 第一个
document.querySelectorAll(".card");        // 所有

// 按标签找
document.querySelector("button");         // 第一个
document.querySelectorAll("li");          // 所有

// 组合选择器
document.querySelector("#nav .active");   // id=nav下面的.active
document.querySelector("ul > li:first-child");  // 第一个li
```

### 演讲稿

> 获取元素有好几种方法，我们来对比一下。
>
> getElementById是最经典的，按id查找，返回单个元素。学校课上也讲了。
>
> getElementsByClassName和getElementsByTagName返回的是HTMLCollection，这是个"活的"集合——页面变了它也跟着变。但它是伪数组，不能用forEach遍历。
>
> querySelector和querySelectorAll是后来加的，用CSS选择器语法查找。querySelector返回第一个匹配的，querySelectorAll返回所有匹配的，是个NodeList，可以用forEach。
>
> **实际开发中推荐用querySelector和querySelectorAll**，因为CSS选择器语法大家都会，而且一个方法就能搞定id、class、标签、组合等各种查找需求，不用记那么多方法名。
>
> ```javascript
> // 以前要记三个方法
> document.getElementById("title");
> document.getElementsByClassName("card");
> document.getElementsByTagName("li");
>
> // 现在只要记两个
> document.querySelector("#title");
> document.querySelector(".card");
> document.querySelectorAll("li");
> ```

### PPT内容要点

```
【页面标题】
修改元素：innerHTML vs textContent

【对比表格】
                innerHTML              textContent
解析HTML         会解析HTML标签          不会解析，纯文本
安全性           低（XSS风险）           高
性能             较慢                   较快
获取内容         包含HTML标签            只有文字部分
适用场景         需要插入HTML结构         只改文字

【代码示例】
<div id="box"><p>旧内容</p></div>

const box = document.getElementById("box");

box.innerHTML = "<b>新内容</b>";
// 页面显示：新内容（加粗）

box.textContent = "<b>新内容</b>";
// 页面显示：<b>新内容</b>（原样显示标签文字）

【安全提醒】
不要用innerHTML插入用户输入的内容！
用户可能输入 <script> 标签，造成XSS攻击
用textContent更安全
```

### 演讲稿

> 获取到元素之后，怎么改它的内容？有两种方式：innerHTML和textContent。
>
> innerHTML会解析HTML标签，textContent不会。看这个例子：
>
> ```javascript
> const box = document.getElementById("box");
>
> box.innerHTML = "<b>加粗文字</b>";
> // 页面上显示的是加粗的"加粗文字"
>
> box.textContent = "<b>加粗文字</b>";
> // 页面上显示的是 <b>加粗文字</b> 这串字符
> ```
>
> **安全方面有个重要提醒：** 如果你把用户输入的内容用innerHTML插入页面，用户可能输入恶意的script标签，这就是XSS攻击。所以只要是用户输入的内容，一律用textContent。
>
> innerHTML只在一种情况下用：你确实需要插入HTML结构，比如动态生成一段带标签的页面片段，而且内容是你自己写的，不是用户输入的。

### PPT内容要点

```
【页面标题】
classList - 操作class的最佳方式

【对比：老方式 vs 新方式】
// 老方式：直接操作className字符串
div.className = "box active";       // 覆盖，要手动拼接
div.className = div.className.replace(" active", "");  // 删除，很麻烦

// 新方式：classList
div.classList.add("active");         // 添加
div.classList.remove("active");      // 删除
div.classList.toggle("active");      // 切换（有就删，没有就加）
div.classList.contains("active");    // 判断有没有

【场景：点击按钮切换菜单展开/收起】
const menuBtn = document.querySelector("#menuBtn");
const menu = document.querySelector("#menu");

menuBtn.addEventListener("click", () => {
    menu.classList.toggle("open");
});
// CSS里写：.open { display: block; }
// 默认隐藏，点击后加上open就显示，再点就移除open又隐藏
```

### 演讲稿

> 操作元素的class是前端开发里频率最高的操作之一。以前用className，要手动拼字符串，特别麻烦。现在用classList，四个方法搞定：
>
> add添加，remove删除，toggle切换，contains判断。
>
> toggle特别好用——点一下加上class，再点一下移除class。做菜单展开收起、暗色模式切换这种功能，一行代码就搞定。
>
> ```javascript
> menuBtn.addEventListener("click", () => {
>     menu.classList.toggle("open");
> });
> ```
>
> 配合CSS，默认隐藏菜单，加上open这个class就显示，去掉就隐藏。JS只管切换class，样式全交给CSS，这就是"结构-样式-行为分离"的思路。

### PPT内容要点

```
【页面标题】
事件绑定：onclick vs addEventListener

【对比表格】
                  onclick              addEventListener
绑定数量          只能绑一个            可以绑多个
解绑方式          btn.onclick = null   removeEventListener
是否支持事件冒泡   不支持控制           可以控制（第三个参数）
代码位置          混在HTML里/JS里      统一在JS里
推荐程度          不推荐               推荐

【代码示例 - onclick只能绑一个】
btn.onclick = function() { console.log("第一次"); };
btn.onclick = function() { console.log("第二次"); };
// 点击只输出"第二次"，前面的被覆盖了

【代码示例 - addEventListener可以绑多个】
btn.addEventListener("click", () => {
    console.log("第一次");
});
btn.addEventListener("click", () => {
    console.log("第二次");
});
// 点击输出"第一次"和"第二次"，两个都会执行

【常见事件类型】
click       点击
dblclick    双击
mouseover   鼠标移入
mouseout    鼠标移出
keyup       键盘松开
keydown     键盘按下
submit      表单提交
change      值改变
input       输入时（实时触发）
```

### 演讲稿

> 事件绑定也有两种方式，来对比一下。
>
> onclick是学校教的方式，写法简单，但有个致命问题：同一个元素只能绑一个onclick，后面写的会覆盖前面的。
>
> ```javascript
> btn.onclick = function() { console.log("第一次"); };
> btn.onclick = function() { console.log("第二次"); };
> // 点击只会输出"第二次"
> ```
>
> addEventListener就没这个问题，同一个事件可以绑多个处理函数，都会执行：
>
> ```javascript
> btn.addEventListener("click", () => {
>     console.log("第一次");
> });
> btn.addEventListener("click", () => {
>     console.log("第二次");
> });
> // 两个都会执行
> ```
>
> 而且addEventListener还可以用removeEventListener解绑，onclick只能设为null。所以在实际开发中，addEventListener是标准做法。

### PPT内容要点

```
【页面标题】
实例演示：点击计数器

【HTML】
<button id="btn">点我</button>
<p id="output">还没有点击</p>

【JS】
const btn = document.getElementById("btn");
const output = document.getElementById("output");
let count = 0;

btn.addEventListener("click", () => {
    count++;
    output.textContent = "点击了 " + count + " 次";
});

【运行效果】
初始状态：还没有点击
点击1次：点击了 1 次
点击2次：点击了 2 次
点击3次：点击了 3 次
...

【代码解读】
1. getElementById获取按钮和显示区域
2. let声明可变的计数器
3. addEventListener绑定点击事件
4. 每次点击count++，更新显示内容
```

### 演讲稿

> 来看一个完整的例子。页面上一个按钮，一个文字区域，每点一次按钮，数字就加1。
>
> 逻辑很简单：先获取元素，准备一个计数器变量，给按钮绑定点击事件，每次点击让计数器加1，然后把新的数字更新到页面上。
>
> 这个例子虽然简单，但它包含了前端交互的核心流程：**用户操作 -> 事件触发 -> JS处理数据 -> 更新页面**。以后不管做多复杂的功能，基本套路都是这样。

### PPT内容要点

```
【页面标题】
实例演示：简易待办事项

【HTML】
<h1>待办事项</h1>
<input type="text" id="todoInput" placeholder="输入待办...">
<button id="addBtn">添加</button>
<ul id="todoList"></ul>

【JS】
const input = document.getElementById("todoInput");
const addBtn = document.getElementById("addBtn");
const list = document.getElementById("todoList");

addBtn.addEventListener("click", () => {
    const text = input.value.trim();
    if (text === "") return;

    const li = document.createElement("li");
    li.textContent = text;
    list.appendChild(li);
    input.value = "";
});

input.addEventListener("keyup", (e) => {
    if (e.key === "Enter") addBtn.click();
});

【涉及知识点】
- createElement: 创建新的HTML元素
- appendChild: 把元素添加到父元素末尾
- input.value: 获取输入框的值
- trim(): 去除首尾空格
- keyup事件: 监听键盘
- e.key: 获取按下的键名
```

### 演讲稿

> 再来一个稍微复杂点的例子——简易待办事项列表。
>
> 功能：在输入框里打字，点添加按钮或按回车，就把内容加到下面的列表里。
>
> 核心逻辑分几步：
>
> 1. 获取输入框的值，用trim()去掉首尾空格
> 2. 如果是空的就不处理，直接return
> 3. 用document.createElement创建一个新的li标签
> 4. 把输入的文字设为li的内容
> 5. 用appendChild把li加到列表末尾
> 6. 清空输入框
>
> 这里有个细节：监听了keyup事件，判断按的是不是回车键（e.key === "Enter"），如果是就模拟点击添加按钮。这样用户按回车也能添加，体验更好。
>
> 这个例子把今天讲的DOM操作和事件处理都串起来了：获取元素、创建元素、修改内容、添加到页面、绑定事件、处理用户输入。大家回去可以自己跑一下，试试加个删除功能。

---

## 第七部分：竞赛理论题 + 总结（6分钟）

### PPT内容要点

```
【页面标题】
竞赛/面试常见理论题

【题目1】以下代码输出什么？
for (var i = 0; i < 3; i++) {
    setTimeout(function() {
        console.log(i);
    }, 0);
}

答案：3, 3, 3
解析：var是函数作用域，循环结束后i=3
三个setTimeout回调共享同一个i
延迟执行时i已经是3了

追问：怎么改成输出0, 1, 2？
方法1：把var改成let
方法2：用IIFE（立即执行函数）创建闭包
for (var i = 0; i < 3; i++) {
    (function(j) {
        setTimeout(function() {
            console.log(j);
        }, 0);
    })(i);
}
```

### 演讲稿

> 最后来几道竞赛和面试里常见的理论题，大家也可以当作自我检测。
>
> **第一题：** 这段代码输出什么？
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     setTimeout(function() {
>         console.log(i);
>     }, 0);
> }
> ```
>
> 答案是3、3、3，不是0、1、2。原因就是刚才讲过的var作用域问题。var只有函数作用域，三个setTimeout共享同一个i，等回调执行的时候循环已经跑完了，i变成了3。
>
> 怎么改？最简单的方式是把var换成let，每次循环创建一个独立的i。另一种方式是用立即执行函数创建闭包，把每次的i"锁"住。这个题在蓝桥杯、前端面试里出现频率特别高。

### PPT内容要点

```
【题目2】以下表达式的结果？
console.log(typeof null);
console.log(typeof undefined);
console.log(null == undefined);
console.log(null === undefined);

答案：
typeof null      → "object"    （历史遗留bug）
typeof undefined → "undefined"
null == undefined   → true     （规范规定）
null === undefined  → false    （类型不同）

解析：
null是"空值"，表示"这里应该有值，但现在是空的"
undefined是"未定义"，表示"这个变量声明了但还没赋值"
typeof null返回"object"是JS的历史遗留问题
null本质上不是对象，但typeof返回了"object"
这在竞赛中经常作为陷阱题出现

【题目2延伸】
console.log(typeof typeof 1);
答案："string"
解析：typeof 1 返回 "number"（字符串）
     typeof "number" 返回 "string"
     typeof的返回值永远是字符串
```

### 演讲稿

> **第二题：** typeof null返回什么？
>
> 答案是"object"。这个是JavaScript的历史遗留bug，null明明不是对象，但typeof返回了"object"。这个知识点在竞赛里经常考，记住就行。
>
> null和undefined的区别：null表示"这里应该有值但现在是空的"，是你主动设的；undefined表示"这个变量声明了但还没赋值"，是默认状态。用==比较它们是true（规范规定），用===比较是false（类型不同）。
>
> 再延伸一下，typeof typeof 1返回什么？typeof 1返回字符串"number"，typeof "number"返回"string"。所以答案是"string"。typeof的返回值永远是字符串，这个也是个常考的陷阱。

### PPT内容要点

```
【题目3】以下代码的输出顺序？
console.log(1);
setTimeout(() => console.log(2), 0);
Promise.resolve().then(() => console.log(3));
console.log(4);

答案：1, 4, 3, 2

解析：
JS执行机制：同步 > 微任务 > 宏任务
console.log(1)      → 同步，先执行
console.log(4)      → 同步，接着执行
Promise.then         → 微任务，同步之后执行
setTimeout           → 宏任务，微任务之后执行

执行顺序：
1. 同步代码：输出1, 4
2. 微任务队列：输出3
3. 宏任务队列：输出2

这个知识点在蓝桥杯、各类前端竞赛中出现率极高
```

### 演讲稿

> **第三题：** 这段代码的输出顺序是什么？
>
> ```javascript
> console.log(1);
> setTimeout(() => console.log(2), 0);
> Promise.resolve().then(() => console.log(3));
> console.log(4);
> ```
>
> 答案是1、4、3、2。注意setTimeout的延迟是0，但它不是最先执行的。
>
> 这涉及到JS的事件循环机制。JS是单线程的，代码分三类：同步代码、微任务、宏任务。执行顺序是：先跑完所有同步代码，然后清空微任务队列，最后执行宏任务。
>
> console.log是同步的，先执行输出1和4。Promise.then是微任务，在同步之后执行输出3。setTimeout是宏任务，最后执行输出2。虽然延迟是0毫秒，但它还是宏任务，排在微任务后面。
>
> 这个知识点在蓝桥杯、前端竞赛、面试里出现率极高，建议大家理解清楚。

### PPT内容要点

```
【题目4】以下代码输出什么？
const a = { name: "小明" };
const b = a;
b.name = "小红";
console.log(a.name);

答案："小红"

解析：
对象是引用类型，a和b指向同一块内存
修改b的属性，a也会变
这不是"复制"，而是"引用"

对比：
const c = 10;
let d = c;
d = 20;
console.log(c);  // 10，基本类型是值复制，互不影响

关键区别：
基本类型（Number, String, Boolean）→ 赋值时复制值
引用类型（Object, Array, Function）→ 赋值时复制引用（地址）
```

### 演讲稿

> **第四题：** 这段代码输出什么？
>
> ```javascript
> const a = { name: "小明" };
> const b = a;
> b.name = "小红";
> console.log(a.name);
> ```
>
> 答案是"小红"，不是"小明"。这个坑很多人踩过。
>
> 原因是对象是引用类型。const a = { name: "小明" }在内存里创建了一个对象，a存的是这个对象的地址。const b = a把地址复制给了b，a和b指向同一个对象。改了b的name，a的name也变了，因为它们是同一个东西。
>
> 对比基本类型就不一样：let d = c，如果是数字，d拿到了c的值的副本，改d不影响c。
>
> 这个知识点在竞赛里经常以"以下代码a的值是什么"这种形式出现，记住：基本类型赋值是复制值，引用类型赋值是复制地址。

### PPT内容要点

```
【题目5】console.log([] == false) 的结果？

答案：true

解析：==比较时的类型转换规则
1. []和false都先转成数字
2. [] → "" → 0（空数组转字符串，再转数字）
3. false → 0
4. 0 == 0 → true

这就是为什么不要用==，类型转换规则太复杂了
换成 === 就是 false，因为类型不同

【相关题目】
[] == ![]     → true
[] == 0       → true
"" == 0       → true
"1" - 1       → 0（字符串参与运算会转数字）
"1" + 1       → "11"（+遇到字符串会拼接）
1 + "2" + 3   → "123"
1 + 2 + "3"   → "33"（先算1+2=3，再和"3"拼接）
```

### 演讲稿

> **第五题：** 空数组和false用==比较，结果是true还是false？
>
> 答案是true。这个很反直觉，但==的类型转换规则就是这样：
>
> 空数组先转成空字符串，空字符串再转成数字0。false也转成数字0。0等于0，所以是true。
>
> 更离谱的：[] == ![] 也是true。![]先转布尔是false（数组是truthy值，取反变成false），然后[] == false，两边都转0，0 == 0，true。
>
> 还有一组经典的隐式转换题：
>
> ```javascript
> "1" + 1     // "11"，+遇到字符串会拼接
> "1" - 1     // 0，-会把字符串转数字
> 1 + "2" + 3 // "123"
> 1 + 2 + "3" // "33"，先算1+2=3，再拼"3"
> ```
>
> 这些隐式转换的规则很绕，竞赛里经常考。但实际开发中，我们不会依赖这些规则，而是主动做类型转换：用Number()、String()、Boolean()显式转换，代码更清晰。

---

## 结尾：总结

### PPT内容要点

```
【页面标题】
今天讲了什么

变量声明：var有坑，用let和const
  - let可重新赋值，const不可
  - 块级作用域 vs 函数作用域

运算符：==会类型转换，===不会
  - 统一用===，避免隐式转换的坑

条件判断：if-else / switch / 三元运算符
循环：for / while / break / continue

函数三种写法：
  - 函数声明：有提升，通用
  - 函数表达式：灵活，可传参
  - 箭头函数：简洁，但this不同

DOM操作：
  - querySelector / querySelectorAll
  - innerHTML vs textContent
  - classList操作class

事件处理：
  - addEventListener替代onclick
  - 事件驱动的交互模式

竞赛重点：
  - var/let作用域与闭包
  - typeof的陷阱
  - 事件循环：同步 > 微任务 > 宏任务
  - 引用类型 vs 基本类型
  - 隐式类型转换

继续学习的方向：
  数组方法：map, filter, reduce
  对象和JSON
  异步编程：Promise, async/await
  浏览器API：localStorage, fetch
  前端框架：Vue, React
```

### 演讲稿

> 好了，今天的内容就到这里。我们快速回顾一下：
>
> 变量声明方面，var有作用域泄露和变量提升的问题，以后用let和const。运算符方面，==会做类型转换，容易出意外，统一用===。函数有三种写法，箭头函数最简洁但this指向不同，需要注意。DOM操作用querySelector，修改内容用textContent更安全，操作class用classList。事件绑定用addEventListener。
>
> 竞赛重点方面，var/let的闭包题、typeof的陷阱、事件循环的执行顺序、引用类型和基本类型的区别、隐式类型转换，这几个是高频考点。
>
> 最后说一句，学编程最重要的就是动手。今天讲的代码大家回去自己敲一遍，光看是学不会的。有问题随时在群里问，一起讨论。
>
> 谢谢大家！

---

## 附录：常用代码速查表

```
[变量声明]
let x = 10;
const PI = 3.14;

[数据类型判断]
typeof "str"    // "string"
typeof 123      // "number"
typeof true     // "boolean"
typeof null     // "object" (bug)
typeof undefined // "undefined"

[条件判断]
if (x > 0) { ... }
else if (x === 0) { ... }
else { ... }

x > 0 ? "正数" : "非正数"

[循环]
for (let i = 0; i < n; i++) { ... }
while (condition) { ... }
break / continue

[函数]
function add(a, b) { return a + b; }
const add = function(a, b) { return a + b; };
const add = (a, b) => a + b;

[DOM操作]
document.querySelector("#id")
document.querySelector(".class")
document.querySelectorAll("li")
element.textContent = "..."
element.innerHTML = "..."
element.classList.add / remove / toggle

[事件]
element.addEventListener("click", () => { ... })
element.addEventListener("keyup", (e) => { ... })

[创建元素]
document.createElement("div")
parent.appendChild(child)
```

---

## 时间把控建议

| 时间节点 | 应该讲到哪里 |
|---------|------------|
| 5分钟 | 讲完前端三件套+基础回顾 |
| 15分钟 | 讲完var/let/const对比 |
| 25分钟 | 讲完运算符+条件+循环 |
| 37分钟 | 讲完函数三种写法对比 |
| 49分钟 | 讲完DOM操作+事件 |
| 55分钟 | 讲完竞赛理论题 |
| 60分钟 | 总结完毕 |

---

适用对象：计算机系大二学生
建议时长：60分钟
