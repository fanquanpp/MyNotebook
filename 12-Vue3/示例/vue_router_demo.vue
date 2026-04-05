<template>
  <div class="vue-router-demo">
    <h1>Vue Router 示例</h1>
    
    <!-- 导航菜单 -->
    <nav class="nav-menu">
      <router-link to="/">首页</router-link>
      <router-link to="/about">关于</router-link>
      <router-link to="/user/1">用户详情</router-link>
      <router-link to="/products">产品列表</router-link>
      <router-link to="/products/1">产品详情</router-link>
    </nav>
    
    <!-- 路由视图 -->
    <div class="router-view">
      <router-view></router-view>
    </div>
    
    <!-- 编程式导航 -->
    <div class="programmatic-navigation">
      <h2>编程式导航</h2>
      <button @click="navigateToHome">跳转到首页</button>
      <button @click="navigateToAbout">跳转到关于</button>
      <button @click="navigateToUser(2)">跳转到用户 2</button>
      <button @click="navigateToProduct(2)">跳转到产品 2</button>
      <button @click="goBack">返回</button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useRouter } from 'vue-router'

const router = useRouter()

// 编程式导航
function navigateToHome() {
  router.push('/')
}

function navigateToAbout() {
  router.push('/about')
}

function navigateToUser(id: number) {
  router.push(`/user/${id}`)
}

function navigateToProduct(id: number) {
  router.push(`/products/${id}`)
}

function goBack() {
  router.back()
}
</script>

<style scoped>
.vue-router-demo {
  padding: 20px;
  max-width: 800px;
  margin: 0 auto;
}

.nav-menu {
  display: flex;
  gap: 10px;
  margin-bottom: 30px;
  padding: 15px;
  background-color: #f5f5f5;
  border-radius: 8px;
}

.nav-menu a {
  padding: 8px 16px;
  text-decoration: none;
  color: #333;
  border-radius: 4px;
  transition: background-color 0.3s;
}

.nav-menu a:hover {
  background-color: #e0e0e0;
}

.nav-menu a.router-link-active {
  background-color: #42b983;
  color: white;
}

.router-view {
  min-height: 200px;
  padding: 20px;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  background-color: #f9f9f9;
  margin-bottom: 30px;
}

.programmatic-navigation {
  padding: 20px;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  background-color: #f9f9f9;
}

h1 {
  color: #333;
  margin-bottom: 30px;
}

h2 {
  color: #555;
  margin-bottom: 15px;
  font-size: 18px;
}

button {
  padding: 8px 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  margin-right: 10px;
  margin-bottom: 10px;
  background-color: #42b983;
  color: white;
  transition: background-color 0.3s;
}

button:hover {
  background-color: #3aa876;
}
</style>

<!-- 路由配置示例 -->
<script>
// router/index.ts
/*
import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('../views/Home.vue')
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('../views/About.vue')
  },
  {
    path: '/user/:id',
    name: 'User',
    component: () => import('../views/User.vue')
  },
  {
    path: '/products',
    name: 'Products',
    component: () => import('../views/Products.vue')
  },
  {
    path: '/products/:id',
    name: 'Product',
    component: () => import('../views/Product.vue')
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
*/
</script>

<!-- 视图组件示例 -->
<script>
// views/Home.vue
/*
<template>
  <div>
    <h2>首页</h2>
    <p>欢迎来到首页！</p>
  </div>
</template>
*/

// views/About.vue
/*
<template>
  <div>
    <h2>关于我们</h2>
    <p>这是一个关于页面。</p>
  </div>
</template>
*/

// views/User.vue
/*
<template>
  <div>
    <h2>用户详情</h2>
    <p>用户 ID: {{ $route.params.id }}</p>
  </div>
</template>
*/

// views/Products.vue
/*
<template>
  <div>
    <h2>产品列表</h2>
    <ul>
      <li v-for="product in products" :key="product.id">
        <router-link :to="`/products/${product.id}`">{{ product.name }}</router-link>
      </li>
    </ul>
  </div>
</template>

<script setup>
const products = [
  { id: 1, name: '产品 1' },
  { id: 2, name: '产品 2' },
  { id: 3, name: '产品 3' }
]
</script>
*/

// views/Product.vue
/*
<template>
  <div>
    <h2>产品详情</h2>
    <p>产品 ID: {{ $route.params.id }}</p>
  </div>
</template>
*/
</script>