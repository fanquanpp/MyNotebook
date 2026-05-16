# JavaScript前端分享 - 教学策划案

## 📋 整体时间分配（60分钟）

| 环节 | 内容 | 时间 | 备注 |
|------|------|------|------|
| 开场 | 前端三件套概述 + JS定位 | 5分钟 | 承上启下 |
| 回顾 | 大家已经学过的JS基础 | 8分钟 | 快速过，重点讲升级 |
| 进阶 | 变量、数据类型、运算符 | 10分钟 | 从var到let/const |
| 核心 | 条件判断 + 循环语句 | 10分钟 | 编程逻辑基础 |
| 重点 | 函数基础 | 12分钟 | 重中之重，多讲 |
| 实战 | DOM操作 + 事件处理 | 12分钟 | 实际应用，代码演示 |
| 结尾 | 总结 + 理论题 + 互动 | 3分钟 | 收尾 |

---

## 🎯 第一部分：开场 - 前端三件套（5分钟）

### PPT内容要点

```
【页面标题】
前端三件套：HTML + CSS + JavaScript

【内容】
🥪 HTML = 结构层（骨骼）
   → 写页面有什么内容：标题、段落、图片、按钮

🎨 CSS = 表现层（皮肤）
   → 写页面长什么样：颜色、布局、动画

⚡ JavaScript = 行为层（灵魂）
   → 写页面会做什么：点击响应、数据处理、动态更新
```

### 演讲稿（汇报人说）

> 大家好！今天我们来聊聊前端开发最核心的东西——前端三件套：HTML、CSS、JavaScript。
>
> 打个比方，做网页就像搭积木：
> - HTML是积木块，决定页面有什么内容
> - CSS是积木的颜色和外观，让它更好看
> - JavaScript是让积木动起来的马达，让页面"活"起来
>
> 大家现在学的document.write、getElementById这些，其实就是JS在操作HTML页面的方式。咱们今天会先回顾一下这些基础，然后给大家补充一些学校可能没讲、但以后开发超级常用的东西。

---

## 🔄 第二部分：JS基础回顾（8分钟）

### PPT内容要点

```
【页面标题】
这些你已经会了！

【代码示例】
// 1. 基本输出
document.write("Hello World!");
document.getElementById("demo").innerHTML = "新内容";

// 2. 变量声明
var name = "小明";
var age = 20;

// 3. 数据类型（简单提一下）
String, Number, Boolean, undefined
```

### 演讲稿（汇报人说）

> 好，先快速过一遍大家已经学过的内容，确保基础扎实。
>
> 我们写JS，首先得知道怎么输出东西到页面上对吧？最基础的两个方法：
>
> **第一个是 `document.write()`** —— 这个直接在页面上写字，简单粗暴。
>
> ```javascript
> document.write("Hello World!");
> ```
>
> 刷新页面就会显示这行字。但这个方法有个问题，它会覆盖整个页面！所以一般只在测试的时候用。
>
> **第二个是 `getElementById()`** —— 这个是DOM操作的核心，先记着，后面会重点讲。
>
> ```javascript
> document.getElementById("demo").innerHTML = "新内容";
> ```
>
> 这里有几个点：
> - `getElementById` 获取页面上 id="demo" 的元素
> - `.innerHTML` 是设置这个元素里面的HTML内容
>
> **然后是变量** —— 用 `var` 声明变量
>
> ```javascript
> var name = "小明";  // 字符串
> var age = 20;       // 数字
> ```
>
> JavaScript里面变量可以存各种类型，这个比C语言那种强类型语言灵活多了。

---

## ⚡ 第三部分：变量和数据类型进阶（10分钟）

### PPT内容要点

```
【页面标题】
告别var，拥抱let和const！

【代码对比】
// ❌ 老方式（var）
var name = "test";
var name = "test2";  // 可以重复声明，后面的会覆盖前面的
// 作用域混乱，循环里的变量会泄露

// ✅ 新方式（ES6+）
let name = "test";
// let name = "test2";  // 报错！不能重复声明

const PI = 3.14159;
const MAX_COUNT = 100;
// MAX_COUNT = 200;  // 报错！常量不能改

【补充内容】
let 和 const 的区别：
- let: 变量，可以修改
- const: 常量，声明时必须赋值，之后不能改
```

