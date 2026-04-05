# HTML5 离线存储与 Web API (Storage & Web APIs)

> @Author: Anonymous
> @Category: HTML5 Basics
> @Description: Web Storage、Geolocation、Web Worker 及 Fetch API。 | Web Storage, Geolocation, Workers, and Fetch.

## 1. Web 存储 (Web Storage)
相比 Cookie 具有更大的容量 (5MB+)。
### 1.1 LocalStorage
- **特点**: 数据永久存储，除非手动清除。
- **操作**:
  ```javascript
  localStorage.setItem("name", "Alice");
  const name = localStorage.getItem("name");
  localStorage.removeItem("name");
  ```

### 1.2 SessionStorage
- **特点**: 数据仅在当前会话 (标签页) 有效，关闭标签页即失效。

## 2. 地理定位 (Geolocation API)
```javascript
navigator.geolocation.getCurrentPosition((position) => {
  console.log("Latitude: " + position.coords.latitude);
  console.log("Longitude: " + position.coords.longitude);
});
```

## 3. Web Workers
**作用**: 在后台线程运行脚本，不阻塞 UI 渲染。
- 适合处理大量计算任务。

## 4. 离线应用 (Service Workers)
- 拦截网络请求，实现离线缓存 (PWA 核心)。

## 5. Fetch API
现代化的异步请求方案，替代原生的 `XMLHttpRequest`。
```javascript
fetch('https://api.example.com/data')
  .then(response => response.json())
  .then(data => console.log(data));
```

---
### 更新日志 (Changelog)
- 2026-04-05: 整合 Web 存储与现代 Web API。
