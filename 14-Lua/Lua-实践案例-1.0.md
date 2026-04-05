<!--
文件名称：03-Lua实践案例-学习笔记
原名称：无
用途描述：Lua 脚本语言的实践案例笔记，重点包含 Redis Lua 脚本、Nginx (OpenResty) 扩展、性能优化最佳实践。
创建/更新：2026-04-05
-->

# 03-Lua 实践案例（Lua Practice Cases）

Lua 因其轻量和高性能，常用于扩展成熟的软件系统。本节介绍两个最常见的工业级应用场景：Redis 和 Nginx。

## 1. 核心概念

- **Redis Lua**：在 Redis 服务器端运行 Lua 脚本。它可以确保操作的原子性，减少网络往返（RTT）。
- **OpenResty (Nginx + Lua)**：通过 Lua 脚本扩展 Nginx，实现高性能的 Web 网关功能。
- **性能优化**：虽然 Lua 很快，但在极端场景下，良好的编码习惯和 JIT（Just-In-Time）编译器支持至关重要。

## 2. 实战应用

### 2.1 Redis Lua 脚本开发

Redis 从 2.6 版本开始支持 Lua 脚本。

#### 核心优势
1. **减少网络开销**：多个请求通过脚本一次处理。
2. **原子操作**：脚本执行期间不会被其他指令打断。
3. **复用与封装**：逻辑复用。

#### 核心指令
- `EVAL script numkeys [key ...] [arg ...]`
- `EVALSHA sha1 numkeys [key ...] [arg ...]` (通过 SHA1 校验和调用，减少带宽)

#### 代码示例
```lua
-- EVAL "return redis.call('set', KEYS[1], ARGV[1])" 1 mykey myvalue
local current = redis.call('get', KEYS[1])
if not current then
    redis.call('set', KEYS[1], ARGV[1])
    return 1
end
return 0
```

#### 注意点
- **所有 Key 必须通过 KEYS 对象传递**：否则在 Redis Cluster 中可能报错。
- **避免耗时操作**：Lua 脚本是阻塞的，长时间运行会挂起 Redis。

### 2.2 Nginx (OpenResty) 扩展

OpenResty 将 LuaJIT 嵌入到 Nginx 核心中。

#### 核心阶段
- `set_by_lua`：变量赋值。
- `rewrite_by_lua`：重写请求。
- `access_by_lua`：访问控制。
- `content_by_lua`：内容生成（最常用）。

#### 代码示例
```nginx
# nginx.conf
location /hello {
    content_by_lua_block {
        ngx.say("Hello, OpenResty!")
    }
}
```

## 3. 最佳实践

### 3.1 性能优化
- **局部变量优先**：在 Lua 中，访问局部变量（local）比访问全局变量（global）快得多。
- **预编译 Lua 字节码**：在 Nginx 环境下，使用 `init_by_lua` 阶段预热。
- **利用 LuaJIT**：确保代码对 JIT 编译器友好（避免 `pairs` 遍历大 table，优先使用 `ipairs` 或 `for i=1, #t`）。

### 3.2 安全建议
- **避免注入漏洞**：在 Redis 脚本中，不要直接拼接 ARGV 到 redis.call 中（如果是字符串参数）。
- **限制执行时间**：设置 Redis 的 `lua-time-limit`。

## 4. 延伸阅读

- [Redis Lua 脚本参考文档](https://github.com/changsongl/lua-redis) <!-- nofollow -->
- [OpenResty 官方教程](https://openresty.org/en/getting-started.html) <!-- nofollow -->

## 5. 更新日志

- **2026-04-05**：初始版本，包含 Redis Lua 和 OpenResty 核心实践。
