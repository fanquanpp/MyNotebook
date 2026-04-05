# 04-典型项目实战 (JavaScript)

## 1. 项目需求
### 1.1 简易待办事项应用 (To-Do App)
- 功能: 添加任务、标记完成、删除任务。
- 技术栈: HTML5, CSS3, JavaScript (DOM API)。

## 2. 架构设计
### 2.1 模块划分
- **Model**: 管理任务列表和本地存储。
- **View**: 处理 UI 渲染。
- **Controller**: 处理用户输入。

## 3. 核心实现
### 3.1 To-Do App 核心逻辑
```javascript
class ToDoApp {
    constructor() {
        this.tasks = JSON.parse(localStorage.getItem('tasks')) || [];
        this.init();
    }
    addTask(text) {
        this.tasks.push({ text, completed: false });
        this.save();
    }
    toggleTask(index) {
        this.tasks[index].completed = !this.tasks[index].completed;
        this.save();
    }
    deleteTask(index) {
        this.tasks.splice(index, 1);
        this.save();
    }
    save() {
        localStorage.setItem('tasks', JSON.stringify(this.tasks));
    }
}
```

## 4. 部署与维护
### 4.1 本地部署
- 直接在浏览器中打开 HTML 文件。

### 4.2 持续集成
- 使用 `.github/workflows/verify.yml` 运行 `eslint` 校验。

## 5. 延伸阅读
- [Airbnb JavaScript Style Guide (Airbnb 风格指南)](https://github.com/airbnb/javascript)
- [TheAlgorithms/JavaScript (参考实现)](https://github.com/TheAlgorithms/JavaScript)

## 6. 更新日志
- **2026-04-05**: 初始化项目实战，涵盖简易待办事项应用的设计与核心实现。
