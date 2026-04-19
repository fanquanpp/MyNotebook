// Binary Search implementation in TypeScript

/**
 * Binary search algorithm for sorted arrays
 * @param arr - Sorted array to search in
 * @param target - Value to search for
 * @returns Index of the target if found, -1 otherwise
 */
function binarySearch<T>(arr: T[], target: T): number {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return mid; // Target found
    } else if (arr[mid] < target) {
      left = mid + 1; // Search in right half
    } else {
      right = mid - 1; // Search in left half
    }
  }

  return -1; // Target not found
}

/**
 * Recursive binary search implementation
 * @param arr - Sorted array to search in
 * @param target - Value to search for
 * @param left - Left boundary of the search range
 * @param right - Right boundary of the search range
 * @returns Index of the target if found, -1 otherwise
 */
function binarySearchRecursive<T>(arr: T[], target: T, left: number = 0, right: number = arr.length - 1): number {
  if (left > right) {
    return -1; // Base case: target not found
  }

  const mid = Math.floor((left + right) / 2);

  if (arr[mid] === target) {
    return mid; // Target found
  } else if (arr[mid] < target) {
    return binarySearchRecursive(arr, target, mid + 1, right); // Search in right half
  } else {
    return binarySearchRecursive(arr, target, left, mid - 1); // Search in left half
  }
}

/**
 * Binary search for the first occurrence of a target value
 * @param arr - Sorted array to search in
 * @param target - Value to search for
 * @returns Index of the first occurrence if found, -1 otherwise
 */
function binarySearchFirstOccurrence<T>(arr: T[], target: T): number {
  let left = 0;
  let right = arr.length - 1;
  let result = -1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      result = mid; // Record the position
      right = mid - 1; // Continue searching in left half
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return result;
}

/**
 * Binary search for the last occurrence of a target value
 * @param arr - Sorted array to search in
 * @param target - Value to search for
 * @returns Index of the last occurrence if found, -1 otherwise
 */
function binarySearchLastOccurrence<T>(arr: T[], target: T): number {
  let left = 0;
  let right = arr.length - 1;
  let result = -1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      result = mid; // Record the position
      left = mid + 1; // Continue searching in right half
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return result;
}

/**
 * Binary search to find the insertion point for a target value
 * @param arr - Sorted array
 * @param target - Value to insert
 * @returns Index where the target should be inserted
 */
function binarySearchInsertionPoint<T>(arr: T[], target: T): number {
  let left = 0;
  let right = arr.length;

  while (left < right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid;
    }
  }

  return left;
}

// Usage examples
const sortedArray = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

console.log('Binary search for 7:', binarySearch(sortedArray, 7)); // Output: 3
console.log('Binary search for 8:', binarySearch(sortedArray, 8)); // Output: -1

console.log('Recursive binary search for 13:', binarySearchRecursive(sortedArray, 13)); // Output: 6

// Test with duplicate values
const arrayWithDuplicates = [1, 2, 2, 2, 3, 4, 5];
console.log('First occurrence of 2:', binarySearchFirstOccurrence(arrayWithDuplicates, 2)); // Output: 1
console.log('Last occurrence of 2:', binarySearchLastOccurrence(arrayWithDuplicates, 2)); // Output: 3

// Test insertion point
const insertionArray = [1, 3, 5, 7, 9];
console.log('Insertion point for 4:', binarySearchInsertionPoint(insertionArray, 4)); // Output: 2
console.log('Insertion point for 10:', binarySearchInsertionPoint(insertionArray, 10)); // Output: 5

export {
  binarySearch,
  binarySearchRecursive,
  binarySearchFirstOccurrence,
  binarySearchLastOccurrence,
  binarySearchInsertionPoint
};