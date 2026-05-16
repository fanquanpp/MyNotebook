# JavaScript前端分享 - 策划案


## 时间分配（60分钟）

| 环节 | 内容 | 时间 |
|------|------|------|
| 开场 | 前端三件套 + JS定位 | 4分钟 |
| var的坑 | 从学校教的var过渡到let/const | 8分钟 |
| ==和=== | 类型转换的坑 + 条件/循环快速过 | 8分钟 |
| 函数 | 三种写法怎么选 | 12分钟 |
| DOM + 事件 | 实际操作页面 | 14分钟 |
| 实战演示 | 跑两个完整小例子 | 8分钟 |
| 竞赛题 + 收尾 | 几道高频题 + 总结 | 6分钟 |

---

## 一、开场（4分钟）

### PPT页面

```
前端三件套

HTML  - 页面有什么（结构）
CSS   - 页面长什么样（样式）
JS    - 页面会做什么（行为）

一个网页 = HTML骨架 + CSS皮肤 + JS让东西动起来
```

### 说的话

> 今天聊JavaScript，开始之前先说下前端三件套的关系。HTML搭结构，CSS管样式，JS管行为——这个大家应该都听过。打个比方，HTML是毛坯房，CSS是装修，JS是智能家居。没有JS，页面就是个静态的海报；有了JS，按钮能点、表单能提交、内容能动态变化。
>
> 大家课上学了document.write、getElementById、var这些，今天不是从头讲，是在你们已有的基础上，把课上没展开的部分补上，再讲一些以后做项目、打比赛真正常用的东西。有些是学校课上也提了但没细说的，有些是课上完全没提到的。

---

## 二、var的坑 -- 从var到let/const（8分钟）

### PPT页面

```
var有什么问题？

1. 作用域泄露
2. 允许重复声明
3. 变量提升

解决方案：let 和 const
```

### 说的话

> 先从大家最熟悉的var说起。课上学变量声明用的都是var，但var其实有不少坑，我来举几个例子，你们感受一下。
>
> **第一个坑：作用域泄露。**
>
> ```javascript
> if (true) {
>     var x = 10;
> }
> console.log(x);  // 10
> ```
>
> 在C或者Java里，if里面声明的变量，出了if就没了对吧？但var不是，它跑出来了。因为var只有函数作用域，没有块级作用域。只要还在同一个函数里，var声明的变量到处都能访问。
>
> 这个在循环里更坑：
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：3, 3, 3
> ```
>
> 你以为输出0、1、2，实际输出三个3。因为三个setTimeout共享同一个i，等它们执行的时候循环已经结束了，i变成了3。这个题竞赛里考得特别多，后面还会再提。
>
> 换成let就正常了：
>
> ```javascript
> for (let i = 0; i < 3; i++) {
>     setTimeout(() => console.log(i), 100);
> }
> // 输出：0, 1, 2
> ```
>
> let是块级作用域，每次循环创建一个独立的i，互不影响。
>
> **第二个坑：var允许重复声明。**
>
> ```javascript
> var name = "小明";
> var name = "小红";  // 不报错！
> console.log(name);  // "小红"
> ```
>
> 你在别的地方已经声明过name，又声明一次，不会报错，但值被覆盖了。代码一长，这种bug很难找。let和const直接报错，反而帮你避坑。
>
> **第三个坑：变量提升。**
>
> ```javascript
> console.log(a);  // undefined
> var a = 1;
> ```
>
> 不报错，输出undefined。var会把声明提到作用域顶部，但赋值不会提升。这很容易让你以为代码没问题，其实逻辑已经不对了。let和const在声明前访问直接报ReferenceError，这个叫"暂时性死区"，报错反而比不报错好——至少你知道出问题了。
>
> **那let和const怎么选？**
>
> const声明后不能重新赋值，let可以。但有个细节：const存对象或数组的时候，里面的内容是可以改的：
>
> ```javascript
> const arr = [1, 2, 3];
> arr.push(4);   // 可以
> arr = [5, 6];  // 报错
> ```
>
> const限制的是"引用不能变"，不是"内容不能变"。
>
> 日常写代码的策略：默认用const，需要改的才用let，var别再用了。

---

## 三、==和=== + 条件循环快速过（8分钟）

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

> 运算符这块，最值得说的就是==和===。这个竞赛和面试都爱考。
>
> ==叫相等运算符，比较之前会自动做类型转换。===叫严格相等运算符，不转换，类型不同就是false。
>
> 来看几个例子：
>
> ```javascript
> 3 == "3"    // true，"3"被转成数字3
> 3 === "3"   // false，数字和字符串类型不同
> ```
>
> 这个还算能理解，再看离谱的：
>
> ```javascript
> "" == false  // true
> 0 == false   // true
> [] == false  // true
> ```
>
> 空字符串、0、空数组，用==比较全等于false。你说这谁记得住？所以结论很简单：**永远用===**，别用==，省得被类型转换坑。
>
> 还有个特殊情况，NaN：
>
> ```javascript
> NaN == NaN   // false
> NaN === NaN  // false
> ```
>
> NaN是JS里唯一一个不等于自己的值。判断NaN要用isNaN()或者Number.isNaN()。
>
> 条件判断和循环大家都有基础，快速提几个要点：
>
> 三元运算符是if-else的简写，适合简单的二选一：
>
> ```javascript
> let result = score >= 60 ? "及格" : "挂科";
> ```
>
> 循环的话，知道次数用for，不知道用while。break跳出整个循环，continue跳过当前轮。这些就不多展开了。

---

## 四、函数 -- 三种写法怎么选（12分钟）

### PPT页面

```
函数三种写法

