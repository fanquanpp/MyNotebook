# Java 核心语法深度解析 | Java Core Syntax Deep Dive

本文档深入解析 Java 核心语法，涵盖内存模型、泛型、并发等高级主题。

## 1. Java 内存模型 (JMM) | Java Memory Model
- **堆 (Heap)**：存储对象实例，所有线程共享。
- **栈 (Stack)**：存储局部变量、操作数栈、方法出口，线程私有。
- **方法区 (Method Area)**：存储类信息、常量、静态变量。
- **程序计数器 (PC)**：记录当前执行指令地址。

## 2. 泛型 (Generics) | Generics
Java 泛型采用**类型擦除 (Type Erasure)** 机制：
- 在编译期间检查类型安全。
- 在字节码中擦除类型，替换为 Object。
- **通配符 (Wildcards)**：
  - `<? extends T>`：协变，适用于读取。
  - `<? super T>`：逆变，适用于写入。

## 3. 并发编程基础 | Concurrency Basics
- **synchronized 关键字**：保证原子性、可见性、有序性。
- **volatile 关键字**：保证可见性、有序性（防止重排序），但不保证原子性。
- **CAS (Compare And Swap)**：利用 CPU 原子指令实现的无锁同步。

## 4. 集合框架 (Collections) | Collections Framework
- **ArrayList**：动态数组，查询快，增删慢。
- **LinkedList**：双向链表，增删快，查询慢。
- **HashMap**：数组 + 链表 + 红黑树 (JDK 1.8+)，非线程安全。
- **ConcurrentHashMap**：分段锁 (JDK 1.7) / CAS + synchronized (JDK 1.8)，线程安全且高性能。

---

# Spring Boot 核心特性 | Spring Boot Core Features

## 1. 自动配置 (Auto-Configuration) | Auto-Configuration
- **原理**：基于 `@EnableAutoConfiguration` 与 `@Conditional` 注解。
- **机制**：扫描 `META-INF/spring.factories` 下的配置类，根据 classpath 中的依赖自动装配 Bean。

## 2. 起步依赖 (Starters) | Starters
- **目的**：简化 Maven/Gradle 配置，提供一组开箱即用的依赖组合（如 `spring-boot-starter-web`）。

## 3. 依赖注入 (DI) | Dependency Injection
- **方式**：构造器注入 (推荐)、Setter 注入、字段注入 (`@Autowired`)。
- **控制反转 (IoC)**：将对象的生命周期管理交给 Spring 容器。

## 4. RESTful API 实战 | RESTful API
```java
@RestController
@RequestMapping("/api/users")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @GetMapping("/{id}")
    public ResponseEntity<User> getUser(@PathVariable Long id) {
        return ResponseEntity.ok(userService.findById(id));
    }
}
```
