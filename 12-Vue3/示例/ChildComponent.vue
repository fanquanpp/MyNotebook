<template>
  <div class="child-component">
    <h3>子组件</h3>
    <p>从父组件注入的消息: {{ injectedMessage }}</p>
    <p>子组件自己的消息: {{ childMessage }}</p>
  </div>
</template>

<script setup lang="ts">
import { ref, inject } from 'vue'

// 从父组件注入消息
const injectedMessage = inject('message', '默认消息')

// 子组件自己的消息
const childMessage = ref('这是子组件的消息')
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
</style>