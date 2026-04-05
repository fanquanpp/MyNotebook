<template>
  <div class="pinia-demo">
    <h1>Pinia 状态管理示例</h1>
    
    <!-- 计数器 Store -->
    <section class="demo-section">
      <h2>计数器 Store</h2>
      <p>计数: {{ counterStore.count }}</p>
      <p>双倍数: {{ counterStore.doubleCount }}</p>
      <button @click="counterStore.increment">增加</button>
      <button @click="counterStore.incrementBy(5)">增加 5</button>
      <button @click="counterStore.incrementAsync">异步增加</button>
      <button @click="counterStore.$reset">重置</button>
    </section>
    
    <!-- 用户 Store -->
    <section class="demo-section">
      <h2>用户 Store</h2>
      <p>用户名: {{ userStore.name }}</p>
      <p>年龄: {{ userStore.age }}</p>
      <p>是否成年: {{ userStore.isAdult }}</p>
      <button @click="updateUser">更新用户</button>
      <button @click="userStore.incrementAge">增加年龄</button>
      <button @click="userStore.$reset">重置</button>
    </section>
    
    <!-- 购物车 Store -->
    <section class="demo-section">
      <h2>购物车 Store</h2>
      <p>商品数量: {{ cartStore.itemCount }}</p>
      <p>总价: {{ cartStore.totalPrice }}</p>
      <div class="cart-items">
        <div v-for="item in cartStore.items" :key="item.id" class="cart-item">
          <span>{{ item.name }}</span>
          <span>¥{{ item.price }}</span>
          <span>x{{ item.quantity }}</span>
          <button @click="cartStore.removeItem(item.id)">删除</button>
        </div>
      </div>
      <button @click="addItem">添加商品</button>
      <button @click="cartStore.clearCart">清空购物车</button>
    </section>
    
    <!-- 持久化示例 -->
    <section class="demo-section">
      <h2>持久化示例</h2>
      <p>持久化计数: {{ persistedStore.count }}</p>
      <button @click="persistedStore.increment">增加</button>
      <button @click="persistedStore.$reset">重置</button>
      <p>刷新页面后数据会保持</p>
    </section>
  </div>
</template>

<script setup lang="ts">
import { useCounterStore, useUserStore, useCartStore, usePersistedStore } from './stores'

// 初始化 Store
const counterStore = useCounterStore()
const userStore = useUserStore()
const cartStore = useCartStore()
const persistedStore = usePersistedStore()

// 更新用户信息
function updateUser() {
  userStore.updateName('李四')
  userStore.updateAge(25)
}

// 添加商品到购物车
function addItem() {
  const items = [
    { id: 1, name: '商品 1', price: 100, quantity: 1 },
    { id: 2, name: '商品 2', price: 200, quantity: 1 },
    { id: 3, name: '商品 3', price: 300, quantity: 1 }
  ]
  const randomItem = items[Math.floor(Math.random() * items.length)]
  cartStore.addItem(randomItem)
}
</script>

<style scoped>
.pinia-demo {
  padding: 20px;
  max-width: 800px;
  margin: 0 auto;
}

.demo-section {
  margin-bottom: 30px;
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

p {
  margin-bottom: 10px;
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

.cart-items {
  margin: 15px 0;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 10px;
  background-color: white;
}

.cart-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #eee;
}

.cart-item:last-child {
  border-bottom: none;
}

.cart-item span {
  flex: 1;
}

.cart-item button {
  margin: 0;
  background-color: #e74c3c;
}

.cart-item button:hover {
  background-color: #c0392b;
}
</style>

<!-- Store 定义示例 -->
<script>
// stores/index.ts
/*
import { defineStore } from 'pinia'

// 计数器 Store
export const useCounterStore = defineStore('counter', {
  state: () => ({
    count: 0
  }),
  getters: {
    doubleCount: (state) => state.count * 2
  },
  actions: {
    increment() {
      this.count++
    },
    incrementBy(amount: number) {
      this.count += amount
    },
    async incrementAsync() {
      await new Promise(resolve => setTimeout(resolve, 1000))
      this.count++
    }
  }
})

// 用户 Store
export const useUserStore = defineStore('user', () => {
  const name = ref('张三')
  const age = ref(20)
  
  const isAdult = computed(() => age.value >= 18)
  
  function updateName(newName: string) {
    name.value = newName
  }
  
  function updateAge(newAge: number) {
    age.value = newAge
  }
  
  function incrementAge() {
    age.value++
  }
  
  return {
    name,
    age,
    isAdult,
    updateName,
    updateAge,
    incrementAge
  }
})

// 购物车 Store
export const useCartStore = defineStore('cart', {
  state: () => ({
    items: []
  }),
  getters: {
    itemCount: (state) => state.items.reduce((count, item) => count + item.quantity, 0),
    totalPrice: (state) => state.items.reduce((total, item) => total + item.price * item.quantity, 0)
  },
  actions: {
    addItem(item: any) {
      const existingItem = this.items.find(i => i.id === item.id)
      if (existingItem) {
        existingItem.quantity++
      } else {
        this.items.push({ ...item })
      }
    },
    removeItem(id: number) {
      const index = this.items.findIndex(item => item.id === id)
      if (index !== -1) {
        this.items.splice(index, 1)
      }
    },
    clearCart() {
      this.items = []
    }
  }
})

// 持久化 Store
export const usePersistedStore = defineStore('persisted', {
  state: () => ({
    count: 0
  }),
  actions: {
    increment() {
      this.count++
    }
  },
  persist: true
})
*/
</script>