import { ref, onMounted, onUnmounted } from 'vue'

// 鼠标位置 composable
export function useMousePosition() {
  const x = ref(0)
  const y = ref(0)

  function updatePosition(event: MouseEvent) {
    x.value = event.clientX
    y.value = event.clientY
  }

  onMounted(() => {
    window.addEventListener('mousemove', updatePosition)
  })

  onUnmounted(() => {
    window.removeEventListener('mousemove', updatePosition)
  })

  return { x, y }
}

// 点击计数器 composable
export function useClickCounter() {
  const count = ref(0)

  function increment() {
    count.value++
  }

  function reset() {
    count.value = 0
  }

  onMounted(() => {
    window.addEventListener('click', increment)
  })

  onUnmounted(() => {
    window.removeEventListener('click', increment)
  })

  return { count, increment, reset }
}

// 定时器 composable
export function useTimer(interval: number = 1000) {
  const count = ref(0)
  let timer: number | null = null

  function start() {
    if (timer) return
    timer = window.setInterval(() => {
      count.value++
    }, interval)
  }

  function stop() {
    if (timer) {
      clearInterval(timer)
      timer = null
    }
  }

  function reset() {
    count.value = 0
  }

  onMounted(() => {
    start()
  })

  onUnmounted(() => {
    stop()
  })

  return { count, start, stop, reset }
}

// 本地存储 composable
export function useLocalStorage<T>(key: string, initialValue: T) {
  const storedValue = localStorage.getItem(key)
  const value = ref<T>(storedValue ? JSON.parse(storedValue) : initialValue)

  function setValue(newValue: T) {
    value.value = newValue
    localStorage.setItem(key, JSON.stringify(newValue))
  }

  function removeValue() {
    localStorage.removeItem(key)
    value.value = initialValue
  }

  return { value, setValue, removeValue }
}

// 网络请求 composable
export function useFetch<T>(url: string) {
  const data = ref<T | null>(null)
  const loading = ref(false)
  const error = ref<string | null>(null)

  async function fetchData() {
    loading.value = true
    error.value = null
    try {
      const response = await fetch(url)
      if (!response.ok) {
        throw new Error('网络请求失败')
      }
      data.value = await response.json()
    } catch (err) {
      error.value = err instanceof Error ? err.message : '未知错误'
    } finally {
      loading.value = false
    }
  }

  onMounted(() => {
    fetchData()
  })

  return { data, loading, error, fetchData }
}