### 演讲稿（汇报人说）

> 好，接下来是关键部分了。很多人学校还在教var，但实际上现在企业开发基本不用var了。为什么呢？
>
> **var的问题一：可以重复声明**
>
> ```javascript
> var name = "小明";
> var name = "小红";  // 不报错，但后面把前面覆盖了
> console.log(name);  // 输出：小红
> ```
>
> 这种情况很容易搞混，不知道name到底是谁。
>
> **var的问题二：作用域混乱**
>
> ```javascript
> for (var i = 0; i < 3; i++) {
>     console.log(i);
> }
> console.log("循环外面：" + i);  // 输出：3 ？？？
> ```
>
> 在C语言里，i出了循环就没了，但var会"泄露"出来，这就很坑。
>
> **解决方案：用 `let` 和 `const`**
>
> ```javascript
> let score = 90;  // 分数会变，用let
> score = 95;      // 可以修改

> const SCHOOL = "某大学";  // 学校名不会变，用const
> // SCHOOL = "另一所";  // 报错！
> ```
>
> **记忆技巧**：变量用 `let`，除非你确定这个值永远不变就用 `const`。
>
> 实际上，**以后写代码 90% 的情况都用 const**，因为很多变量声明完就不会再改了。用const有两个好处：
> 1. 代码更安全，不会被意外修改
> 2. 语义更清晰，一看就知道这个值不会变

### PPT内容要点（数据类型）

```
【页面标题】
JS数据类型一览

【基础类型】
字符串 String  → "hello" / 'world'
数字 Number    → 18, 3.14, -5
布尔 Boolean   → true / false
空值 null      → 明确表示"没有值"
未定义 undefined → "还没赋值"

【复杂类型】
数组 Array     → [1, 2, 3, "四"]
对象 Object    → {name: "小明", age: 20}

【小技巧】
// 判断数据类型用 typeof
typeof "hello"    // "string"
typeof 123        // "number"
typeof true       // "boolean"
```

### 演讲稿（汇报人说）

> 接下来聊聊数据类型，这个很重要，以后写代码经常要判断数据是什么类型。
>
> **基础类型**有这几种：
>
> - **字符串 String**：用引号包起来的，""或''都行
> - **数字 Number**：整数小数都行，1、3.14、-100
> - **布尔 Boolean**：就两个值，true（真）和false（假）
> - **空值 null**：表示"有，但是空的"
> - **undefined**：表示"还没定义"
>
> **有个很有用的工具叫 `typeof`**，可以查看数据的类型：
>
> ```javascript
> typeof "hello"   // "string"
> typeof 123        // "number"
> typeof true       // "boolean"
> ```
>
> 这个在调试代码的时候特别有用，有时候你不知道一个变量是什么类型，就可以用它来检查。

---

## 🔀 第四部分：运算符和表达式（5分钟）

### PPT内容要点

```
【页面标题】
运算符速查

【算术运算符】
+ - * / %（取余）
a++  ++a  // 自增
a--  --a  // 自减

【比较运算符】返回布尔值
==  ===   // 相等（===更严格，不做类型转换）
!=  !==   // 不等于

【逻辑运算符】
&&  // 且（两个都true才是true）
||  // 或（有一个true就是true）
!   // 非（取反）

【重要区别】
console.log(3 == "3");    // true（会自动转换类型）
console.log(3 === "3");   // false（不转换类型，更安全）
```

### 演讲稿（汇报人说）

> 运算符这块大家应该都有基础，快速过一下重点。
>
> **最重要的提醒：`==` 和 `===` 的区别**
>
> ```javascript
> console.log(3 == "3");   // true
> console.log(3 === "3");  // false
> ```
>
> `==` 会自动转换类型再比较，"3"会变成数字3，所以相等。
> `===` 更严格，类型不同就是不同，不转换。
>
> **实战建议**：以后写代码统一用 `===` 和 `!==`，别用 `==` 和 `!=`。为什么？因为自动类型转换有时候会搞出奇怪的结果：
>
> ```javascript
> console.log("" == false);  // true
> console.log(0 == false);    // true
> ```
>
> 空字符串和0都等于false，这很明显不是我们想要的。

