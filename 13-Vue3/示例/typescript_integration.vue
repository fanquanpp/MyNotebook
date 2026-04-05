<template>
  <div class="typescript-integration">
    <h1>TypeScript 集成示例</h1>
    
    <!-- 基础类型 -->
    <section class="demo-section">
      <h2>基础类型</h2>
      <p>字符串: {{ stringValue }}</p>
      <p>数字: {{ numberValue }}</p>
      <p>布尔值: {{ booleanValue }}</p>
      <p>数组: {{ arrayValue }}</p>
      <p>元组: {{ tupleValue }}</p>
      <p>枚举: {{ enumValue }}</p>
    </section>
    
    <!-- 接口和类型别名 -->
    <section class="demo-section">
      <h2>接口和类型别名</h2>
      <p>用户信息: {{ user }}</p>
      <p>产品信息: {{ product }}</p>
      <button @click="updateUser">更新用户</button>
      <button @click="updateProduct">更新产品</button>
    </section>
    
    <!-- Props 类型 -->
    <section class="demo-section">
      <h2>Props 类型</h2>
      <ChildComponent 
        :message="message" 
        :count="count" 
        :user="user" 
        @update="handleUpdate"
      />
    </section>
    
    <!-- 响应式数据类型 -->
    <section class="demo-section">
      <h2>响应式数据类型</h2>
      <p>响应式字符串: {{ reactiveString }}</p>
      <p>响应式对象: {{ reactiveUser }}</p>
      <p>响应式数组: {{ reactiveArray }}</p>
      <button @click="updateReactiveData">更新响应式数据</button>
    </section>
    
    <!-- 计算属性类型 -->
    <section class="demo-section">
      <h2>计算属性类型</h2>
      <p>数字列表: {{ numberList }}</p>
      <p>列表总和: {{ sum }}</p>
      <p>列表平均值: {{ average }}</p>
      <p>最大值: {{ max }}</p>
      <p>最小值: {{ min }}</p>
      <button @click="addNumber">添加数字</button>
    </section>
    
    <!-- 方法类型 -->
    <section class="demo-section">
      <h2>方法类型</h2>
      <p>输入: <input v-model="inputValue" /></p>
      <p>处理结果: {{ processResult }}</p>
      <button @click="processInput">处理输入</button>
      <button @click="clearInput">清空</button>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive, computed } from 'vue'
import ChildComponent from './ChildComponent.vue'

// 基础类型
const stringValue: string = 'Hello TypeScript'
const numberValue: number = 42
const booleanValue: boolean = true
const arrayValue: number[] = [1, 2, 3, 4, 5]
const tupleValue: [string, number] = ['TypeScript', 2023]

enum Color {
  Red,
  Green,
  Blue
}

const enumValue: Color = Color.Green

// 接口和类型别名
interface User {
  id: number
  name: string
  age: number
  email?: string
}

type Product = {
  id: number
  name: string
  price: number
  inStock: boolean
}

const user: User = {
  id: 1,
  name: '张三',
  age: 20,
  email: 'zhangsan@example.com'
}

const product: Product = {
  id: 1,
  name: '产品 1',
  price: 100,
  inStock: true
}

function updateUser() {
  user.name = '李四'
  user.age = 25
}

function updateProduct() {
  product.price = 150
  product.inStock = false
}

// Props 类型
const message: string = 'Hello from parent'
const count: number = 10

function handleUpdate(value: string) {
  console.log('收到子组件更新:', value)
}

// 响应式数据类型
const reactiveString = ref<string>('Reactive string')
const reactiveUser = reactive<User>({
  id: 2,
  name: '王五',
  age: 30
})
const reactiveArray = ref<number[]>([1, 2, 3])

function updateReactiveData() {
  reactiveString.value = 'Updated reactive string'
  reactiveUser.name = '赵六'
  reactiveArray.value.push(4, 5)
}

// 计算属性类型
const numberList = ref<number[]>([1, 2, 3, 4, 5])

const sum = computed<number>(() => {
  return numberList.value.reduce((acc, val) => acc + val, 0)
})

const average = computed<number>(() => {
  return sum.value / numberList.value.length
})

const max = computed<number>(() => {
  return Math.max(...numberList.value)
})

const min = computed<number>(() => {
  return Math.min(...numberList.value)
})

function addNumber() {
  const randomNumber = Math.floor(Math.random() * 100)
  numberList.value.push(randomNumber)
}

// 方法类型
const inputValue = ref<string>('')
const processResult = ref<string>('')

function processInput(): void {
  if (inputValue.value) {
    processResult.value = `处理结果: ${inputValue.value.toUpperCase()}`
  } else {
    processResult.value = '请输入内容'
  }
}

function clearInput(): void {
  inputValue.value = ''
  processResult.value = ''
}
</script>

<style scoped>
.typescript-integration {
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

input {
  padding: 8px 12px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
  width: 300px;
  margin-right: 10px;
}
</style>

<!-- 子组件示例 -->
<script>
// ChildComponent.vue
/*
<template>
  <div class="child-component">
    <h3>子组件</h3>
    <p>消息: {{ message }}</p>
    <p>计数: {{ count }}</p>
    <p>用户: {{ user.name }}</p>
    <button @click="sendUpdate">发送更新</button>
  </div>
</template>

<script setup lang="ts">
import { defineProps, defineEmits } from 'vue'

interface User {
  id: number
  name: string
  age: number
  email?: string
}

const props = defineProps<{
  message: string
  count: number
  user: User
}>()

const emit = defineEmits<{
  (e: 'update', value: string): void
}>()

function sendUpdate() {
  emit('update', '来自子组件的更新')
}
</script>

<style scoped>
.child-component {
  padding: 15px;
  border: 1px solid #ddd;
  border-radius: 6px;
  background-color: #f0f0f0;
  margin-top: 10px;
}

h3 {
  color: #555;
  margin-bottom: 10px;
  font-size: 16px;
}

p {
  margin-bottom: 8px;
  font-size: 14px;
}

button {
  margin-top: 10px;
}
</style>
*/
</script>