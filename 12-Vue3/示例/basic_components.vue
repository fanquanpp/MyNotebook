<template>
  <div class="basic-components">
    <h1>基础组件示例</h1>
    
    <!-- 按钮组件 -->
    <section class="component-section">
      <h2>按钮组件</h2>
      <ButtonPrimary @click="handleButtonClick">主要按钮</ButtonPrimary>
      <ButtonSecondary @click="handleButtonClick">次要按钮</ButtonSecondary>
      <ButtonDisabled>禁用按钮</ButtonDisabled>
    </section>
    
    <!-- 输入框组件 -->
    <section class="component-section">
      <h2>输入框组件</h2>
      <TextInput 
        v-model="inputValue" 
        placeholder="请输入内容" 
        @input="handleInput"
      />
      <p>输入值: {{ inputValue }}</p>
    </section>
    
    <!-- 卡片组件 -->
    <section class="component-section">
      <h2>卡片组件</h2>
      <Card title="卡片标题">
        <template #content>
          <p>这是卡片内容</p>
          <p>可以包含任意内容</p>
        </template>
        <template #footer>
          <ButtonPrimary @click="handleCardButtonClick">操作按钮</ButtonPrimary>
        </template>
      </Card>
    </section>
    
    <!-- 列表组件 -->
    <section class="component-section">
      <h2>列表组件</h2>
      <List :items="listItems">
        <template #item="{ item }">
          <div class="list-item-content">
            <span>{{ item.name }}</span>
            <ButtonSecondary @click="handleListItemClick(item)">查看</ButtonSecondary>
          </div>
        </template>
      </List>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

// 输入框值
const inputValue = ref('')

// 列表数据
const listItems = ref([
  { id: 1, name: '项目 1' },
  { id: 2, name: '项目 2' },
  { id: 3, name: '项目 3' }
])

// 事件处理
function handleButtonClick() {
  console.log('按钮被点击')
}

function handleInput(event: Event) {
  console.log('输入内容:', (event.target as HTMLInputElement).value)
}

function handleCardButtonClick() {
  console.log('卡片按钮被点击')
}

function handleListItemClick(item: { id: number; name: string }) {
  console.log('列表项被点击:', item)
}
</script>

<!-- 子组件定义 -->
<script setup lang="ts">
// 主要按钮组件
const ButtonPrimary = {
  props: {
    disabled: {
      type: Boolean,
      default: false
    }
  },
  emits: ['click'],
  template: `
    <button 
      class="button button-primary" 
      :disabled="disabled"
      @click="$emit('click')"
    >
      <slot></slot>
    </button>
  `
}

// 次要按钮组件
const ButtonSecondary = {
  props: {
    disabled: {
      type: Boolean,
      default: false
    }
  },
  emits: ['click'],
  template: `
    <button 
      class="button button-secondary" 
      :disabled="disabled"
      @click="$emit('click')"
    >
      <slot></slot>
    </button>
  `
}

// 禁用按钮组件
const ButtonDisabled = {
  template: `
    <button class="button button-disabled" disabled>
      <slot></slot>
    </button>
  `
}

// 文本输入框组件
const TextInput = {
  props: {
    modelValue: {
      type: String,
      default: ''
    },
    placeholder: {
      type: String,
      default: ''
    }
  },
  emits: ['update:modelValue', 'input'],
  template: `
    <input 
      type="text" 
      class="text-input"
      :value="modelValue"
      :placeholder="placeholder"
      @input="handleInput"
    />
  `,
  methods: {
    handleInput(event: Event) {
      const value = (event.target as HTMLInputElement).value
      this.$emit('update:modelValue', value)
      this.$emit('input', event)
    }
  }
}

// 卡片组件
const Card = {
  props: {
    title: {
      type: String,
      required: true
    }
  },
  template: `
    <div class="card">
      <div class="card-header">
        <h3>{{ title }}</h3>
      </div>
      <div class="card-content">
        <slot name="content"></slot>
      </div>
      <div class="card-footer">
        <slot name="footer"></slot>
      </div>
    </div>
  `
}

// 列表组件
const List = {
  props: {
    items: {
      type: Array,
      required: true
    }
  },
  template: `
    <ul class="list">
      <li v-for="item in items" :key="item.id" class="list-item">
        <slot name="item" :item="item"></slot>
      </li>
    </ul>
  `
}
</script>

<style scoped>
.basic-components {
  padding: 20px;
  max-width: 800px;
  margin: 0 auto;
}

.component-section {
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

/* 按钮样式 */
.button {
  padding: 8px 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  margin-right: 10px;
  margin-bottom: 10px;
}

.button-primary {
  background-color: #42b983;
  color: white;
}

.button-secondary {
  background-color: #3498db;
  color: white;
}

.button-disabled {
  background-color: #bdc3c7;
  color: #7f8c8d;
  cursor: not-allowed;
}

/* 输入框样式 */
.text-input {
  padding: 8px 12px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
  width: 300px;
}

/* 卡片样式 */
.card {
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  background-color: white;
  overflow: hidden;
  width: 100%;
}

.card-header {
  padding: 15px;
  background-color: #f5f5f5;
  border-bottom: 1px solid #e0e0e0;
}

.card-header h3 {
  margin: 0;
  color: #333;
  font-size: 16px;
}

.card-content {
  padding: 15px;
}

.card-footer {
  padding: 15px;
  background-color: #f9f9f9;
  border-top: 1px solid #e0e0e0;
  text-align: right;
}

/* 列表样式 */
.list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.list-item {
  padding: 10px;
  border-bottom: 1px solid #e0e0e0;
}

.list-item:last-child {
  border-bottom: none;
}

.list-item-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.list-item-content span {
  font-size: 14px;
  color: #333;
}
</style>