---

## 🔁 第五部分：条件判断和循环（10分钟）

### PPT内容要点

```
【页面标题】
让代码做选择：条件判断

【if语句】
let score = 85;

if (score >= 90) {
    console.log("优秀");
} else if (score >= 60) {
    console.log("及格");
} else {
    console.log("不及格");
}

// 三元运算符（简洁版）
let result = score >= 60 ? "及格" : "不及格";

【switch语句】
let day = 1;

switch (day) {
    case 1:
        console.log("周一");
        break;
    case 2:
        console.log("周二");
        break;
    default:
        console.log("其他");
}
```

### 演讲稿（汇报人说）

> 条件判断就是让程序做选择，跟我们日常做决定一样。
>
> **if-else 基础结构：**
>
> ```javascript
> let score = 85;
>
> if (score >= 90) {
>     console.log("学霸！");
> } else if (score >= 60) {
>     console.log("稳了");
> } else {
>     console.log("得加油了");
> }
> ```
>
> **有个实用的简写：三元运算符**
>
> 就是问号和冒号配合使用，格式是：
> `条件 ? 值1 : 值2`
>
> 如果条件成立，取值1，否则取值2
>
> ```javascript
> let result = score >= 60 ? "及格" : "挂科";
> ```
>
> 这个适合简单的二选一情况，代码更简洁。
>
> **switch 用在多条件判断**
>
> 当你判断的东西可能有很多种值的时候，用switch更清晰：
>
> ```javascript
> let level = "gold";
>
> switch (level) {
>     case "bronze":
>         console.log("青铜");
>         break;
>     case "silver":
>         console.log("白银");
>         break;
>     case "gold":
>         console.log("黄金");
>         break;
>     default:
>         console.log("未知段位");
> }
> ```

### PPT内容要点

```
【页面标题】
让代码重复做：循环语句

【for循环 - 知道次数用这个】
for (let i = 0; i < 5; i++) {
    console.log("第" + i + "次");
}
// 输出：第0次、第1次、第2次、第3次、第4次

【while循环 - 不知道次数用这个】
let count = 0;
while (count < 3) {
    console.log(count);
    count++;
}

【循环控制】
break;    // 跳出整个循环
continue; // 跳过当前这次，继续下一次

【实战例子：遍历数组】
let fruits = ["苹果", "香蕉", "橙子"];
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```

### 演讲稿（汇报人说）

> 循环就是让代码重复执行，是编程里用得最多的语法之一。
>
> **两种主要循环：**
>
> **for循环**：适合知道要循环多少次的情况
>
> ```javascript
> for (let i = 0; i < 5; i++) {
>     console.log("第" + i + "次");
> }
> ```
>
> 结构是：起始值; 继续条件; 每次做什么
> 这里的 i++ 相当于 i = i + 1
>
> **while循环**：适合不知道要循环多少次的情况
>
> ```javascript
> let count = 0;
> while (count < 3) {
>     console.log(count);
>     count++;
> }
> ```
>
> while后面跟的是继续条件，条件成立就一直循环。
>
> **两个重要的控制关键字：**
>
> - `break` — 直接跳出整个循环，后面不执行了
> - `continue` — 跳过当前这一次，继续下一次
>
> ```javascript
> for (let i = 0; i < 5; i++) {
>     if (i === 2) {
>         continue;  // 跳过i等于2的情况
>     }
>     if (i === 4) {
>         break;     // 到4就停止
>     }
>     console.log(i);
> }
> // 输出：0, 1, 3
> ```

---

## 📦 第六部分：函数基础（12分钟）⭐重点

### PPT内容要点

```
【页面标题】
函数：代码的包装袋

【为什么用函数？】
❌ 不用函数：重复写很多遍相同的代码
✅ 用函数：一处定义，到处调用

【函数声明】
// 方式1：function关键字
function sayHello(name) {
    return "你好，" + name;
}

// 方式2：函数表达式
const greet = function(name) {
    return "Hello, " + name;
};

// 方式3：箭头函数（ES6+，最常用）
const add = (a, b) => a + b;
```

### 演讲稿（汇报人说）