function add(a, b) { return a + b; }        // 函数声明
const add = function(a, b) { return a + b; }; // 函数表达式
const add = (a, b) => a + b;                  // 箭头函数

关键区别：this指向不同
普通函数：this取决于谁调用了它
箭头函数：this继承定义时所在作用域
```

### 说的话

> 函数这块是重点。JS里函数有三种写法，看着效果一样，但有个关键区别很多人不知道——this的指向。
>
> 先看三种写法长什么样：
>
> ```javascript
> // 函数声明
> function add(a, b) {
>     return a + b;
> }
>
> // 函数表达式
> const add = function(a, b) {
>     return a + b;
> };
>
> // 箭头函数
> const add = (a, b) => a + b;
> ```
>
> 函数声明和函数表达式的区别是：函数声明有整体提升，你可以在声明之前调用它；函数表达式不行，因为const不会提升赋值。不过这个区别在实际写代码的时候影响不大，你只要记得先声明再调用就行。
>
> 箭头函数是重点。它除了写法短，最大的不同是this的指向。
>
> 来看个实际场景：页面上有个按钮，点击后改按钮文字。
>
> ```javascript
> const btn = document.querySelector("#myBtn");
>
> // 普通函数 -- this指向btn，正确
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
> 普通函数的this是"谁调用我，this就是谁"，按钮调用就指向按钮。箭头函数没有自己的this，它从外面"继承"this，在这里外层是window，所以this是window，不是按钮。
>
> 所以规则很简单：**需要用this的时候用普通函数，其他时候箭头函数更简洁。**
>
> 箭头函数的简写规则也说一下，以后看别人代码会经常碰到：
>
> ```javascript
> // 一个参数，省括号
> const double = x => x * 2;
>
> // 多个参数，要括号
> const add = (a, b) => a + b;
>
> // 多行，要大括号和return
> const calc = (a, b) => {
>     const sum = a + b;
>     return sum * 2;
> };
>
> // 一行，省大括号，自动return
> const square = x => x * x;
> ```
>
> 再说一个实用的东西：参数默认值。
>
> ```javascript
> function greet(name = "同学") {
>     console.log("你好，" + name);
> }
>
> greet();       // "你好，同学"
> greet("小明"); // "你好，小明"
> ```
>
> 不传参数就用默认值，传了就用传的值。做项目的时候特别常用，比如表单有些字段是可选的，给个默认值就不会出undefined的bug。

---

## 五、DOM操作 + 事件处理（14分钟）

### PPT页面

```
DOM操作三步走

1. 找到元素
2. 改它的内容/样式/属性
3. 绑定事件

找元素：
document.querySelector("#id")
document.querySelector(".class")
document.querySelectorAll("li")

改内容：
element.textContent = "纯文本"
element.innerHTML = "<b>HTML内容</b>"

改class：
element.classList.add / remove / toggle

绑事件：
element.addEventListener("click", () => { ... })
```

### 说的话

