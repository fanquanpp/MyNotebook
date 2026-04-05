# Vue3 中的算法

在 Vue3 应用开发中，算法的应用虽然不如后端开发那么广泛，但在处理数据、优化性能等方面仍然发挥着重要作用。本目录介绍 Vue3 中常用的算法及其实现方法。

## 常用算法

### 1. 排序算法

#### 1.1 冒泡排序

```vue
<script setup lang="ts">
function bubbleSort(arr: number[]): number[] {
  const len = arr.length
  for (let i = 0; i < len - 1; i++) {
    for (let j = 0; j < len - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        // 交换元素
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]]
      }
    }
  }
  return arr
}

// 使用示例
const numbers = [5, 3, 8, 4, 2]
const sortedNumbers = bubbleSort([...numbers])
console.log(sortedNumbers) // [2, 3, 4, 5, 8]
</script>
```

#### 1.2 快速排序

```vue
<script setup lang="ts">
function quickSort(arr: number[]): number[] {
  if (arr.length <= 1) {
    return arr
  }
  
  const pivot = arr[Math.floor(arr.length / 2)]
  const left = arr.filter(x => x < pivot)
  const middle = arr.filter(x => x === pivot)
  const right = arr.filter(x => x > pivot)
  
  return [...quickSort(left), ...middle, ...quickSort(right)]
}

// 使用示例
const numbers = [5, 3, 8, 4, 2]
const sortedNumbers = quickSort(numbers)
console.log(sortedNumbers) // [2, 3, 4, 5, 8]
</script>
```

#### 1.3 插入排序

```vue
<script setup lang="ts">
function insertionSort(arr: number[]): number[] {
  const len = arr.length
  for (let i = 1; i < len; i++) {
    const key = arr[i]
    let j = i - 1
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j]
      j--
    }
    arr[j + 1] = key
  }
  return arr
}

// 使用示例
const numbers = [5, 3, 8, 4, 2]
const sortedNumbers = insertionSort([...numbers])
console.log(sortedNumbers) // [2, 3, 4, 5, 8]
</script>
```

### 2. 搜索算法

#### 2.1 线性搜索

```vue
<script setup lang="ts">
function linearSearch(arr: any[], target: any): number {
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === target) {
      return i
    }
  }
  return -1
}

// 使用示例
const numbers = [5, 3, 8, 4, 2]
const index = linearSearch(numbers, 8)
console.log(index) // 2
</script>
```

#### 2.2 二分搜索

```vue
<script setup lang="ts">
function binarySearch(arr: number[], target: number): number {
  let left = 0
  let right = arr.length - 1
  
  while (left <= right) {
    const mid = Math.floor((left + right) / 2)
    if (arr[mid] === target) {
      return mid
    } else if (arr[mid] < target) {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  return -1
}

// 使用示例
const sortedNumbers = [2, 3, 4, 5, 8]
const index = binarySearch(sortedNumbers, 5)
console.log(index) // 3
</script>
```

### 3. 数组操作算法

#### 3.1 数组去重

```vue
<script setup lang="ts">
// 使用 Set
function uniqueArray(arr: any[]): any[] {
  return [...new Set(arr)]
}

// 使用 filter
function uniqueArrayFilter(arr: any[]): any[] {
  return arr.filter((value, index, self) => {
    return self.indexOf(value) === index
  })
}

// 使用示例
const numbers = [1, 2, 3, 2, 1, 4, 5, 4]
const unique = uniqueArray(numbers)
console.log(unique) // [1, 2, 3, 4, 5]
</script>
```

#### 3.2 数组扁平化

```vue
<script setup lang="ts">
// 递归实现
function flattenArray(arr: any[]): any[] {
  return arr.reduce((acc, val) => {
    return acc.concat(Array.isArray(val) ? flattenArray(val) : val)
  }, [])
}

// 使用 ES6 flat 方法
function flattenArrayES6(arr: any[]): any[] {
  return arr.flat(Infinity)
}

// 使用示例
const nestedArray = [1, [2, [3, [4, 5]]]]
const flattened = flattenArray(nestedArray)
console.log(flattened) // [1, 2, 3, 4, 5]
</script>
```

#### 3.3 数组分组

```vue
<script setup lang="ts">
function groupBy(arr: any[], key: string | ((item: any) => string)): Record<string, any[]> {
  return arr.reduce((groups, item) => {
    const group = typeof key === 'function' ? key(item) : item[key]
    groups[group] = groups[group] || []
    groups[group].push(item)
    return groups
  }, {} as Record<string, any[]>)
}

// 使用示例
const users = [
  { name: '张三', age: 20 },
  { name: '李四', age: 25 },
  { name: '王五', age: 20 },
  { name: '赵六', age: 25 }
]

const groupedByAge = groupBy(users, 'age')
console.log(groupedByAge)
// {
//   '20': [{ name: '张三', age: 20 }, { name: '王五', age: 20 }],
//   '25': [{ name: '李四', age: 25 }, { name: '赵六', age: 25 }]
// }
</script>
```