> 函数是JavaScript最重要的概念之一，也是今天讲课的重中之重，大家认真听。
>
> **为什么要用函数？**
>
> 简单说就是：**代码复用**。一段代码写一次，可以调用很多次。
>
> 比如计算两个数的和，不用函数的话：
>
> ```javascript
> console.log(1 + 2);
> console.log(5 + 8);
> console.log(100 + 200);
> ```
>
> 每次都要写加法。如果改成函数：
>
> ```javascript
> function add(a, b) {
>     return a + b;
> }
>
> console.log(add(1, 2));
> console.log(add(5, 8));
> console.log(add(100, 200));
> ```
>
> 清晰多了吧？
>
> **函数的组成：**
>
> - `function` — 声明关键字
> - `add` — 函数名字
> - `(a, b)` — 参数，函数需要的输入
> - `return` — 返回值，函数计算完输出的结果

### PPT内容要点

```
【页面标题】
函数的三种写法

【普通函数】
function add(a, b) {
    return a + b;
}

// 调用
add(1, 2);  // 返回 3

【函数表达式】
const multiply = function(a, b) {
    return a * b;
};

// 调用
multiply(3, 4);  // 返回 12

【箭头函数 - 简写（ES6+）】
// 完整版
const divide = (a, b) => {
    return a / b;
};

// 省略版（只有一行return）
const divide = (a, b) => a / b;

// 只有一个参数可以省略括号
const double = x => x * 2;
```

### 演讲稿（汇报人说）

> **函数的几种写法：**
>
> **第一种：普通函数声明**
>
> ```javascript
> function add(a, b) {
>     return a + b;
> }
> ```
>
> 这个大家应该见过，`function`关键字打头。
>
> **第二种：函数表达式**
>
> ```javascript
> const multiply = function(a, b) {
>     return a * b;
> };
> ```
>
> 把函数赋值给一个变量。这种写法很常见，特别是在需要把函数作为参数传递的时候。
>
> **第三种：箭头函数（ES6+）— 重点！**
>
> 这是现在开发用得最多的写法，更简洁：
>
> ```javascript
> const add = (a, b) => a + b;
> ```
>
> 等价于：
>
> ```javascript
> function add(a, b) {
>     return a + b;
> }
> ```
>
> 如果函数体只有一行return，可以直接省略大括号和return。
>
> 只有一个参数的话，连括号都可以省：
>
> ```javascript
> const double = x => x * 2;
> ```
>
> **箭头函数的优点：**
> 1. 代码更短
> 2. 语法更现代
> 3. this指向更直观（这个以后会学到）
>
> **实战建议**：以后写函数，优先用箭头函数。

### PPT内容要点

```
【页面标题】
函数参数默认值 + arguments

【参数默认值】
function greet(name = "同学") {
    return "你好，" + name;
}

greet();           // "你好，同学"
greet("小明");     // "你好，小明"

// 箭头函数版本
const greet = (name = "同学") => "你好，" + name;

【arguments对象（了解）】
function sum() {
    console.log(arguments);  // 伪数组，存所有传进来的参数
}

sum(1, 2, 3, 4, 5);  // [1, 2, 3, 4, 5]
```

### 演讲稿（汇报人说）

> **两个实用技巧：**
>
> **1. 参数默认值**
>
> 写函数时，可以给参数一个默认值：
>
> ```javascript
> function greet(name = "同学") {
>     return "你好，" + name;
> }
>
> greet();          // 输出：你好，同学（用默认值）
> greet("小明");    // 输出：你好，小明（用自己的值）
> ```
>
> 这样调用的时候如果不传参数，就用默认值，不会出现undefined。
>
> **2. 箭头函数的参数默认值**
>
> ```javascript
> const greet = (name = "同学") => "你好，" + name;
> ```
>
> 一样的语法，直接在参数后面写 `= 默认值`。

---

## 🎯 第七部分：DOM操作和事件处理（12分钟）⭐核心

### PPT内容要点

```
【页面标题】
DOM：JS操作页面的桥梁

【什么是DOM？】
DOM = Document Object Model（文档对象模型）
浏览器把HTML页面转换成一个"对象树"
JS通过这个树来操作页面元素

【DOM树示意】
document
  └── html
       ├── head
       │    └── title
       └── body
            ├── h1 (标题)
            ├── p  (段落)
            └── button (按钮)
```