> DOM操作是前端JS最核心的实战内容。大家课上学了getElementById和innerHTML，今天在这个基础上扩展一下。
>
> DOM操作就三步：找到元素、改内容、绑事件。
>
> **第一步：找元素。**
>
> 课上学的是getElementById，按id找。还有getElementsByClassName和getElementsByTagName，按class或标签名找。但这三个方法要记三个名字，而且后两个返回的是HTMLCollection，不能用forEach遍历，挺不方便的。
>
> 我推荐直接用querySelector和querySelectorAll。参数就是CSS选择器，跟写CSS一样：
>
> ```javascript
> document.querySelector("#title");      // 按id
> document.querySelector(".card");       // 按class
> document.querySelectorAll("li");       // 按标签，返回所有
> document.querySelector("#nav .active"); // 组合选择器
> ```
>
> querySelector返回第一个匹配的，querySelectorAll返回所有匹配的，是个NodeList，能用forEach。一个方法搞定所有查找，不用记三个。
>
> **第二步：改内容。**
>
> innerHTML和textContent的区别：innerHTML会解析HTML标签，textContent不会。
>
> ```javascript
> box.innerHTML = "<b>加粗</b>";    // 页面显示加粗的文字
> box.textContent = "<b>加粗</b>";  // 页面显示 <b>加粗</b> 这串字符
> ```
>
> 有个安全提醒：innerHTML有XSS风险。如果内容是用户输入的，用innerHTML可能被注入恶意脚本。所以用户输入的内容一律用textContent，innerHTML只在内容是你自己写的时候用。
>
> 操作class用classList，比直接拼className字符串方便太多：
>
> ```javascript
> div.classList.add("active");       // 加class
> div.classList.remove("active");    // 删class
> div.classList.toggle("active");    // 切换，有就删没有就加
> div.classList.contains("active");  // 判断有没有
> ```
>
> toggle特别好用。比如做菜单展开收起：
>
> ```javascript
> menuBtn.addEventListener("click", () => {
>     menu.classList.toggle("open");
> });
> ```
>
> 点一下加上open这个class，CSS里写.open { display: block }，菜单就展开了。再点一下toggle把open删了，菜单又收起了。一行JS搞定，样式全交给CSS。
>
> **第三步：绑事件。**
>
> 课上学的是onclick，但onclick有个问题：同一个元素只能绑一个，后面写的会覆盖前面的。
>
> ```javascript
> btn.onclick = function() { console.log("A"); };
> btn.onclick = function() { console.log("B"); };
> // 点击只输出B，A被覆盖了
> ```
>
> addEventListener可以绑多个，都会执行：
>
> ```javascript
> btn.addEventListener("click", () => console.log("A"));
> btn.addEventListener("click", () => console.log("B"));
> // 两个都输出
> ```
>
> 还可以用removeEventListener解绑，onclick只能设null。所以以后统一用addEventListener。
>
> 常用的事件：click点击、keyup键盘松开、input输入时实时触发、submit表单提交、change值改变。做项目的时候查文档就行，不用死记。

---

## 六、实战演示（8分钟）

### 演示1：点击计数器

### PPT页面

```
演示1：点击计数器

<button id="btn">点我</button>
<p id="output">还没有点击</p>

const btn = document.getElementById("btn");
const output = document.getElementById("output");
let count = 0;

btn.addEventListener("click", () => {
    count++;
    output.textContent = "点击了 " + count + " 次";
});
```

### 说的话

> 来跑两个小例子。第一个很简单：页面上一个按钮一个文字，每点一次数字加1。
>
> 逻辑就四步：获取元素、声明计数器、绑点击事件、每次点击加1然后更新显示。
>
> 这个例子虽然简单，但套路是通用的：**用户操作 -> 事件触发 -> JS处理数据 -> 更新页面**。以后不管做登录、提交表单、搜索过滤，基本套路都是这个。

### 演示2：简易待办事项

### PPT页面

```
演示2：简易待办事项

<input type="text" id="todoInput" placeholder="输入待办...">
<button id="addBtn">添加</button>
<ul id="todoList"></ul>

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
```

### 说的话

> 第二个例子稍微复杂一点——待办事项列表。输入框打字，点添加或按回车，内容就加到列表里。
>
> 逻辑拆开看：
>
> 1. 拿到输入框的值，trim()去空格
> 2. 空的就不管
> 3. createElement创建一个li标签
> 4. 把文字放进去，appendChild加到列表
> 5. 清空输入框
>
> 这里有个细节：监听了keyup事件，判断是不是回车键，是的话模拟点击添加按钮。这样按回车也能添加，用户体验好很多。
>
> 这个例子把今天讲的DOM操作和事件都串起来了。大家回去可以自己跑一下，试着加个删除功能——点某条待办就删掉，提示：给每个li绑个click事件，然后remove()。

---

## 七、竞赛题 + 收尾（6分钟）

### PPT页面

```
竞赛高频题

题1：var + setTimeout
题2：typeof null 的陷阱
题3：事件循环执行顺序
题4：引用类型赋值
题5：隐式类型转换
```

### 说的话

> 最后来几道竞赛和面试里经常出现的题，大家可以当自我检测。

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

