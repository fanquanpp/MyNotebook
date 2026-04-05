<template>
  <div class="composition-api-demo">
    <h1>组合式 API 示例</h1>
    
    <!-- 基础响应式数据 -->
    <section class="demo-section">
      <h2>基础响应式数据</h2>
      <p>计数: {{ count }}</p>
      <button @click="increment">增加</button>
      <button @click="decrement">减少</button>
    </section>
    
    <!-- 计算属性 -->
    <section class="demo-section">
      <h2>计算属性</h2>
      <p>计数的平方: {{ squaredCount }}</p>
      <p>计数的立方: {{ cubedCount }}</p>
    </section>
    
    <!-- 监听器 -->
    <section class="demo-section">
      <h2>监听器</h2>
      <p>输入内容: <input v-model="inputValue" /></p>
      <p>上一次输入: {{ previousInput }}</p>
      <p>输入变化次数: {{ inputChangeCount }}</p>
    </section>
    
    <!-- 生命周期钩子 -->
    <section class="demo-section">
      <h2>生命周期钩子</h2>
      <p>组件状态: {{ componentStatus }}</p>
      <p>挂载时间: {{ mountTime }}</p>
    </section>
    
    <!-- 依赖注入 -->
    <section class="demo-section">
      <h2>依赖注入</h2>
      <p>注入的消息: {{ injectedMessage }}</p>
      <ChildComponent />
    </section>
    
    <!-- 模板引用 -->
    <section class="demo-section">
      <h2>模板引用</h2>
      <input ref="inputRef" type="text" placeholder="输入内容" />
      <button @click="focusInput">聚焦输入框</button>
      <p>输入框值: {{ inputRefValue }}</p>
    </section>
    
    <!-- Composables -->
    <section class="demo-section">
      <h2>Composables</h2>
      <p>鼠标位置: ({{ mouseX }}, {{ mouseY }})</p>
      <p>点击次数: {{ clickCount }}</p>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, watch, onMounted, onUnmounted, inject } from 'vue'
import ChildComponent from './ChildComponent.vue'
import { useMousePosition, useClickCounter } from './composables'

// 基础响应式数据
const count = ref(0)

function increment() {
  count.value++
}

function decrement() {
  count.value--
}

// 计算属性
const squaredCount = computed(() => count.value * count.value)
const cubedCount = computed(() => count.value * count.value * count.value)

// 监听器
const inputValue = ref('')
const previousInput = ref('')
const inputChangeCount = ref(0)

watch(inputValue, (newValue, oldValue) => {
  previousInput.value = oldValue
  inputChangeCount.value++
  console.log('输入变化:', oldValue, '->', newValue)
})

// 生命周期钩子
const componentStatus = ref('创建中')
const mountTime = ref('')

onMounted(() => {
  componentStatus.value = '已挂载'
  mountTime.value = new Date().toLocaleString()
  console.log('组件已挂载')
})

onUnmounted(() => {
  componentStatus.value = '已卸载'
  console.log('组件已卸载')
})

// 依赖注入
const injectedMessage = inject('message', '默认消息')

// 模板引用
const inputRef = ref<HTMLInputElement | null>(null)
const inputRefValue = ref('')

function focusInput() {
  if (inputRef.value) {
    inputRef.value.focus()
    inputRefValue.value = inputRef.value.value
  }
}

// Composables
const { x: mouseX, y: mouseY } = useMousePosition()
const { count: clickCount, increment: incrementClick } = useClickCounter()
</script>

<style scoped>
.composition-api-demo {
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