### 演讲稿（汇报人说）

> 接下来是今天的另一个重点：**DOM操作**。
>
> **DOM是什么？**
>
> 浏览器加载HTML页面后，会把页面转换成一棵树的结构，这个叫DOM树。每个HTML标签都是树上的一个节点。
>
> JS通过 `document` 对象可以访问这棵树，找到任意元素，然后修改它。这就是为什么我们之前一直在用 `document.getElementById()`。

### PPT内容要点

```
【页面标题】
获取元素的几种方式

【getElementById - 最常用】
const title = document.getElementById("title");
const box = document.getElementById("content");

【querySelector - 更灵活】
const firstBtn = document.querySelector(".btn");        // class用点
const link = document.querySelector("a");               // 标签名直接写
const special = document.querySelector("#main .card");  // 组合选择器

【querySelectorAll - 获取多个】
const allCards = document.querySelectorAll(".card");
const allLis = document.querySelectorAll("ul li");

// querySelectorAll返回数组，可以遍历
allCards.forEach(card => {
    console.log(card.innerHTML);
});
```

### 演讲稿（汇报人说）

> **获取元素的几种方式：**
>
> **getElementById** — 按ID找，最快最常用
>
> ```javascript
> const title = document.getElementById("title");
> ```
>
> 学校的课应该都讲过这个，就是通过元素的id属性来找到它。
>
> **querySelector** — 更灵活，用CSS选择器的语法
>
> ```javascript
> const btn = document.querySelector(".btn");      // 找class="btn"的
> const link = document.querySelector("a");       // 找第一个<a>标签
> const box = document.querySelector("#main");    // 找id="main"的
> ```
>
> 这个比getElementById灵活，因为CSS选择器语法大家都知道，而且可以组合使用。
>
> **querySelectorAll** — 获取所有匹配的，返回数组
>
> ```javascript
> const allCards = document.querySelectorAll(".card");
> allCards.forEach(card => {
>     console.log(card);
> });
> ```
>
> 返回的是一个数组（准确说是NodeList），可以用forEach遍历。

### PPT内容要点

```
【页面标题】
修改元素内容

【innerHTML vs textContent】
<div id="box">
    <p>原来的内容</p>
</div>

const box = document.getElementById("box");

box.innerHTML = "<p>新内容<b>加粗</b></p>";
// innerHTML: 解析HTML标签

box.textContent = "<p>新内容</p>";
// textContent: 纯文本，不解析HTML

【属性操作】
// 读取
console.log(btn.id);
console.log(btn.className);

// 修改
img.src = "new-image.jpg";
link.href = "https://example.com";
input.placeholder = "请输入...";

// class操作（常用）
div.classList.add("active");
div.classList.remove("hidden");
div.classList.toggle("show");
```

### 演讲稿（汇报人说）

> **获取到元素之后，怎么修改它的内容？**
>
> **innerHTML vs textContent：**
>
> ```javascript
> const box = document.getElementById("box");
>
> // innerHTML：会解析HTML标签
> box.innerHTML = "<p>新内容<b>加粗</b></p>";
>
> // textContent：纯文本，不解析HTML
> box.textContent = "<p>纯文本</p>";  // 显示出来就是这串字符
> ```
>
> 简单记忆：**要显示HTML标签用innerHTML，纯文本用textContent**（更安全，防止XSS攻击）。
>
> **属性操作也很常用：**
>
> ```javascript
> const img = document.querySelector("img");
> img.src = "timg.jpg";  // 改图片

> const input = document.querySelector("input");
> input.placeholder = "搜索...";  // 改提示文字

> // class操作 - 最常用！
> const modal = document.querySelector(".modal");
> modal.classList.add("show");      // 添加class
> modal.classList.remove("hidden"); // 移除class
> modal.classList.toggle("active");  // 切换class（有就删，没有就加）
> ```
>
> classList是现代开发中最常用的操作方式，比直接操作className字符串方便多了。

### PPT内容要点

