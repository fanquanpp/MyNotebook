# Vue3 中的数据结构

在 Vue3 应用开发中，合理使用数据结构对于构建高效、可维护的应用至关重要。本目录介绍 Vue3 中常用的数据结构及其使用方法。

## 常用数据结构

### 1. 响应式数据结构

#### 1.1 基础类型

```vue
<script setup lang="ts">
import { ref } from 'vue'

// 字符串
const message = ref('Hello Vue3')

// 数字
const count = ref(0)

// 布尔值
const isActive = ref(false)
</script>
```

#### 1.2 对象类型

```vue
<script setup lang="ts">
import { reactive } from 'vue'

// 普通对象
const user = reactive({
  name: '张三',
  age: 20,
  address: {
    city: '北京',
    district: '朝阳区'
  }
})

// 使用 toRefs 解构
import { toRefs } from 'vue'

const { name, age } = toRefs(user)
</script>
```

#### 1.3 数组类型

```vue
<script setup lang="ts">
import { ref, reactive } from 'vue'

// 使用 ref
const list = ref([1, 2, 3, 4, 5])

// 使用 reactive
const items = reactive({
  list: [1, 2, 3, 4, 5]
})
</script>
```

### 2. 集合类型

#### 2.1 Map

```vue
<script setup lang="ts">
import { ref } from 'vue'

// 创建 Map
const map = ref(new Map())

// 添加元素
map.value.set('key1', 'value1')
map.value.set('key2', 'value2')

// 获取元素
const value = map.value.get('key1')

// 删除元素
map.value.delete('key1')

// 检查是否存在
const hasKey = map.value.has('key1')
</script>
```

#### 2.2 Set

```vue
<script setup lang="ts">
import { ref } from 'vue'

// 创建 Set
const set = ref(new Set())

// 添加元素
set.value.add('value1')
set.value.add('value2')

// 检查是否存在
const hasValue = set.value.has('value1')

// 删除元素
set.value.delete('value1')

// 清空
set.value.clear()
</script>
```

### 3. 特殊数据结构

#### 3.1 WeakMap

```vue
<script setup lang="ts">
import { ref } from 'vue'

// 创建 WeakMap
const weakMap = ref(new WeakMap())

// 添加元素（键必须是对象）
const obj = { id: 1 }
weakMap.value.set(obj, 'value')

// 获取元素
const value = weakMap.value.get(obj)
</script>
```

#### 3.2 WeakSet

```vue
<script setup lang="ts">
import { ref } from 'vue'

// 创建 WeakSet
const weakSet = ref(new WeakSet())

// 添加元素（必须是对象）
const obj1 = { id: 1 }
const obj2 = { id: 2 }
weakSet.value.add(obj1)
weakSet.value.add(obj2)

// 检查是否存在
const hasObj = weakSet.value.has(obj1)
</script>
```

## 数据结构的最佳实践

### 1. 选择合适的数据结构

- **频繁访问和修改的数据**：使用 `ref` 或 `reactive`
- **需要唯一性的数据**：使用 `Set`
- **键值对数据**：使用 `Map`
- **大型数据集合**：考虑使用虚拟滚动或分页

### 2. 性能优化

#### 2.1 避免深度响应

```vue
<script setup lang="ts">
import { shallowRef, shallowReactive } from 'vue'

// 浅响应对象
const shallowObj = shallowReactive({
  deep: {
    nested: 'value' // 这里不会被响应式处理
  }
})

// 浅响应引用
const shallowList = shallowRef([1, 2, 3])
</script>
```

#### 2.2 使用 markRaw

```vue
<script setup lang="ts">
import { reactive, markRaw } from 'vue'

// 创建不可响应的对象
const nonReactiveObj = markRaw({
  data: 'some data'
})

// 即使放在 reactive 中也不会被响应式处理
const state = reactive({
  normal: { value: 1 },
  raw: nonReactiveObj
})
</script>
```

#### 2.3 使用 toRaw

```vue
<script setup lang="ts">
import { reactive, toRaw } from 'vue'

// 创建响应式对象
const reactiveObj = reactive({ value: 1 })

// 获取原始对象
const rawObj = toRaw(reactiveObj)

// 修改原始对象不会触发响应式更新
rawObj.value = 2
</script>
```

### 3. 数据结构的转换

#### 3.1 数组与对象的转换

```vue
<script setup lang="ts">
// 数组转对象
const array = [1, 2, 3]
const obj = Object.assign({}, array)

// 对象转数组
const obj = { a: 1, b: 2, c: 3 }
const array = Object.values(obj)

// 数组转 Map
const array = [[1, 'a'], [2, 'b']]
const map = new Map(array)

// Map 转数组
const map = new Map([[1, 'a'], [2, 'b']])
const array = Array.from(map)
</script>
```

#### 3.2 集合与数组的转换

```vue
<script setup lang="ts">
// 数组转 Set
const array = [1, 2, 3, 3]
const set = new Set(array) // 自动去重

// Set 转数组
const set = new Set([1, 2, 3])
const array = Array.from(set)
</script>
```

## 实际应用场景

### 1. 表单数据管理

```vue
<script setup lang="ts">
import { reactive } from 'vue'

const form = reactive({
  username: '',
  password: '',
  email: ''
})

function submitForm() {
  console.log('Form data:', form)
  // 提交逻辑
}
</script>
```

### 2. 列表数据管理

```vue
<script setup lang="ts">
import { ref, computed } from 'vue'

const items = ref([
  { id: 1, name: 'Item 1', completed: false },
  { id: 2, name: 'Item 2', completed: true },
  { id: 3, name: 'Item 3', completed: false }
])

// 计算已完成的项目
const completedItems = computed(() => {
  return items.value.filter(item => item.completed)
})

// 添加新项目
function addItem(name: string) {
  items.value.push({
    id: Date.now(),
    name,
    completed: false
  })
}

// 切换项目状态
function toggleItem(id: number) {
  const item = items.value.find(item => item.id === id)
  if (item) {
    item.completed = !item.completed
  }
}
</script>
```

### 3. 状态管理

```vue
<script setup lang="ts">
import { useCounterStore } from '../store/counter'

const counterStore = useCounterStore()

// 使用 store 中的状态
console.log('Count:', counterStore.count)

// 调用 store 中的方法
counterStore.increment()
</script>
```

## 常见问题与解决方案

### 1. 响应式数据不更新

**问题**：修改数据后组件没有重新渲染

**解决方案**：
- 对于对象，确保使用 `reactive` 或 `ref`
- 对于数组，使用数组方法（如 `push`、`splice`）或替换整个数组
- 对于深层对象，考虑使用 `reactive` 或手动触发更新

### 2. 性能问题

**问题**：大型数据集合导致性能下降

**解决方案**：
- 使用虚拟滚动
- 分页加载数据
- 使用 `shallowRef` 或 `shallowReactive` 减少响应式开销
- 使用 `markRaw` 标记不需要响应式的对象

### 3. 数据结构选择

**问题**：不确定使用哪种数据结构

**解决方案**：
- 频繁修改的简单数据：`ref`
- 复杂对象：`reactive`
- 需要唯一性的数据：`Set`
- 键值对数据：`Map`
- 临时数据：普通对象或数组

## 总结

在 Vue3 应用开发中，选择合适的数据结构对于构建高效、可维护的应用至关重要。通过本指南的学习，你应该已经了解了 Vue3 中常用的数据结构及其使用方法，可以根据实际场景选择合适的数据结构，并通过性能优化技巧提高应用性能。