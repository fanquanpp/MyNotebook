// Reactive data structures for Vue 3
import { ref, reactive, computed, watch } from 'vue';

/**
 * Reactive array implementation with additional methods
 */
export class ReactiveArray<T> {
  private _array = reactive<T[]>([]);
  private _length = computed(() => this._array.length);

  get length() {
    return this._length.value;
  }

  get value() {
    return this._array;
  }

  /**
   * Add an element to the array
   */
  push(...items: T[]): number {
    return this._array.push(...items);
  }

  /**
   * Remove and return the last element
   */
  pop(): T | undefined {
    return this._array.pop();
  }

  /**
   * Add an element to the beginning of the array
   */
  unshift(...items: T[]): number {
    return this._array.unshift(...items);
  }

  /**
   * Remove and return the first element
   */
  shift(): T | undefined {
    return this._array.shift();
  }

  /**
   * Remove elements from the array
   */
  splice(start: number, deleteCount?: number, ...items: T[]): T[] {
    return this._array.splice(start, deleteCount || 0, ...items);
  }

  /**
   * Get element at index
   */
  get(index: number): T | undefined {
    return this._array[index];
  }

  /**
   * Set element at index
   */
  set(index: number, value: T): void {
    this._array[index] = value;
  }

  /**
   * Check if array includes value
   */
  includes(value: T): boolean {
    return this._array.includes(value);
  }

  /**
   * Find index of value
   */
  indexOf(value: T): number {
    return this._array.indexOf(value);
  }

  /**
   * Find last index of value
   */
  lastIndexOf(value: T): number {
    return this._array.lastIndexOf(value);
  }

  /**
   * Map array elements
   */
  map<U>(callback: (value: T, index: number, array: T[]) => U): U[] {
    return this._array.map(callback);
  }

  /**
   * Filter array elements
   */
  filter(callback: (value: T, index: number, array: T[]) => boolean): T[] {
    return this._array.filter(callback);
  }

  /**
   * Reduce array elements
   */
  reduce<U>(callback: (accumulator: U, currentValue: T, currentIndex: number, array: T[]) => U, initialValue: U): U {
    return this._array.reduce(callback, initialValue);
  }

  /**
   * Sort array elements
   */
  sort(compareFn?: (a: T, b: T) => number): this {
    this._array.sort(compareFn);
    return this;
  }

  /**
   * Reverse array elements
   */
  reverse(): this {
    this._array.reverse();
    return this;
  }

  /**
   * Clear the array
   */
  clear(): void {
    this._array.length = 0;
  }

  /**
   * Convert to plain array
   */
  toArray(): T[] {
    return [...this._array];
  }
}

/**
 * Reactive set implementation
 */
export class ReactiveSet<T> {
  private _set = reactive<Set<T>>(new Set());
  private _size = computed(() => this._set.size);

  get size() {
    return this._size.value;
  }

  get value() {
    return this._set;
  }

  /**
   * Add a value to the set
   */
  add(value: T): this {
    this._set.add(value);
    return this;
  }

  /**
   * Delete a value from the set
   */
  delete(value: T): boolean {
    return this._set.delete(value);
  }

  /**
   * Check if set has value
   */
  has(value: T): boolean {
    return this._set.has(value);
  }

  /**
   * Clear the set
   */
  clear(): void {
    this._set.clear();
  }

  /**
   * Convert to array
   */
  toArray(): T[] {
    return Array.from(this._set);
  }

  /**
   * Iterate over set elements
   */
  forEach(callback: (value: T, value2: T, set: Set<T>) => void): void {
    this._set.forEach(callback);
  }
}

/**
 * Reactive map implementation
 */
export class ReactiveMap<K, V> {
  private _map = reactive<Map<K, V>>(new Map());
  private _size = computed(() => this._map.size);

  get size() {
    return this._size.value;
  }

  get value() {
    return this._map;
  }

  /**
   * Set a key-value pair
   */
  set(key: K, value: V): this {
    this._map.set(key, value);
    return this;
  }

  /**
   * Get value by key
   */
  get(key: K): V | undefined {
    return this._map.get(key);
  }