```
【页面标题】
事件监听：让页面"活"起来

【什么是事件？】
用户的操作就是事件：
click（点击）、mouseover（鼠标悬停）、keyup（按键松开）
submit（表单提交）、load（加载完成）...

【绑定事件的两种方式】
// 方式1：onclick属性（学校教的）
<button onclick="alert('点我了')">点我</button>
btn.onclick = function() { ... }

// 方式2：addEventListener（推荐！）
btn.addEventListener("click", function() {
    console.log("被点了");
});

// 箭头函数版本
btn.addEventListener("click", () => {
    console.log("被点了");
});
```

### 演讲稿（汇报人说）

> **事件处理才是让页面动起来的关键！**
>
> 什么是事件？就是用户的操作：点击、鼠标移上去、按键盘、表单提交...
>
> **绑定事件的两种方式：**
>
> **方式1：onclick属性（学校教的）**
>
> ```html
> <button onclick="alert('点我了')">点我</button>
> ```
>
> 或者JS里写：
> ```javascript
> btn.onclick = function() {
>     alert("被点了");
> };
> ```
>
> **方式2：addEventListener（推荐！）**
>
> ```javascript
> btn.addEventListener("click", function() {
>     console.log("被点了");
> });
> ```
>
> **为什么推荐addEventListener？**
>
> 1. 可以绑定多个处理函数，onclick只能绑定一个
> 2. 语法更清晰
> 3. 可以解绑事件（removeEventListener）
>
> **事件处理函数里用this：**
>
> ```javascript
> btn.addEventListener("click", function() {
>     console.log(this.innerHTML);  // this就是btn元素
> });
> ```
>
> 这个this在事件处理里指的就是触发事件的元素本身。

### PPT内容要点

```
【页面标题】
实战：完整的点击事件例子

【HTML部分】
<button id="btn">点我试试</button>
<p id="output"></p>

【JS部分】
const btn = document.getElementById("btn");
const output = document.getElementById("output");
let count = 0;

btn.addEventListener("click", () => {
    count++;
    output.textContent = "点击了 " + count + " 次";
});

【效果】
第一次点击：输出：点击了 1 次
第二次点击：输出：点击了 2 次
...每次点都+1
```

### 演讲稿（汇报人说）

> 来个完整的例子，大家感受一下：
>
> 页面有个按钮，每次点击，计数器就+1。
>
> **分析：**
>
> 1. 先获取按钮和显示文字的元素
> 2. 准备一个计数器变量
> 3. 给按钮绑定点击事件
> 4. 事件触发时，计数器+1，然后更新显示
>
> ```javascript
> const btn = document.getElementById("btn");
> const output = document.getElementById("output");
> let count = 0;
>
> btn.addEventListener("click", () => {
>     count++;
>     output.textContent = "点击了 " + count + " 次";
> });
> ```
>
> 这个就是网页上常见交互的原型——点击按钮 → 触发JS → 更新页面。

---

## 💻 第八部分：实战演示代码（5分钟）

### 演示1：简单的待办事项

```
【代码】
<!DOCTYPE html>
<html>
<head>
    <title>简易待办事项</title>
</head>
<body>
    <h1>我的待办</h1>
    <input type="text" id="todoInput" placeholder="输入待办事项">
    <button id="addBtn">添加</button>
    <ul id="todoList"></ul>

    <script>
        const input = document.getElementById("todoInput");
        const addBtn = document.getElementById("addBtn");
        const list = document.getElementById("todoList");

        addBtn.addEventListener("click", () => {
            const text = input.value.trim();
            if (text === "") {
                alert("输入不能为空！");
                return;
            }

            const li = document.createElement("li");
            li.textContent = text;
            list.appendChild(li);
            input.value = "";
        });

        // 回车也能添加
        input.addEventListener("keyup", (e) => {
            if (e.key === "Enter") {
                addBtn.click();
            }
        });
    </script>
</body>
</html>
```

### 演讲稿（汇报人说）

