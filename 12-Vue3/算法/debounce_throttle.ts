// Debounce and throttle functions for Vue 3 applications

/**
 * Debounce function to limit the rate at which a function can fire
 * @param func - The function to debounce
 * @param wait - The number of milliseconds to delay
 * @param immediate - If true, trigger the function immediately
 * @returns A debounced version of the function
 */
export function debounce<T extends (...args: any[]) => any>(
  func: T,
  wait: number,
  immediate: boolean = false
): (...args: Parameters<T>) => void {
  let timeout: ReturnType<typeof setTimeout> | null = null;

  return function(this: any, ...args: Parameters<T>) {
    const context = this;

    const later = () => {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };

    const callNow = immediate && !timeout;

    if (timeout) clearTimeout(timeout);
    timeout = setTimeout(later, wait);

    if (callNow) func.apply(context, args);
  };
}

/**
 * Throttle function to limit the rate at which a function can fire
 * @param func - The function to throttle
 * @param limit - The number of milliseconds to limit
 * @returns A throttled version of the function
 */
export function throttle<T extends (...args: any[]) => any>(
  func: T,
  limit: number
): (...args: Parameters<T>) => void {
  let inThrottle = false;

  return function(this: any, ...args: Parameters<T>) {
    const context = this;

    if (!inThrottle) {
      func.apply(context, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  };
}

/**
 * Debounce composable for Vue 3
 * @param func - The function to debounce
 * @param wait - The number of milliseconds to delay
 * @param immediate - If true, trigger the function immediately
 * @returns A debounced version of the function
 */
export function useDebounce<T extends (...args: any[]) => any>(
  func: T,
  wait: number,
  immediate: boolean = false
): (...args: Parameters<T>) => void {
  return debounce(func, wait, immediate);
}

/**
 * Throttle composable for Vue 3
 * @param func - The function to throttle
 * @param limit - The number of milliseconds to limit
 * @returns A throttled version of the function
 */
export function useThrottle<T extends (...args: any[]) => any>(
  func: T,
  limit: number
): (...args: Parameters<T>) => void {
  return throttle(func, limit);
}

/**
 * RequestAnimationFrame throttle for smooth animations
 * @param func - The function to throttle
 * @returns A throttled version of the function using requestAnimationFrame
 */
export function rafThrottle<T extends (...args: any[]) => any>(
  func: T
): (...args: Parameters<T>) => void {
  let rafId: number | null = null;
  let lastArgs: Parameters<T> | null = null;

  return function(this: any, ...args: Parameters<T>) {
    const context = this;
    lastArgs = args;

    if (!rafId) {
      rafId = requestAnimationFrame(() => {
        if (lastArgs) {
          func.apply(context, lastArgs);
          lastArgs = null;
        }
        rafId = null;
      });
    }
  };
}

/**
 * Debounce with leading edge execution
 * @param func - The function to debounce
 * @param wait - The number of milliseconds to delay
 * @returns A debounced version of the function
 */
export function debounceLeading<T extends (...args: any[]) => any>(
  func: T,
  wait: number
): (...args: Parameters<T>) => void {
  let timeout: ReturnType<typeof setTimeout> | null = null;

  return function(this: any, ...args: Parameters<T>) {
    const context = this;

    if (!timeout) {
      func.apply(context, args);
    }

    if (timeout) clearTimeout(timeout);
    timeout = setTimeout(() => {
      timeout = null;
    }, wait);
  };
}

/**
 * Debounce with trailing edge execution
 * @param func - The function to debounce
 * @param wait - The number of milliseconds to delay
 * @returns A debounced version of the function
 */
export function debounceTrailing<T extends (...args: any[]) => any>(
  func: T,
  wait: number
): (...args: Parameters<T>) => void {
  let timeout: ReturnType<typeof setTimeout> | null = null;

  return function(this: any, ...args: Parameters<T>) {
    const context = this;

    if (timeout) clearTimeout(timeout);
    timeout = setTimeout(() => {
      func.apply(context, args);
      timeout = null;
    }, wait);
  };
}

// Usage examples in Vue 3 components
/*
<template>
  <input 
    type="text" 
    v-model="searchQuery" 
    @input="debouncedSearch"
    placeholder="Search..."
  />
  <button @click="throttledClick">Click me</button>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { useDebounce, useThrottle } from './debounce_throttle';

const searchQuery = ref('');

// Debounced search function
const debouncedSearch = useDebounce((event: Event) => {
  const target = event.target as HTMLInputElement;
  console.log('Searching for:', target.value);
  // Perform actual search API call here
}, 300);

// Throttled click handler
const throttledClick = useThrottle(() => {
  console.log('Button clicked!');
  // Perform action here
}, 1000);
</script>
*/

export {
  debounce,
  throttle,
  useDebounce,
  useThrottle,
  rafThrottle,
  debounceLeading,
  debounceTrailing
};