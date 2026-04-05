<template>
  <div class="reactive-system-demo">
    <h1>响应式系统示例</h1>
    
    <!-- ref 响应式 -->
    <section class="demo-section">
      <h2>ref 响应式</h2>
      <p>计数器: {{ count }}</p>
      <button @click="incrementCount">增加</button>
      <button @click="resetCount">重置</button>
    </section>
    
    <!-- reactive 响应式 -->
    <section class="demo-section">
      <h2>reactive 响应式</h2>
      <p>用户姓名: {{ user.name }}</p>
      <p>用户年龄: {{ user.age }}</p>
      <button @click="updateUser">更新用户信息</button>
      <button @click="resetUser">重置用户</button>
    </section>
    
    <!-- toRefs -->
    <section class="demo-section">
      <h2>toRefs</h2>
      <p>解构后的姓名: {{ name }}</p>
      <p>解构后的年龄: {{ age }}</p>
      <button @click="updateName">更新姓名</button>
      <button @click="updateAge">更新年龄</button>
    </section>
    
    <!-- computed -->
    <section class="demo-section">
      <h2>computed</h2>
      <p>原始价格: {{ price }}</p>
      <p>折扣: {{ discount }}%</p>
      <p>折扣后价格: {{ discountedPrice }}</p>
      <button @click="increasePrice">提高价格</button>
      <button @click="increaseDiscount">提高折扣</button>
    </section>
    
    <!-- watch -->
    <section class="demo-section">
      <h2>watch</h2>
      <p>搜索关键词: <input v-model="searchQuery" /></p>
      <p>上一次搜索: {{ previousSearch }}</p>
      <p>搜索次数: {{ searchCount }}</p>
    </section>
    
    <!-- watchEffect -->
    <section class="demo-section">
      <h2>watchEffect</h2>
      <p>计数: {{ count }}</p>
      <p>价格: {{ price }}</p>
      <p>效果执行次数: {{ effectCount }}</p>
      <p>上次执行时间: {{ lastEffectTime }}</p>
    </section>
    
    <!-- 深度响应 -->
    <section class="demo-section">
      <h2>深度响应</h2>
      <p>用户地址: {{ user.address.city }}, {{ user.address.district }}</p>
      <button @click="updateAddress">更新地址</button>
    </section>
    
    <!-- 浅响应 -->
    <section class="demo-section">
      <h2>浅响应</h2>
      <p>浅响应对象: {{ shallowObj }}</p>
      <p>深层属性: {{ shallowObj.deep.nested }}</p>
      <button @click="updateShallowObj">更新浅响应对象</button>
      <button @click="updateDeepProp">更新深层属性</button>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive, toRefs, computed, watch, watchEffect, shallowReactive } from 'vue'

// ref 响应式
const count = ref(0)

function incrementCount() {
  count.value++
}

function resetCount() {
  count.value = 0
}

// reactive 响应式
const user = reactive({
  name: '张三',
  age: 20,
  address: {
    city: '北京',
    district: '朝阳区'
  }
})

function updateUser() {
  user.name = '李四'
  user.age = 25
}

function resetUser() {
  user.name = '张三'
  user.age = 20
}

// toRefs
const { name, age } = toRefs(user)

function updateName() {
  name.value = '王五'
}

function updateAge() {
  age.value = 30
}

// computed
const price = ref(100)
const discount = ref(10)

const discountedPrice = computed(() => {
  return price.value * (1 - discount.value / 100)
})

function increasePrice() {
  price.value += 10
}

function increaseDiscount() {
  discount.value += 5
}

// watch
const searchQuery = ref('')
const previousSearch = ref('')
const searchCount = ref(0)

watch(searchQuery, (newValue, oldValue) => {
  previousSearch.value = oldValue
  searchCount.value++
  console.log('搜索变化:', oldValue, '->', newValue)
})

// watchEffect
const effectCount = ref(0)
const lastEffectTime = ref('')

watchEffect(() => {
  console.log('watchEffect 执行:', count.value, price.value)
  effectCount.value++
  lastEffectTime.value = new Date().toLocaleTimeString()
})

// 深度响应
function updateAddress() {
  user.address.city = '上海'
  user.address.district = '浦东新区'
}

// 浅响应
const shallowObj = shallowReactive({
  name: '浅响应对象',
  deep: {
    nested: '深层属性'
  }
})

function updateShallowObj() {
  shallowObj.name = '更新后的浅响应对象'
}

function updateDeepProp() {
  // 注意：浅响应对象的深层属性不会触发响应式更新
  shallowObj.deep.nested = '更新后的深层属性'
  console.log('深层属性已更新，但不会触发组件重新渲染')
}
</script>

<style scoped>
.reactive-system-demo {
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
}

input {
  padding: 8px 12px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
  width: 300px;
}
</style>