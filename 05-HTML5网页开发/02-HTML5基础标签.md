<a id="title"></a>
# HTML5 基础标签

> fanquanpp 的个人学习笔记

最新更新时间：2026-04-05

<a id="1"></a>
## 1 目录

- [1. 基础结构标签](#1-基础结构标签)
- [2. 文本标签](#2-文本标签)
- [3. 链接标签](#3-链接标签)
- [4. 媒体标签](#4-媒体标签)
- [5. 列表标签](#5-列表标签)
- [6. 表格标签](#6-表格标签)
- [7. 表单标签](#7-表单标签)
- [8. 语义化标签](#8-语义化标签)
- [9. 路径](#9-路径)
- [10. 常见问题与解决方案](#10-常见问题与解决方案)
- [11. 总结](#11-总结)

<a id="2"></a>
## 2 . 基础结构标签

<a id="2.1"></a>
### 2.1 文档类型声明

```html
<!DOCTYPE html>
```

<a id="2.2"></a>
### 2.2 HTML 基本骨架

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>标题</title>
    </head>
    <body>
        <!--网页内容-->
    </body>
</html>
```

**说明**：
- `<!DOCTYPE html>`：声明文档类型，告诉浏览器这是一个 HTML5 文档
- `<html>`：根标签，包含整个 HTML 文档
- `<head>`：头部标签，包含文档的元数据
- `<meta charset="utf-8">`：设置字符编码为 UTF-8
- `<title>`：设置页面标题
- `<body>`：主体标签，包含页面的主要内容

**HTML 基本骨架快捷键**：在大多数代码编辑器中，输入 `!` 然后按回车即可快速生成 HTML 基本骨架。

<a id="3"></a>
## 3 . 文本标签

<a id="3.1"></a>
### 3.1 注释

**语法**：`<!--注释内容-->`

**注释快捷键**：`Ctrl+/`（大多数编辑器）

**示例**：
```html
<!--这是一个注释-->
<p>这是一个段落</p><!--这也是一个注释-->
```

<a id="3.2"></a>
### 3.2 标题标签

**标签名称**：`h1`-`h6`

**显示特点**：
- 文字加粗，大小不同
- 字号逐渐减小
- 独占一行，自动换行

**示例**：
```html
<h1>一级标题</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题</h6>
```

<a id="3.3"></a>
### 3.3 段落标签

**标签名称**：`p`

**显示特点**：
- 独占一行，自动换行
- 段落之间有空行

**示例**：
```html
<p>这是第一个段落。</p>
<p>这是第二个段落。</p>
```

<a id="3.4"></a>
### 3.4 换行标签

**标签名称**：`br`

**显示特点**：
- 不占行，不换行
- 自动换行

**示例**：
```html
<p>这是第一行<br>这是第二行</p>
```

<a id="3.5"></a>
### 3.5 水平线标签

**标签名称**：`hr`

**显示特点**：
- 占一行，自动换行
- 显示为水平线

**示例**：
```html
<p>这是上方内容</p>
<hr>
<p>这是下方内容</p>
```

<a id="3.6"></a>
### 3.6 文本格式化标签

**标签名称**：`strong`（`b`）、`em`（`i`）、`del`（`s`）、`ins`（`u`）、`mark`、`small`、`sub`、`sup`

**显示特点**：
- `strong`：加粗
- `em`：斜体
- `del`：删除线
- `ins`：下划线
- `mark`：标记
- `small`：小号
- `sub`：下标
- `sup`：上标

**示例**：
```html
<strong>加粗</strong>
<em>斜体</em>
<del>删除线</del>
<ins>下划线</ins>
<mark>标记</mark>
<small>小号</small>
H<sub>2</sub>O
2<sup>3</sup>
```

<a id="4"></a>
## 4 . 链接标签

**标签名称**：`a`

**属性**：
- `href`：链接地址
- `target`：打开方式（`_blank`：新窗口，`_self`：当前窗口，`_parent`：父窗口，`_top`：最顶层窗口）
- `title`：鼠标悬停时的提示信息

**示例**：
```html
<!-- 默认：当前窗口打开 -->
<a href="http://www.baidu.com">百度</a>

<!-- 当前窗口打开，并显示提示信息 -->
<a href="http://www.baidu.com" title="百度">百度</a>

<!-- 新窗口打开 -->
<a href="http://www.baidu.com" target="_blank">百度</a>

<!-- 锚点链接 -->
<a href="#section1">跳转到第一节</a>

<!-- 邮件链接 -->
<a href="mailto:example@example.com">发送邮件</a>

<!-- 电话链接 -->
<a href="tel:1234567890">拨打电话</a>

<!-- 下载链接 -->
<a href="document.pdf" download>下载文档</a>
```

<a id="5"></a>
## 5 . 媒体标签

<a id="5.1"></a>
### 5.1 图片标签

**标签名称**：`img`

**属性**：
- `src`：图片地址
- `alt`：图片描述（当图片无法加载时显示）
- `title`：鼠标悬停时的提示信息
- `width`：图片宽度
- `height`：图片高度

**示例**：
```html
<!-- 默认 -->
<img src="图片地址" alt="图片描述" />

<!-- 鼠标悬停时显示提示信息 -->
<img src="图片地址" alt="图片描述" title="提示信息" />

<!-- 设置宽度和高度 -->
<img src="图片地址" alt="图片描述" width="200" height="150" />

<!-- 响应式图片 -->
<img src="图片地址" alt="图片描述" style="max-width: 100%; height: auto;" />
```

<a id="5.2"></a>
### 5.2 音频标签

**标签名称**：`audio`

**属性**：
- `src`：音频地址
- `autoplay`：自动播放
- `controls`：显示控制按钮
- `loop`：循环播放
- `muted`：静音
- `preload`：预加载

**示例**：
```html
<audio src="音频地址" autoplay controls loop muted preload>
  您的浏览器不支持音频标签
</audio>

<!-- 多个音频源 -->
<audio controls>
  <source src="audio.mp3" type="audio/mpeg">
  <source src="audio.ogg" type="audio/ogg">
  您的浏览器不支持音频标签
</audio>
```

**注意**：在 HTML5 中，如果属性名称与属性值相同，可以省略属性值的双引号。

**音频标签快捷键**：在大多数编辑器中，输入 `au` 然后按回车即可快速生成音频标签。

<a id="5.3"></a>
### 5.3 视频标签

**标签名称**：`video`

**属性**：
- `src`：视频地址
- `autoplay`：自动播放
- `controls`：显示控制按钮
- `loop`：循环播放
- `muted`：静音
- `preload`：预加载
- `width`：视频宽度
- `height`：视频高度

**示例**：
```html
<video src="视频地址" autoplay controls loop muted preload width="640" height="360">
  您的浏览器不支持视频标签
</video>

<!-- 多个视频源 -->
<video controls width="640" height="360">
  <source src="video.mp4" type="video/mp4">
  <source src="video.webm" type="video/webm">
  您的浏览器不支持视频标签
</video>
```

<a id="6"></a>
## 6 . 列表标签

<a id="6.1"></a>
### 6.1 无序列表

**标签名称**：`ul`（无序列表）、`li`（列表项）

**使用方法**：`ul` 嵌套 `li`

**示例**：
```html
<ul>
    <li>项目 1</li>
    <li>项目 2</li>
    <li>项目 3</li>
</ul>

<!-- 嵌套列表 -->
<ul>
    <li>项目 1
        <ul>
            <li>子项目 1</li>
            <li>子项目 2</li>
        </ul>
    </li>
    <li>项目 2</li>
</ul>
```

<a id="6.2"></a>
### 6.2 有序列表

**标签名称**：`ol`（有序列表）、`li`（列表项）

**使用方法**：`ol` 嵌套 `li`

**示例**：
```html
<ol>
    <li>步骤 1</li>
    <li>步骤 2</li>
    <li>步骤 3</li>
</ol>

<!-- 嵌套列表 -->
<ol>
    <li>步骤 1
        <ol>
            <li>子步骤 1</li>
            <li>子步骤 2</li>
        </ol>
    </li>
    <li>步骤 2</li>
</ol>
```

<a id="6.3"></a>
### 6.3 定义列表

**标签名称**：`dl`（定义列表）、`dt`（定义术语）、`dd`（定义描述）

**使用方法**：`dl` 嵌套 `dt` 和 `dd`

**示例**：
```html
<dl>
    <dt>HTML</dt>
    <dd>超文本标记语言</dd>
    <dt>CSS</dt>
    <dd>层叠样式表</dd>
    <dt>JavaScript</dt>
    <dd>脚本语言</dd>
</dl>
```

<a id="7"></a>
## 7 . 表格标签

<a id="7.1"></a>
### 7.1 基本标签

- `table`：表格
- `tr`：行
- `th`：表头单元格
- `td`：数据单元格
- `thead`：表头
- `tbody`：表体
- `tfoot`：表尾

<a id="7.2"></a>
### 7.2 表格结构

```html
<table border="1">
    <thead>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>张三</td>
            <td>男</td>
            <td>18</td>
        </tr>
        <tr>
            <td>李四</td>
            <td>女</td>
            <td>19</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="3">总计：2 人</td>
        </tr>
    </tfoot>
</table>
```

<a id="7.3"></a>
### 7.3 表格属性

- `border`：边框宽度
- `cellpadding`：单元格内边距
- `cellspacing`：单元格间距
- `width`：表格宽度
- `height`：表格高度
- `bgcolor`：表格背景颜色

<a id="7.4"></a>
### 7.4 合并单元格

- `colspan`：合并列
- `rowspan`：合并行

**示例**：
```html
<table border="1">
    <tr>
        <th rowspan="2">姓名</th>
        <th colspan="2">联系方式</th>
    </tr>
    <tr>
        <th>电话</th>
        <th>邮箱</th>
    </tr>
    <tr>
        <td>张三</td>
        <td>1234567890</td>
        <td>zhangsan@example.com</td>
    </tr>
</table>
```

<a id="8"></a>
## 8 . 表单标签

表单是用户与网页交互的重要方式，用于收集用户输入的信息。

<a id="8.1"></a>
### 8.1 表单基本结构

```html
<form action="提交地址" method="提交方式">
    <!-- 表单元素 -->
</form>
```

**属性**：
- `action`：表单提交的目标地址
- `method`：提交方式（`GET` 或 `POST`）
- `enctype`：表单数据的编码方式

<a id="8.2"></a>
### 8.2 常用表单元素

<a id="8.2.1"></a>
#### 8.2.1 文本输入框

```html
<input type="text" name="username" placeholder="请输入用户名" value="默认值">
```

<a id="8.2.2"></a>
#### 8.2.2 密码输入框

```html
<input type="password" name="password" placeholder="请输入密码">
```

<a id="8.2.3"></a>
#### 8.2.3 单选按钮

```html
<input type="radio" name="gender" value="male" checked> 男
<input type="radio" name="gender" value="female"> 女
```

<a id="8.2.4"></a>
#### 8.2.4 复选框

```html
<input type="checkbox" name="hobby" value="reading" checked> 阅读
<input type="checkbox" name="hobby" value="music"> 音乐
<input type="checkbox" name="hobby" value="sports"> 运动
```

<a id="8.2.5"></a>
#### 8.2.5 下拉菜单

```html
<select name="city">
    <option value="beijing" selected>北京</option>
    <option value="shanghai">上海</option>
    <option value="guangzhou">广州</option>
</select>
```

<a id="8.2.6"></a>
#### 8.2.6 文本域

```html
<textarea name="comment" rows="4" cols="50" placeholder="请输入评论">默认值</textarea>
```

<a id="8.2.7"></a>
#### 8.2.7 提交按钮

```html
<input type="submit" value="提交">
<button type="submit">提交</button>
```

<a id="8.2.8"></a>
#### 8.2.8 重置按钮

```html
<input type="reset" value="重置">
<button type="reset">重置</button>
```

<a id="8.2.9"></a>
#### 8.2.9 按钮

```html
<button type="button">普通按钮</button>
```

<a id="8.3"></a>
### 8.3 HTML5 新表单元素

<a id="8.3.1"></a>
#### 8.3.1 邮箱输入框

```html
<input type="email" name="email" placeholder="请输入邮箱">
```

<a id="8.3.2"></a>
#### 8.3.2 URL 输入框

```html
<input type="url" name="website" placeholder="请输入网址">
```

<a id="8.3.3"></a>
#### 8.3.3 数字输入框

```html
<input type="number" name="age" min="0" max="100" step="1" value="18">
```

<a id="8.3.4"></a>
#### 8.3.4 日期输入框

```html
<input type="date" name="birthday">
```

<a id="8.3.5"></a>
#### 8.3.5 颜色选择器

```html
<input type="color" name="color" value="#ff0000">
```

<a id="9"></a>
## 9 . 语义化标签

HTML5 引入了一系列语义化标签，使网页结构更加清晰，有利于搜索引擎优化和无障碍访问。

<a id="9.1"></a>
### 9.1 常用语义化标签

| 标签 | 描述 |
| :--- | :--- |
| `<header>` | 页面或区块的头部 |
| `<nav>` | 导航链接区域 |
| `<main>` | 页面的主要内容 |
| `<section>` | 文档中的区块 |
| `<article>` | 独立的内容区块 |
| `<aside>` | 侧边栏或附加内容 |
| `<footer>` | 页面或区块的底部 |
| `<figure>` | 图表、图片等媒体内容 |
| `<figcaption>` | 媒体内容的标题 |
| `<time>` | 日期或时间 |
| `<mark>` | 标记的文本 |
| `<progress>` | 进度条 |
| `<meter>` | 度量衡 |

<a id="9.2"></a>
### 9.2 语义化布局示例

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>语义化布局示例</title>
</head>
<body>
    <header>
        <h1>网站标题</h1>
        <nav>
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">联系我们</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>新闻资讯</h2>
            <article>
                <h3>新闻标题 1</h3>
                <p>新闻内容 1...</p>
            </article>
            <article>
                <h3>新闻标题 2</h3>
                <p>新闻内容 2...</p>
            </article>
        </section>
        <aside>
            <h3>侧边栏</h3>
            <p>侧边栏内容...</p>
        </aside>
    </main>
    <footer>
        <p>版权信息</p>
    </footer>
</body>
</html>
```

<a id="10"></a>
## 10 . 路径

<a id="10.1"></a>
### 10.1 路径符号含义

- `/`：表示根目录，表示进入某个文件夹
- `.`：表示当前目录
- `..`：表示上一级目录
- `*`：表示任意字符
- `?`：表示任意字符（除了 /）
- `[abc]`：表示任意字符，其中 a、b、c 表示任意字符
- `[^abc]`：表示任意字符，其中 a、b、c 表示任意字符，但排除 a、b、c

<a id="10.2"></a>
### 10.2 分类

1. **绝对路径**：绝对路径是指从根目录（盘符）开始，直到文件或目录的完整路径。
2. **相对路径**：相对路径是指从当前目录开始，直到文件或目录的完整路径。

<a id="10.3"></a>
### 10.3 示例

**绝对路径**：
- `D:/website/images/logo.png`
- `https://www.example.com/images/logo.png`

**相对路径**：
- `images/logo.png`（当前目录下的 images 文件夹）
- `../images/logo.png`（上一级目录下的 images 文件夹）
- `../../images/logo.png`（上两级目录下的 images 文件夹）

<a id="11"></a>
## 11 . 常见问题与解决方案

<a id="11.1"></a>
### 11.1 标签嵌套问题

**问题描述**：标签嵌套不正确，导致页面显示异常。

**原因分析**：HTML 标签必须正确嵌套，不能交叉嵌套。

**解决方案**：
- 确保标签正确嵌套，如 `<p><strong>文本</strong></p>`
- 使用代码编辑器的自动缩进功能检查嵌套结构
- 使用在线 HTML 验证工具检查代码

<a id="11.2"></a>
### 11.2 路径引用问题

**问题描述**：图片、CSS 等资源无法加载。

**原因分析**：路径引用错误，导致浏览器无法找到资源文件。

**解决方案**：
- 检查相对路径是否正确
- 使用绝对路径时确保路径完整
- 确认资源文件确实存在于指定位置

<a id="11.3"></a>
### 11.3 表单提交问题

**问题描述**：表单提交后没有反应或提交到错误地址。

**原因分析**：表单的 action 属性或 method 属性设置错误。

**解决方案**：
- 确保 action 属性指向正确的服务器地址
- 选择合适的 method 属性（GET 或 POST）
- 检查表单元素的 name 属性是否正确设置

<a id="11.4"></a>
### 11.4 语义化标签兼容性问题

**问题描述**：语义化标签在旧浏览器中显示异常。

**原因分析**：旧版本浏览器不支持 HTML5 语义化标签。

**解决方案**：
- 在 CSS 中为语义化标签添加 `display: block;`
- 使用 HTML5 Shiv 库兼容旧浏览器
- 优先使用语义化标签，同时保留兼容性考虑

<a id="12"></a>
## 12 . 总结

HTML5 的基础标签是构建网页结构的核心，掌握这些标签的使用方法是学习 HTML5 的基础。

- **基础结构标签**：构建 HTML 文档的基本框架
- **文本标签**：用于展示和格式化文本内容
- **链接标签**：用于创建链接，实现页面跳转
- **媒体标签**：用于嵌入图片、音频和视频
- **列表标签**：用于展示列表数据
- **表格标签**：用于展示表格数据
- **表单标签**：用于收集用户输入
- **语义化标签**：用于构建语义清晰的页面结构
- **路径**：用于引用外部资源

通过熟练掌握这些基础标签，可以创建出结构清晰、功能完整的网页。同时，结合 CSS 和 JavaScript，可以实现更加丰富和交互性强的网页效果。