  /**
   * Check if map has key
   */
  has(key: K): boolean {
    return this._map.has(key);
  }

  /**
   * Delete key-value pair
   */
  delete(key: K): boolean {
    return this._map.delete(key);
  }

  /**
   * Clear the map
   */
  clear(): void {
    this._map.clear();
  }

  /**
   * Iterate over map entries
   */
  forEach(callback: (value: V, key: K, map: Map<K, V>) => void): void {
    this._map.forEach(callback);
  }

  /**
   * Convert to object
   */
  toObject(): Record<string, V> {
    const obj: Record<string, V> = {};
    this._map.forEach((value, key) => {
      obj[String(key)] = value;
    });
    return obj;
  }
}

/**
 * Reactive queue implementation
 */
export class ReactiveQueue<T> {
  private _array = reactive<T[]>([]);
  private _length = computed(() => this._array.length);

  get length() {
    return this._length.value;
  }

  get isEmpty() {
    return this._array.length === 0;
  }

  /**
   * Add element to the end of the queue
   */
  enqueue(item: T): void {
    this._array.push(item);
  }

  /**
   * Remove and return the front element
   */
  dequeue(): T | undefined {
    return this._array.shift();
  }

  /**
   * Get the front element without removing it
   */
  peek(): T | undefined {
    return this._array[0];
  }

  /**
   * Clear the queue
   */
  clear(): void {
    this._array.length = 0;
  }

  /**
   * Convert to array
   */
  toArray(): T[] {
    return [...this._array];
  }
}

/**
 * Reactive stack implementation
 */
export class ReactiveStack<T> {
  private _array = reactive<T[]>([]);
  private _length = computed(() => this._array.length);

  get length() {
    return this._length.value;
  }

  get isEmpty() {
    return this._array.length === 0;
  }

  /**
   * Push element onto the stack
   */
  push(item: T): void {
    this._array.push(item);
  }

  /**
   * Remove and return the top element
   */
  pop(): T | undefined {
    return this._array.pop();
  }

  /**
   * Get the top element without removing it
   */
  peek(): T | undefined {
    return this._array[this._array.length - 1];
  }

  /**
   * Clear the stack
   */
  clear(): void {
    this._array.length = 0;
  }

  /**
   * Convert to array
   */
  toArray(): T[] {
    return [...this._array];
  }
}

// Usage examples
function useReactiveCollections() {
  // Example 1: ReactiveArray
  const reactiveArray = new ReactiveArray<number>();
  reactiveArray.push(1, 2, 3);
  console.log('ReactiveArray length:', reactiveArray.length); // 3
  console.log('ReactiveArray value:', reactiveArray.value); // [1, 2, 3]

  // Example 2: ReactiveSet
  const reactiveSet = new ReactiveSet<string>();
  reactiveSet.add('a').add('b').add('c');
  console.log('ReactiveSet size:', reactiveSet.size); // 3
  console.log('ReactiveSet has "a":', reactiveSet.has('a')); // true

  // Example 3: ReactiveMap
  const reactiveMap = new ReactiveMap<string, number>();
  reactiveMap.set('one', 1).set('two', 2);
  console.log('ReactiveMap size:', reactiveMap.size); // 2
  console.log('ReactiveMap get "one":', reactiveMap.get('one')); // 1

  // Example 4: ReactiveQueue
  const reactiveQueue = new ReactiveQueue<string>();
  reactiveQueue.enqueue('first');
  reactiveQueue.enqueue('second');
  console.log('ReactiveQueue peek:', reactiveQueue.peek()); // "first"
  console.log('ReactiveQueue dequeue:', reactiveQueue.dequeue()); // "first"

  // Example 5: ReactiveStack
  const reactiveStack = new ReactiveStack<number>();
  reactiveStack.push(10);
  reactiveStack.push(20);
  console.log('ReactiveStack peek:', reactiveStack.peek()); // 20
  console.log('ReactiveStack pop:', reactiveStack.pop()); // 20

  return {
    reactiveArray,
    reactiveSet,
    reactiveMap,
    reactiveQueue,
    reactiveStack
  };
}

export { useReactiveCollections };