怎么改？把var换成let
```

### 说的话

> 第一题，这个前面其实已经讲过了。var只有函数作用域，三个setTimeout共享同一个i，等执行的时候i已经是3了。改成let就行，每次循环独立的i。
>
> 还有一种改法是用立即执行函数创建闭包：
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     (function(j) {
>         setTimeout(function() {
>             console.log(j);
>         }, 0);
>     })(i);
> }
> ```
>
> 每次循环把i传进一个立即执行的函数，j就是当前那次的值，不会被后面的循环覆盖。这个写法竞赛里也经常出现，理解原理比背答案重要。

---

### 题目2

### PPT页面

```
typeof null 返回什么？

答案："object"  （历史遗留bug）

typeof undefined → "undefined"
null == undefined   → true
null === undefined  → false

延伸：typeof typeof 1 → ?
答案："string"
```

### 说的话

> 第二题，typeof null返回"object"，不是"null"。这是JS的历史遗留bug，null明明不是对象，但typeof就是返回"object"。竞赛里经常考，记住就行。
>
> null和undefined的区别：null是你主动设的"空"，undefined是"还没赋值"。用==比较是true，===比较是false。
>
> 延伸一下：typeof typeof 1返回什么？typeof 1返回"number"（注意这是个字符串），typeof "number"返回"string"。typeof的返回值永远是字符串，这个也是常考的陷阱。

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

规则：同步 > 微任务 > 宏任务
```

### 说的话

> 第三题，这个在蓝桥杯和前端竞赛里出现率极高。
>
> 答案是1、4、3、2。setTimeout延迟是0，但它不是第二个执行的。
>
> JS是单线程的，代码分三类：同步代码、微任务、宏任务。执行顺序永远是：先跑完所有同步代码，然后清空微任务队列，最后执行宏任务。
>
> console.log是同步，先输出1和4。Promise.then是微任务，输出3。setTimeout是宏任务，最后输出2。延迟0毫秒只是说"尽快执行"，但再快也排在微任务后面。
>
> 记住这个顺序就行：同步 > 微任务 > 宏任务。

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

基本类型赋值 = 复制值
引用类型赋值 = 复制地址
```

### 说的话

> 第四题，答案是"小红"。a和b指向同一个对象，改了b就是改了a。
>
> 对象和数组是引用类型，赋值的时候复制的是地址，不是内容。基本类型（数字、字符串、布尔）赋值才是复制值。
>
> ```javascript
> const c = 10;
> let d = c;
> d = 20;
> console.log(c);  // 10，互不影响
> ```
>
> 这个知识点竞赛里经常出，记住：基本类型复制值，引用类型复制地址。

---

### 题目5

### PPT页面

```
[] == false 的结果？

答案：true

[] → "" → 0
false → 0
0 == 0 → true

相关：
"1" + 1  → "11"（+遇到字符串会拼接）
"1" - 1  → 0（-会把字符串转数字）
1 + 2 + "3" → "33"
```

### 说的话

> 第五题，空数组等于false，用==比较是true。因为空数组先转空字符串，空字符串转数字0，false也转0，0等于0。
>
> 这就是为什么不要用==——类型转换的规则太绕了，换成===直接就是false。
>
> 还有一组经典的隐式转换题：+遇到字符串会拼接，-会把字符串转数字。"1"+1是"11"，"1"-1是0。1+2+"3"先算1+2=3，再拼"3"，结果是"33"。这些竞赛里经常出选择判断题。

---

## 收尾

### PPT页面

```
今天聊了这些

var有坑，用let和const
==会类型转换，用===
函数三种写法，注意this指向
DOM操作：querySelector / textContent / classList
事件绑定：addEventListener

竞赛重点
var/let闭包题 | typeof陷阱 | 事件循环 | 引用类型 | 隐式转换

回去可以继续看
数组方法 map/filter/reduce
对象和JSON
Promise / async-await
localStorage / fetch
```

### 说的话

> 今天的内容就这些。总结一下：var有坑换let和const，==有坑换===，函数注意this指向，DOM操作用querySelector和classList，事件用addEventListener。
>
> 竞赛重点就是那五道题涉及的知识点：var/let闭包、typeof陷阱、事件循环、引用类型赋值、隐式类型转换。
>
> 回去之后建议大家把今天讲的代码自己敲一遍，光看真的学不会。有问题群里问就行。
>
> 谢谢大家。

---

## 时间把控

| 时间 | 到哪里 |
|------|--------|
| 4分钟 | 开场结束 |
| 12分钟 | var/let/const讲完 |
| 20分钟 | ==和===、条件循环过完 |
| 32分钟 | 函数讲完 |
| 46分钟 | DOM和事件讲完 |
| 54分钟 | 实战演示跑完 |
| 60分钟 | 竞赛题+收尾 |

---

适用对象：计算机系大二学生（有HTML/CSS/JS基础）
建议时长：60分钟