### 4. 字符串算法

#### 4.1 字符串反转

```vue
<script setup lang="ts">
function reverseString(str: string): string {
  return str.split('').reverse().join('')
}

// 使用示例
const str = 'Hello Vue3'
const reversed = reverseString(str)
console.log(reversed) // '3euV olleH'
</script>
```

#### 4.2 回文检测

```vue
<script setup lang="ts">
function isPalindrome(str: string): boolean {
  const reversed = str.split('').reverse().join('')
  return str === reversed
}

// 使用示例
console.log(isPalindrome('level')) // true
console.log(isPalindrome('hello')) // false
</script>
```

#### 4.3 字符串匹配

```vue
<script setup lang="ts">
function stringMatch(str: string, pattern: string): number {
  if (pattern.length > str.length) {
    return -1
  }
  
  for (let i = 0; i <= str.length - pattern.length; i++) {
    let match = true
    for (let j = 0; j < pattern.length; j++) {
      if (str[i + j] !== pattern[j]) {
        match = false
        break
      }
    }
    if (match) {
      return i
    }
  }
  return -1
}

// 使用示例
const str = 'Hello Vue3'
const pattern = 'Vue'
const index = stringMatch(str, pattern)
console.log(index) // 6
</script>
```

### 5. 工具算法

#### 5.1 防抖

```vue
<script setup lang="ts">
function debounce<T extends (...args: any[]) => any>(
  func: T,
  wait: number
): (...args: Parameters<T>) => void {
  let timeout: ReturnType<typeof setTimeout> | null = null
  
  return (...args: Parameters<T>) => {
    if (timeout) {
      clearTimeout(timeout)
    }
    timeout = setTimeout(() => {
      func(...args)
    }, wait)
  }
}

// 使用示例
const debouncedSearch = debounce((query: string) => {
  console.log('Searching for:', query)
  // 执行搜索逻辑
}, 300)

// 在输入框变化时调用
// <input @input="(e) => debouncedSearch(e.target.value)" />
</script>
```

#### 5.2 节流

```vue
<script setup lang="ts">
function throttle<T extends (...args: any[]) => any>(
  func: T,
  limit: number
): (...args: Parameters<T>) => void {
  let inThrottle = false
  
  return (...args: Parameters<T>) => {
    if (!inThrottle) {
      func(...args)
      inThrottle = true
      setTimeout(() => {
        inThrottle = false
      }, limit)
    }
  }
}

// 使用示例
const throttledScroll = throttle(() => {
  console.log('Scroll event')
  // 执行滚动逻辑
}, 100)

// 在滚动时调用
// window.addEventListener('scroll', throttledScroll)
</script>
```

#### 5.3 深拷贝

```vue
<script setup lang="ts">
function deepClone<T>(obj: T): T {
  if (obj === null || typeof obj !== 'object') {
    return obj
  }
  
  if (obj instanceof Date) {
    return new Date(obj.getTime()) as unknown as T
  }
  
  if (obj instanceof Array) {
    return obj.map(item => deepClone(item)) as unknown as T
  }
  
  if (typeof obj === 'object') {
    const clonedObj: Record<string, any> = {}
    for (const key in obj) {
      if (obj.hasOwnProperty(key)) {
        clonedObj[key] = deepClone(obj[key])
      }
    }
    return clonedObj as T
  }
  
  return obj
}

// 使用示例
const original = {
  name: '张三',
  age: 20,
  address: {
    city: '北京',
    district: '朝阳区'
  },
  hobbies: ['读书', '跑步']
}

const cloned = deepClone(original)
console.log(cloned)
</script>
```

## 算法在 Vue3 中的应用

### 1. 组件中的算法应用