> 这是个完整的实战例子，做一个简易的待办事项列表。
>
> **核心逻辑：**
>
> 1. 用户在输入框打字
> 2. 点添加按钮（或按回车）
> 3. 创建一个新的 `<li>` 标签
> 4. 把输入的文字放进去
> 5. 把这个 `<li>` 添加到列表里
>
> **涉及到的知识点：**
>
> - `document.createElement("li")` — 创建新元素
> - `list.appendChild(li)` — 把新元素加到父级
> - `input.value` — 获取输入框的值
> - `trim()` — 去除空格
> - `keyup` 事件 — 监听键盘
>
> 这个例子包含了今天讲的很多内容，大家可以自己试试。

---

## 📝 第九部分：理论题和练习（3分钟）

### PPT内容要点

```
【页面标题】
小测验 & 练习题

【问答题】
1. let和const的区别是什么？什么时候用哪个？
2. getElementById和querySelector有什么区别？
3. 写一个函数，计算两个数的和并返回结果。

【实践题】
实现一个简单的功能：
- 页面上有一个输入框和一个按钮
- 点击按钮，把输入框的内容显示在页面上
- （提示：用input.value获取输入，用innerHTML或textContent显示）

【参考答案】
// 问答题1答案
let name = "新名字";   // 可以重新赋值
const PI = 3.14;       // 不能改

// 问答题2答案
getElementById("id")      // 只按ID查找，最快
querySelector(".class")   // CSS选择器，更灵活

// 问答题3答案
const add = (a, b) => a + b;

// 实践题答案
const btn = document.getElementById("btn");
const input = document.getElementById("input");
const display = document.getElementById("display");

btn.addEventListener("click", () => {
    display.textContent = input.value;
});
```

---

## 🎬 结尾：总结

### PPT内容要点

```
【页面标题】
今天学了什么？

✅ let / const 替代 var
✅ 数据类型和 typeof
✅ 条件判断 if/switch + 三元运算符
✅ 循环 for / while
✅ 函数 function / 箭头函数
✅ DOM操作 getElementById / querySelector
✅ 事件监听 addEventListener

【继续学习建议】
📚 数组常用方法：map, filter, reduce
📚 对象和JSON
📚 异步编程：Promise, async/await
📚 浏览器API：localStorage, fetch
📚 框架：Vue, React（以后会讲到）
```

### 演讲稿（汇报人说）

> 好了，今天的内容差不多就这些。
>
> 我们快速回顾一下：
>
> - 变量从var升级到let和const
> - 学会了条件判断和循环
> - 重点掌握了函数的三种写法，特别是箭头函数
> - 搞懂了DOM操作和事件监听
>
> **继续学习的方向：**
>
> 如果想深入，可以学：
> - 数组的高阶方法：map、filter、reduce
> - 对象和JSON数据处理
> - Promise和async/await（异步编程）
> - localStorage本地存储
> - 然后就是Vue、React这些框架了
>
> **最后一句话：**
>
> 学编程最重要的就是多敲代码。看十遍不如敲一遍，建议大家回去把这个PPT里的代码都自己打一遍，有问题随时问！
>
> 谢谢大家！

---

## 📎 附录：常用代码速查表

```
【变量声明】
let x = 10;
const PI = 3.14;

【数据类型】
typeof "str"   // "string"
typeof 123      // "number"
typeof true     // "boolean"

【条件判断】
if (x > 0) { ... }
else if (x === 0) { ... }
else { ... }

x > 0 ? "正数" : "非正数"  // 三元运算符

【循环】
for (let i = 0; i < 5; i++) { ... }
while (condition) { ... }

【函数】
function add(a, b) { return a + b; }
const add = (a, b) => a + b;

【DOM操作】
document.getElementById("id")
document.querySelector(".class")
element.innerHTML = "..."
element.textContent = "..."
element.classList.add("class")

【事件】
element.addEventListener("click", () => { ... })
```

---

## ⏱️ 讲完整PPT的时间把控建议

| 时间节点 | 应该讲到哪里 |
|---------|------------|
| 10分钟 | 讲完变量和数据类型 |
| 20分钟 | 讲完条件判断和循环 |
| 35分钟 | 讲完函数 |
| 50分钟 | 讲完DOM和事件 |
| 55分钟 | 开始实战演示 |
| 58分钟 | 开始总结 |
| 60分钟 | 结束 |

---

*策划案完成时间：2024年*
*适用对象：计算机系大二学生*
*建议时长：60分钟*