```vue
<template>
  <div>
    <input v-model="searchQuery" @input="debouncedSearch" placeholder="搜索..." />
    <ul>
      <li v-for="item in filteredItems" :key="item.id">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue'

const searchQuery = ref('')
const items = ref([
  { id: 1, name: '张三' },
  { id: 2, name: '李四' },
  { id: 3, name: '王五' },
  { id: 4, name: '赵六' }
])

// 防抖搜索
function debounce<T extends (...args: any[]) => any>(
  func: T,
  wait: number
): (...args: Parameters<T>) => void {
  let timeout: ReturnType<typeof setTimeout> | null = null
  return (...args: Parameters<T>) => {
    if (timeout) clearTimeout(timeout)
    timeout = setTimeout(() => func(...args), wait)
  }
}

// 过滤逻辑
const filteredItems = computed(() => {
  if (!searchQuery.value) return items.value
  return items.value.filter(item => 
    item.name.toLowerCase().includes(searchQuery.value.toLowerCase())
  )
})

const debouncedSearch = debounce(() => {
  console.log('搜索:', searchQuery.value)
  // 可以在这里添加 API 调用等逻辑
}, 300)
</script>
```

### 2. 状态管理中的算法应用

```vue
<script setup lang="ts">
import { useUserStore } from '../store/user'

const userStore = useUserStore()

// 排序用户列表
function sortUsersByAge() {
  userStore.users.sort((a, b) => a.age - b.age)
}

// 搜索用户
function searchUsers(query: string) {
  return userStore.users.filter(user => 
    user.name.toLowerCase().includes(query.toLowerCase())
  )
}
</script>
```

### 3. 工具函数中的算法应用

```vue
<script setup lang="ts">
// 生成唯一 ID
function generateId(): string {
  return Math.random().toString(36).substr(2, 9)
}

// 格式化时间
function formatDate(date: Date): string {
  return new Intl.DateTimeFormat('zh-CN', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit'
  }).format(date)
}

// 计算数组总和
function sumArray(arr: number[]): number {
  return arr.reduce((acc, val) => acc + val, 0)
}
</script>
```

## 性能优化

### 1. 算法选择

- **小型数组**：使用简单排序算法（如插入排序）
- **大型数组**：使用高效排序算法（如快速排序、归并排序）
- **有序数组**：使用二分搜索
- **频繁操作**：考虑使用更高效的数据结构（如 Map、Set）

### 2. 缓存优化

```vue
<script setup lang="ts">
import { ref, computed } from 'vue'

const items = ref([1, 2, 3, 4, 5])

// 缓存计算结果
const expensiveComputation = computed(() => {
  console.log('Computing...')
  return items.value.reduce((acc, val) => acc + val * 2, 0)
})

// 只有当 items 变化时才会重新计算
console.log(expensiveComputation.value) // 计算并输出
console.log(expensiveComputation.value) // 直接从缓存获取
</script>
```

### 3. 虚拟滚动

对于大型列表，使用虚拟滚动可以显著提高性能：

```vue
<template>
  <div class="virtual-list" style="height: 500px; overflow-y: auto">
    <div 
      class="virtual-list-container" 
      :style="{ height: totalHeight + 'px' }"
    >
      <div 
        class="virtual-list-content" 
        :style="{ transform: `translateY(${offsetTop}px)` }"
      >
        <div 
          v-for="item in visibleItems" 
          :key="item.id"
          class="list-item"
          :style="{ height: itemHeight + 'px' }"
        >
          {{ item.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, onMounted, onUnmounted } from 'vue'

const items = ref(Array.from({ length: 10000 }, (_, i) => ({ id: i, name: `Item ${i}` })))
const itemHeight = ref(50)
const containerHeight = ref(500)
const scrollTop = ref(0)

const totalHeight = computed(() => items.value.length * itemHeight.value)
const startIndex = computed(() => Math.floor(scrollTop.value / itemHeight.value))
const endIndex = computed(() => Math.min(
  startIndex.value + Math.ceil(containerHeight.value / itemHeight.value) + 1,
  items.value.length
))
const visibleItems = computed(() => items.value.slice(startIndex.value, endIndex.value))
const offsetTop = computed(() => startIndex.value * itemHeight.value)

function handleScroll(event: Event) {
  scrollTop.value = (event.target as HTMLElement).scrollTop
}

onMounted(() => {
  const container = document.querySelector('.virtual-list')
  if (container) {
    container.addEventListener('scroll', handleScroll)
  }
})

onUnmounted(() => {
  const container = document.querySelector('.virtual-list')
  if (container) {
    container.removeEventListener('scroll', handleScroll)
  }
})
</script>

<style scoped>
.list-item {
  border-bottom: 1px solid #eee;
  padding: 10px;
  box-sizing: border-box;
}
</style>
```

## 总结

在 Vue3 应用开发中，算法的应用虽然不如后端开发那么广泛，但在处理数据、优化性能等方面仍然发挥着重要作用。通过本指南的学习，你应该已经了解了 Vue3 中常用的算法及其实现方法，可以根据实际场景选择合适的算法，并通过性能优化技巧提高应用性能。